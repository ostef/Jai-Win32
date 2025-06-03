// @Todo: symbol renaming

// @Todo: handle dependencies on module that have not been loaded.
// Currently it is basically impossible to have anything in the
// `except` array when initializing the database, because almost
// all modules have other modules that depend on them, so we always
// have to take the performance hit of loading modules we don't need.
//
// ==> The solution would be speeding up the Json parser instead of adding extra complexity

#import "Basic";
#import "Hash_Table";
#import "Compiler";
#import "String";
#import "File";
#import "File_Utilities";

#load "parse.jai";
#load "generate.jai";

InitWin32Database :: (directory := "win32json/api", except : []string = .[])
{
    all_modules := file_list(directory);
    for all_modules
    {
        module_name := path_strip_extension(path_filename(it));

        for wildcard : except
        {
            if WildcardStarMatch(wildcard, module_name)
            {
                print("Ignoring module %\n", module_name);
                continue it;
            }
        }

        ParseModule(it);
    }

    for context.generator.input_modules
        ResolveModuleDependencies(it);
}

WildcardStarMatch :: (wildcard : string, str : string) -> bool
{
    if !wildcard || !str
        return false;

    if wildcard == "*"
        return true;

    if wildcard[wildcard.count - 1] != #char "*"
        return wildcard == str;

    wildcard_no_star := wildcard;
    wildcard_no_star.count -= 1;

    if !starts_with(str, wildcard_no_star)
        return false;

    return true;
}

Set :: #bake_arguments Table(Value_Type = void);

Generator :: struct
{
    has_errors : bool;

    architecture := Win32Architecture.X64;

    // @Note: we disabled handling of const refs because we cannot accurately differentiate
    // between a parameter that was originally a pointer and a parameter that is actually a
    // const reference. We're keeping the code for it though in case we get enough info to
    // handle that when we parse the metadata files directly.
    handle_const_refs_in_COM_interface_wrappers := false;

    // Generate convenience wrappers for REFIID params(treat REFIID as const ref)
    generate_wrapper_function_for_REFIID_params := false;

    generate_COM_vtables_at_the_bottom := true;
    single_line_COM_method_wrappers := false;
    max_params_before_using_multiline := 4; // Set to -1 to disable multiline params
    max_params_per_line := 1;

    generate_additional_enum_type_for_non_scoped_enums := true;
    treat_generated_Windows_import_as_original_jai_module := true;
    generate_CLSID_constants_as_guid := true;

    // Importing a module with an argument being the same as its default value still
    // create a different module instance than not specifying the default value. As long
    // as this is how module parameters work I suggest leaving this to false. The UNICODE
    // parameter isn't very useful anyways since most of the time we use explicitly the W
    // or A versions
    generate_unicode_aliases := false;

    indent_level : int;

    dependency_queue : [..]struct { module : string; name : string; };

    input_modules : Table(string, *Module);
    output_modules : Table(string, *Module);
}

#add_context generator : Generator;

Module :: struct
{
    is_output_module : bool;

    name : string;
    constants : [..]*Win32Constant;
    types : [..]*Win32TypeDefinition;
    functions : [..]*Win32Function;
    unicode_aliases : [..]string;

    // This is separate from types because we want to generate
    // things in approximately the original order they were put
    // in the Win32 metadata.
    // It is also necessary because we might change the type definition's
    // name, but we still want dependency resolution to be able to find
    // it via the original name.
    type_table : Table(string, *Win32TypeDefinition);
    function_table : Table(string, *Win32Function);
    unicode_alias_set : Set(string);
    dependencies : Set(string);
}

CreateInputModule :: (name : string) -> *Module
{
    result := New(Module);
    result.name = name;

    table_add(*context.generator.input_modules, name, result);

    return result;
}

CreateOutputModule :: (name : string) -> *Module
{
    result := New(Module);
    result.name = name;
    result.is_output_module = true;

    table_add(*context.generator.output_modules, name, result);

    return result;
}

FindInputModule :: (name : string) -> *Module
{
    module, ok := table_find(*context.generator.input_modules, name);
    if !ok
        return null;

    return module;
}

FindOutputModule :: (name : string) -> *Module
{
    module, ok := table_find(*context.generator.output_modules, name);
    if !ok
        return null;

    return module;
}

FindType :: (module_name : string, name : string) -> *Win32TypeDefinition, *Module
{
    module := FindInputModule(module_name);
    if !module
        return null, null;

    type, ok := table_find(*module.type_table, name);
    if !ok
        return null, module;

    return type, module;
}

AddConstant :: inline (module : *Module, const : *Win32Constant)
{
    if module.is_output_module
        const.output_module = module.name;
    else
        const.module = module.name;

    array_add(*module.constants, const);
}

AddTypeDefinition :: inline (module : *Module, typedef : *Win32TypeDefinition)
{
    assert(typedef.name != "");

    if module.is_output_module
        typedef.output_module = module.name;
    else
        typedef.module = module.name;

    array_add(*module.types, typedef);
    table_add(*module.type_table, typedef.name, typedef);
}

AddFunction :: inline (module : *Module, function : *Win32Function)
{
    assert(function.name != "");

    if module.is_output_module
        function.output_module = module.name;
    else
        function.module = module.name;

    array_add(*module.functions, function);
    table_add(*module.function_table, function.name, function);
}

SetOutputModule :: inline (const : *Win32Constant, module_name : string)
{
    assert(const.output_module == "", "Output module is already set");

    module := FindOutputModule(module_name);
    assert(module != null, "Could not find output module %", module_name);

    AddConstant(module, const);
}

SetOutputModule :: inline (typedef : *Win32TypeDefinition, module_name : string)
{
    assert(typedef.output_module == "", "Output module is already set");

    module := FindOutputModule(module_name);
    assert(module != null, "Could not find output module %", module_name);

    AddTypeDefinition(module, typedef);
}

SetOutputModule :: inline (func : *Win32Function, module_name : string)
{
    assert(func.output_module == "", "Output module is already set");

    module := FindOutputModule(module_name);
    assert(module != null, "Could not find output module %", module_name);

    unicode_alias := func.name;
    unicode_alias.count -= 1;

    if !table_contains(*module.unicode_alias_set, unicode_alias)
    {
        input_module := FindInputModule(func.module);
        assert(input_module != null);

        if table_contains(*input_module.unicode_alias_set, unicode_alias)
        {
            array_add(*module.unicode_aliases, unicode_alias);

            dummy : void;
            table_add(*module.unicode_alias_set, unicode_alias, dummy);
        }
    }

    AddFunction(module, func);
}

Win32ArchitectureFlags :: enum_flags
{
    X86;
    X64;
    Arm64;
}

Win32Architecture :: enum
{
    X86;
    X64;
    Arm64;
}

Win32Symbol :: struct
{
    module : string;
    output_module : string;

    name : string;
    architectures : Win32ArchitectureFlags;
    platform : string;
}

Win32AttributeFlags :: enum_flags
{
    In;
    Out;
    Optional;
    Const;
    Reserved;
    ComOutPtr;
    RetVal;
    NotNullTerminated;
}

Win32ValueType :: enum
{
    Null;
    Byte;
    UInt16;
    Int16;
    UInt32;
    Int32;
    UInt64;
    Int64;
    Single;
    Double;
    String;
    PropertyKey;
}

Win32NativeType :: enum
{
    Invalid;
    Void;
    Boolean;
    SByte;
    Byte;
    Int16;
    UInt16;
    Int32;
    UInt32;
    Int64;
    UInt64;
    Char;
    Single;
    Double;
    String;
    IntPtr;
    UIntPtr;
    Guid;
}

Win32Type :: struct
{
    Kind :: enum
    {
        Null;
        Native;
        ApiRef;
        Array;
        PointerTo;
        LPArray;
        MissingClrType;
    }

    TargetKind :: enum
    {
        Default;
        Com;
        FunctionPointer;
    }

    kind : Kind;

    native_type : Win32NativeType;

    using api_ref : struct
    {
        name : string;
        target_kind : TargetKind;
        api : string;
        parents : []string;
        resolved_symbol : *Win32Symbol;
    };

    using pointer_to : struct
    {
        count : int;
        child : *Win32Type;
        attrs : Win32AttributeFlags;
    };
}

Win32Constant :: struct
{
    #as using symbol : Win32Symbol;

    type : Win32Type;
    value_type : Win32ValueType;
    using value : union
    {
        str_value : string;
        float_value : float64;
        int_value : int;
        property_key : struct
        {
            fmtid : string;
            pid : u32;
        };
    };

    attrs : Win32AttributeFlags;
}

Win32TypeDefinition :: struct
{
    Kind :: enum
    {
        NativeTypedef;
        Enum;
        Struct;
        Union;
        FunctionPointer;
        Com;
        ComClassID;
    }

    #as using symbol : Win32Symbol;

    kind : Kind;

    using native_typedef : struct
    {
        also_usable_for : string;
        def : Win32Type;
        free_func : string;
    };

    using enum_type : struct
    {
        flags : bool;
        scoped : bool;
        values : []Win32EnumValue;
        integer_base : Win32ValueType;
    };

    using struct_type : struct
    {
        packing_size : int;
        fields : []Win32StructField;
        nested_types : []Win32TypeDefinition;
    };

    using function_pointer : Win32FunctionType;

    using com : struct
    {
        guid : string;
        interface_type : Win32Type;
        methods : []Win32Method;
    };
}

Win32EnumValue :: struct
{
    name : string;
    value : int;
}

Win32StructField :: struct
{
    name : string;
    type : Win32Type;
    attrs : Win32AttributeFlags;
}

Win32FunctionParam :: struct
{
    name : string;
    type : Win32Type;
    attrs : Win32AttributeFlags;
}

Win32FunctionType :: struct
{
    sets_last_error : bool;
    return_type : Win32Type;
    return_attrs : Win32AttributeFlags;
    params : []Win32FunctionParam;
    attrs : Win32AttributeFlags;
}

Win32Method :: struct
{
    name : string;
    architectures : Win32ArchitectureFlags;
    platform : string;

    #as using base : Win32FunctionType;
}

Win32Function :: struct
{
    #as using symbol : Win32Symbol;

    dll_import : string;
    #as using base : Win32FunctionType;
}

ResolveModuleDependencies :: (module : *Module)
{
    for module.constants
        ResolveConstantDependencies(module, it);

    for module.types
        ResolveTypeDefinitionDependencies(module, it);

    for module.functions
    {
        array_add(*context.generator.dependency_queue, .{it.module, it.name});
        defer pop(*context.generator.dependency_queue);

        ResolveFunctionDependencies(module, it);
    }
}

ResolveConstantDependencies :: (source_module : *Module, using const : *Win32Constant)
{
    array_add(*context.generator.dependency_queue, .{module, name});
    defer pop(*context.generator.dependency_queue);

    ResolveTypeDependencies(source_module, *type);
}

ResolveTypeDefinitionDependencies :: (source_module : *Module, using typedef : *Win32TypeDefinition)
{
    array_add(*context.generator.dependency_queue, .{module, name});
    defer pop(*context.generator.dependency_queue);

    if kind ==
    {
    case .NativeTypedef;
        ResolveTypeDependencies(source_module, *def);

    case .Union; #through;
    case .Struct;
        for * fields
            ResolveTypeDependencies(source_module, *it.type, typedef);

        for * nested_types
            ResolveTypeDefinitionDependencies(source_module, it);

    case .FunctionPointer;
        ResolveFunctionDependencies(source_module, *function_pointer);

    case .Com;
        ResolveTypeDependencies(source_module, *interface_type);
        for * methods
            ResolveFunctionDependencies(source_module, it);
    }
}

ResolveFunctionDependencies :: (source_module : *Module, using func : *Win32FunctionType)
{
    ResolveTypeDependencies(source_module, *return_type);
    for * params
        ResolveTypeDependencies(source_module, *it.type);
}

LogDependencyQueue :: ()
{
    builder : String_Builder;

    for context.generator.dependency_queue
    {
        if it_index != 0
            append(*builder, "\n");

        appendf(*builder, "    % (module %)", it.name, it.module);
    }

    append(*builder, " <- unresolved");

    log_error("Dependency queue:\n%", builder_to_string(*builder));
}

ResolveTypeDependencies :: (source_module : *Module, using type : *Win32Type, enclosing_typedef : *Win32TypeDefinition = null)
{
    if kind ==
    {
    case .ApiRef;
        array_add(*context.generator.dependency_queue, .{api, name});
        defer pop(*context.generator.dependency_queue);

        // If the type comes from the same module, we look in the enclosing typedef first
        if !resolved_symbol && enclosing_typedef && api == source_module.name
        {
            for * enclosing_typedef.nested_types
            {
                if it.name == name
                {
                    resolved_symbol = it;
                    break;
                }
            }
        }

        if !resolved_symbol
        {
            resolved_symbol=, dep_module := FindType(api, name);

            if !resolved_symbol
            {
                if !dep_module
                    log_error("Could not find dependency %.% because the module is not loaded", api, name);
                else
                    log_error("Could not find dependency %.%", api, name);

                LogDependencyQueue();

                context.generator.has_errors = true;

                return;
            }
        }

        if source_module.is_output_module && resolved_symbol.module && !resolved_symbol.output_module
        {
            log_error("Error: unresolved dependency % => %.%",
                source_module.name, resolved_symbol.module, resolved_symbol.name, );

            LogDependencyQueue();

            context.generator.has_errors = true;

            return;
        }

        if source_module.is_output_module
        {
            if resolved_symbol.output_module
                find_or_add(*source_module.dependencies, resolved_symbol.output_module);
        }
        else
        {
            if resolved_symbol.module
               find_or_add(*source_module.dependencies, resolved_symbol.module);
        }

    case .Array; #through;
    case .PointerTo; #through;
    case .LPArray;
        if child
            ResolveTypeDependencies(source_module, child, enclosing_typedef);
    }
}

// for_expansions

AllInputConstants :: (gen : *Generator, body : Code, flags : For_Flags) #expand
{
    `it_index := 0;
    for module, module_name : gen.input_modules
    {
        for `it, index : module.constants
        {
            defer it_index += 1;

            #insert(break=break module) body;
        }
    }
}

AllInputTypeDefinitions :: (gen : *Generator, body : Code, flags : For_Flags) #expand
{
    `it_index := 0;
    for module, module_name : gen.input_modules
    {
        for `it, index : module.types
        {
            defer it_index += 1;

            #insert(break=break module) body;
        }
    }
}

AllInputFunctions :: (gen : *Generator, body : Code, flags : For_Flags) #expand
{
    `it_index := 0;
    for module, module_name : gen.input_modules
    {
        for `it, index : module.functions
        {
            defer it_index += 1;

            #insert(break=break module) body;
        }
    }
}
