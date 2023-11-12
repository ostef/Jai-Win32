#import "Compiler";
#import "File_Utilities";
#import "Basic";
#import "File";
#import "String";
#import "Hash_Table";

#import, dir "./Jaison";

Set :: #bake_arguments Table (Value_Type = void);

Generate_For_Architecture :: "X64";

// Some struct member names are PascalCase because we follow the convention of what's
// in the Json files. We'll probably use the rename feature of Jaison at some point.

GenerationContext :: struct
{
    types_to_ignore : []string;
    functions_to_ignore : []string;
    libraries_to_ignore : []string;
    modules : Table (string, Win32Module);
    // In this set are the modules that we need to traverse to collect dependencies,
    // either because they were newly added or because a dependency was added
    modules_that_are_dirty : Set (string);
    modules_to_parse : Set (string);
    has_errors : bool;
}

BlacklistFile :: struct
{
    Types : []string;
    Functions : []string;
    DllImports : []string;
}

#add_context gen_ctx : GenerationContext;

FindOrAddModule :: inline (module_name : string, generate_entirely := false) -> *Win32Module
{
    using context.gen_ctx;

    result, new := find_or_add (*modules, module_name);

    if new
    {
        print ("Adding module %\n", module_name);

        result.name = module_name;
        result.generate_entirely = generate_entirely;
        find_or_add (*modules_to_parse, module_name);
        find_or_add (*modules_that_are_dirty, module_name);
    }

    return result;
}

AddDependency :: inline (module_name : string, type_name : string)
{
    module := FindOrAddModule (module_name);
    if module.generate_entirely
        return;

    _, new := find_or_add (*module.types_to_generate, type_name);
    if new
        find_or_add (*context.gen_ctx.modules_that_are_dirty, module_name);
}

ShouldGenerateType :: (module : *Win32Module, type : Win32TypeDefinition) -> bool #must
{
    if type.Architectures.count != 0 && !array_find (type.Architectures, Generate_For_Architecture)
        return false;

    for context.gen_ctx.types_to_ignore
    {
        if WildcardStarMatch (it, type.Name)
            return false;
    }

    if module.generate_entirely
        return true;

    return table_contains (*module.types_to_generate, type.Name);
}

ShouldGenerateFunction :: (name : string) -> bool #must
{
    for context.gen_ctx.functions_to_ignore
    {
        if WildcardStarMatch (it, name)
            return false;
    }

    return true;
}

ShouldGenerateFunction :: (module : *Win32Module, func : Win32Function) -> bool #must
{
    if func.Architectures.count != 0 && !array_find (func.Architectures, Generate_For_Architecture)
        return false;

    for context.gen_ctx.functions_to_ignore
    {
        if WildcardStarMatch (it, func.Name)
            return false;
    }

    for context.gen_ctx.libraries_to_ignore
    {
        if WildcardStarMatch (it, func.DllImport)
            return false;
    }

    return true;
}

Win32Module :: struct
{
    Constants : []Win32Constant;
    Types : []Win32TypeDefinition;
    Functions : []Win32Function;
    UnicodeAliases : []string;

    name : string;
    parsed : bool;
    generate_entirely : bool;
    types_to_generate : Set (string);
    source_code : string;
}

ParseModule :: (module : *Win32Module)
{
    if module.parsed
        return;

    defer module.parsed = true;

    success, result := json_parse_file (sprint ("win32json/api/%.json", module.name), Win32Module);

    module.Constants = result.Constants;
    module.Types = result.Types;
    module.Functions = result.Functions;
    module.UnicodeAliases = result.UnicodeAliases;

    if !success
    {
        print ("Error: Could not parse module %\n", module.name);
        context.gen_ctx.has_errors = true;
    }
}

CollectDependencies :: (using type : Win32Type)
{
    if type.Kind ==
    {
    case .ApiRef;
        AddDependency (type.Api, type.Name);
    case .Array; #through;
    case .LPArray; #through;
    case .PointerTo;
        CollectDependencies (type.Child);
    }
}

CollectDependencies :: (using constant : Win32Constant)
{
    CollectDependencies (Type);
}

CollectDependencies :: (using typedef : Win32TypeDefinition)
{
    if Kind ==
    {
    case .NativeTypedef;
        CollectDependencies (Def);

    case .Union; #through;
    case .Struct;
        for Fields
            CollectDependencies (it.Type);

        for NestedTypes
            CollectDependencies (it);

    case .FunctionPointer;
        CollectDependencies (ReturnType);
        for Params
            CollectDependencies (it.Type);
    }
}

CollectDependencies :: (using func : Win32Function)
{
    CollectDependencies (ReturnType);
    for Params
        CollectDependencies (it.Type);
 }

CollectModuleTypesAndDependencies :: (module : *Win32Module)
{
    for module.Types
    {
        if ShouldGenerateType (module, it)
            CollectDependencies (it);
    }

    if module.generate_entirely
    {
        for module.Constants
            CollectDependencies (it);

        for module.Functions
        {
            if ShouldGenerateFunction (module, it)
                CollectDependencies (it);
        }
    }
}

Win32ValueType :: enum
{
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

Win32TypeKind :: enum
{
    Native;
    ApiRef;
    Array;
    PointerTo;
    LPArray;
}

Win32Type :: struct
{
    Kind : Win32TypeKind;
    Name : string; // For Native and ApiRef

    struct // ApiRef
    {
        TargetKind : string;
        Api : string;
        Parents : []string;
    };

    struct // Array, PointerTo and LPArray
    {
        NullNullTerm : bool;
        CountConst : int;
        CountParamIndex : int;
        Shape : *struct
        {
            Size := -1;
        };
        Child : *Win32Type;
        Attrs : []JSON_Value;
    };
}

Win32Constant :: struct
{
    Name : string;
    Type : Win32Type;
    ValueType : Win32ValueType;
    Value : JSON_Value;
    Attrs : []JSON_Value;
}

Win32TypeDefinitionKind :: enum
{
    NativeTypedef;
    Enum;
    Struct;
    Union;
    FunctionPointer;
    Com;
    ComClassID;
}

Win32EnumValue :: struct
{
    Name : string;
    Value : int;
}

Win32StructField :: struct
{
    Name : string;
    Type : Win32Type;
    Attrs : []JSON_Value;
}

Win32FunctionParam :: struct
{
    Name : string;
    Type : Win32Type;
    Attrs : []JSON_Value;
}

Win32TypeDefinition :: struct
{
    Name : string;
    Architectures : []string;
    Platform : *string; // This is a pointer because it can be null
    Kind : Win32TypeDefinitionKind;

    struct // NativeTypedef
    {
        AlsoUsableFor : *string;
        Def : Win32Type;
        FreeFunc : *string;
    };

    struct // Enum
    {
        Flags : bool;
        Scoped : bool;
        Values : []Win32EnumValue;
        IntegerBase : Win32ValueType;   // @Cleanup: Is it actually a Win32ValueType?
    };

    struct // Struct or Union
    {
        Size : int;
        PackingSize : int;
        Fields : []Win32StructField;
        NestedTypes : []Win32TypeDefinition;
    };

    struct // FunctionPointer
    {
        SetLastError : bool;
        ReturnType : Win32Type;
        ReturnAttrs : []JSON_Value;
        Attrs : []JSON_Value;
        Params : []Win32FunctionParam;
    };

    struct // Com and ComClassID
    {
        Guid : string;
        Interface : Win32Type;
        Methods : []Win32Function;
    };
}

Win32Function :: struct
{
    Name : string;
    DllImport : string;
    Architectures : []string;
    Platform : *string; // This is a pointer because it can be null
    SetLastError : bool;
    ReturnType : Win32Type;
    ReturnAttrs : []JSON_Value;
    Attrs : []JSON_Value;
    Params : []Win32FunctionParam;
}

AppendValueType :: (builder : *String_Builder, type : Win32ValueType)
{
    if #complete type ==
    {
    case .Byte; append (builder, "u8");
    case .UInt16; append (builder, "u16");
    case .Int16; append (builder, "s16");
    case .UInt32; append (builder, "u32");
    case .Int32; append (builder, "s32");
    case .UInt64; append (builder, "u64");
    case .Int64; append (builder, "s64");
    case .Single; append (builder, "float");
    case .Double; append (builder, "float64");
    case .String; append (builder, "string");
    case .PropertyKey; append (builder, "Win32PropertyKey");
    }
}

AppendNativeType :: (builder : *String_Builder, name : string)
{
    AppendNativeType (builder, GetNativeType (name));
}

AppendNativeType :: (builder : *String_Builder, type : Win32NativeType)
{
    if #complete type ==
    {
    case .Invalid; append (builder, "<invalid>");
    case .Void; append (builder, "void");
    case .Boolean; append (builder, "bool");
    case .SByte; append (builder, "s8");
    case .Byte; append (builder, "u8");
    case .UInt16; append (builder, "u16");
    case .Int16; append (builder, "s16");
    case .UInt32; append (builder, "u32");
    case .Int32; append (builder, "s32");
    case .UInt64; append (builder, "u64");
    case .Int64; append (builder, "s64");
    case .Char; append (builder, "u8"); // Should it be s8?
    case .Single; append (builder, "float");
    case .Double; append (builder, "float64");

    // Not sure about these below...
    case .String; append (builder, "string"); // Should it be *u8
    case .IntPtr; append (builder, "*s32");
    case .UIntPtr; append (builder, "*u32");
    case .Guid; append (builder, "Guid");
    }
}

GetNativeType :: (name : string) -> Win32NativeType #must
{
    info := type_info (Win32NativeType);
    for info.names
    {
        if it == name
        {
            return cast (Win32NativeType) info.values[it_index];
        }
    }

    return .Invalid;
}

AppendType :: (builder : *String_Builder, using type : Win32Type)
{
    if #complete Kind ==
    {
    case .Native;
        AppendNativeType (builder, Name);
    case .ApiRef;
        append (builder, Name);

    case .Array;
        if Shape
            print_to_builder (builder, "[%]", Shape.Size);
        else
            append (builder, "*");

        if Child
            AppendType (builder, Child);
        else
            append (builder, "<invalid>");

    case .PointerTo;
        append (builder, "*");
        if Child
            AppendType (builder, Child);
        else
            append (builder, "<invalid>");

    case .LPArray;
        // I think all the other stuff about LPArray is metadata about the parameter
        // (I don't know what the NullNullTerm is...)
        // https://learn.microsoft.com/en-us/dotnet/framework/interop/default-marshalling-for-arrays

        // Fixed size arrays cannot be passed as arguments to #c_call procedure,
        // we either have to pass a pointer to the elem type or a pointer to the array.
        if CountConst >= 0
            print_to_builder (builder, "*[%]", CountConst);
        else
            append (builder, "*");

        if Child
            AppendType (builder, Child);
        else
            append (builder, "<invalid>");
    }
}

GenerateConstantDeclaration :: (builder : *String_Builder, using const : Win32Constant)
{
    AppendIdentifier (builder, Name);

    // There might be some cases where we want to print the type
    // For now we let the compiler infer it because that means integers
    // autocast when possible
    /*
    append (builder, " : ");
    AppendType (builder, Type);
    append (builder, " : ");
    */

    append (builder, " :: ");

    if #complete Value.type ==
    {
    case .NULL;
        append (builder, "null");
    case .BOOLEAN;
        print_to_builder (builder, "%", Value.boolean);

    case .NUMBER;
        if ValueType == .Single || ValueType == .Double
            print_to_builder (builder, "%", Value.number);
        else if ValueType == .UInt16 || ValueType == .UInt32 || ValueType == .UInt64
            print_to_builder (builder, "%", cast (u64) Value.number);
        else
            print_to_builder (builder, "%", cast (s64) Value.number);

    case .STRING;
        // This function handles escape sequences by default
        print_item_to_builder (builder, Value.str);

    case .OBJECT;
        if ValueType == .PropertyKey
        {
            fmtid, ok := table_find (Value.object, "Fmtid");
            assert (ok, "Could not find Fmtid value for PropertyKey");
            assert (fmtid.type == .STRING, "Fmtid is not a string");

            pid:, ok = table_find (Value.object, "Pid");
            assert (ok, "Could not find Pid value for PropertyKey");
            assert (pid.type == .NUMBER, "Pid is not a number");

            print_to_builder (builder, "#run MakePropertyKey (\"%\", %)", fmtid.str, pid.number);
        }
        else
        {
            append (builder, "<unhandled JSON value>");
        }

    case .ARRAY;
        append (builder, "<unhandled JSON value>");
    }

    append (builder, ";\n");
}

GenerateTypeDeclaration :: (builder : *String_Builder, using type : Win32TypeDefinition, indent_level := 0)
{
    Indent :: () #expand
    {
        for 0..`indent_level - 1
            append (`builder, "    ");
    }

    Indent ();
    AppendIdentifier (builder, Name);
    append (builder, " :: ");

    if #complete Kind ==
    {
    case .Enum;
        // @Todo: handle Scoped

        if Flags
            append (builder, "enum_flags ");
        else
            append (builder, "enum ");

        AppendValueType (builder, IntegerBase);
        append (builder, "\n");
        Indent ();
        append (builder, "{\n");

        for Values
        {
            Indent ();
            append (builder, "    ");
            AppendIdentifier (builder, it.Name);
            if IntegerBase ==
            {
            case .Byte;
                print_to_builder (builder, " :: %;\n", cast, no_check (u8) it.Value);
            case .UInt16;
                print_to_builder (builder, " :: %;\n", cast, no_check (u16) it.Value);
            case .Int16;
                print_to_builder (builder, " :: %;\n", cast, no_check (s16) it.Value);
            case .UInt32;
                print_to_builder (builder, " :: %;\n", cast, no_check (u32) it.Value);
            case .Int32;
                print_to_builder (builder, " :: %;\n", cast, no_check (s32) it.Value);
            case .UInt64;
                print_to_builder (builder, " :: %;\n", cast, no_check (u32) it.Value);
            case .Int64;
                print_to_builder (builder, " :: %;\n", cast, no_check (s64) it.Value);
            }
        }

        Indent ();
        append (builder, "}\n");

    case .Struct; #through;
    case .Union;
        if Kind == .Struct
            append (builder, "struct\n");
        else
            append (builder, "union\n");

        Indent ();
        append (builder, "{\n");

        for Fields
        {
            Indent ();

            append (builder, "    ");
            AppendIdentifier (builder, it.Name);
            append (builder, " : ");

            AppendType (builder, it.Type);
            append (builder, ";");

            if it.Attrs.count > 0
                append (builder, " // ");

            for attr, iattr : it.Attrs
            {
                if iattr != 0
                    append (builder, ", ");

                if attr.type == .STRING
                    append (builder, attr.str);
            }

            append (builder, "\n");
        }

        for NestedTypes
        {
            append (builder, "\n");

            GenerateTypeDeclaration (builder, it, indent_level + 1);
        }

        Indent ();
        append (builder, "}\n");

    case .NativeTypedef;
        AppendType (builder, Def);
        append (builder, ";\n");

    case .FunctionPointer;
        append (builder, "#type (");

        for Params
        {
            if it_index != 0
                append (builder, ", ");

            AppendIdentifier (builder, it.Name);
            append (builder, " : ");
            AppendType (builder, it.Type);
        }

        append (builder, ") -> ");
        AppendType (builder, ReturnType);
        append (builder, " #c_call;\n");

    case .Com;
        // @Todo
        append (builder, "struct {}; // @Todo: This is a COM thing (not yet handled)\n");

    case .ComClassID;
        print_to_builder (builder, "\"%\";\n", Guid);
    }
}

GenerateFunction :: (builder : *String_Builder, using func : Win32Function)
{
    AppendIdentifier (builder, Name);
    append (builder, " :: (");

    for Params
    {
        if it_index != 0
            append (builder, ", ");

        // @Incomplete: we do this to prevent the param name clashing with the
        // type name, which happens a few times, but a more robust thing would be to
        // check for name clashes against all types
        if it.Name == it.Type.Name
            append (builder, "_");

        AppendIdentifier (builder, it.Name);
        print_to_builder (builder, " : ");
        AppendType (builder, it.Type);
    }

    append (builder, ") -> ");

    AppendType (builder, ReturnType);

    append (builder, " #foreign ");
    AppendStringAsIdentifier (builder, DllImport);
    append (builder, ";\n");
}

AppendIdentifier :: (builder : *String_Builder, str : string)
{
    if str ==
    {
    case "context"; #through;
    case "string"; #through;
    case "u8"; #through;
    case "s8"; #through;
    case "u16"; #through;
    case "s16"; #through;
    case "u32"; #through;
    case "s32"; #through;
    case "u64"; #through;
    case "s64"; #through;
    case "float32"; #through;
    case "float64";
        print_to_builder (builder, "_%", str);

    case;
        append (builder, str);
    }
}

AppendStringAsIdentifier :: (builder : *String_Builder, str : string)
{
    for i : 0..str.count - 1
    {
        if i == 0 && is_digit (str[i])
            append (builder, #char "_");

        if is_alnum (str[i])
            append (builder, str[i]);
        else
            append (builder, #char "_");
    }
}

GenerateModule :: (module : *Win32Module)
{
    builder : String_Builder;

    print_to_builder (*builder, "// This file was auto generated for module %\n", module.name);

    if !module.generate_entirely
        append (*builder, "// This module was generated partially, because it is a dependency of another module\n");

    append (*builder, "\n");

    if module.generate_entirely
    {
        append (*builder, "// Constants\n\n");

        // @Todo: maybe use empty lines to group constants by topic, by looking at the prefix

        for module.Constants
            GenerateConstantDeclaration (*builder, it);

        append (*builder, "\n");
    }

    append (*builder, "// Types\n\n");

    first := true;
    for module.Types
    {
        if !ShouldGenerateType (module, it)
            continue;

        defer first = false;

        if !first
            append (*builder, "\n");

        GenerateTypeDeclaration (*builder, it);
    }

    if module.generate_entirely
    {
        append (*builder, "\n// Functions\n\n");

        all_dlls : [..]string;
        for module.Functions
        {
            if !ShouldGenerateFunction (module, it)
                continue;

            GenerateFunction (*builder, it);

            // Not sure how this is possible but let's handle it
            if !it.DllImport
                continue;

            if !array_find (all_dlls, it.DllImport)
                array_add (*all_dlls, it.DllImport);
        }

        append (*builder, "\n// Unicode aliases\n\n");
        for module.UnicodeAliases
        {
            if !ShouldGenerateFunction (sprint ("%W", it))
            || !ShouldGenerateFunction (sprint ("%A", it))
                continue;

            print_to_builder (*builder, "#if UNICODE then %1 :: %1W;\n", it);
            print_to_builder (*builder, "else             %1 :: %1A;\n", it);
        }

        append (*builder, "\n// System libraries\n\n");
        append (*builder, "#scope_file\n\n");

        for all_dlls
        {
            AppendStringAsIdentifier (*builder, it);
            print_to_builder (*builder, " :: #system_library \"%\";\n", it);
        }
    }

    module.source_code = builder_to_string (*builder);
}

WildcardStarMatch :: (wildcard : string, str : string) -> bool #must
{
    if !wildcard || !str
        return false;

    if wildcard == "*"
        return true;

    if wildcard[wildcard.count - 1] != #char "*"
        return wildcard == str;

    wildcard_no_star := wildcard;
    wildcard_no_star.count -= 1;

    if !starts_with (str, wildcard_no_star)
        return false;

    return true;
}

#run
{
    using context.gen_ctx;

    context.allocator = temp;

    set_build_options_dc (.{do_output = false, write_added_strings = false});

    arguments := get_build_options ().compile_time_command_line;
    if arguments.count == 0
    {
        print ("Usage: jai generate.jai - module_names\n");
        print ("Optionally, a module name can end with a * to indicate a wildcard\n");
        return;
    }

    modules_to_generate : [..]string;
    all_modules := file_list ("win32json/api/");
    for all_modules
    {
        name := path_strip_extension (path_filename (it));

        for to_gen : arguments
        {
            if WildcardStarMatch (to_gen, name)
            {
                array_add (*modules_to_generate, name);
                break;
            }
        }
    }

    {
        blacklist, ok := read_entire_file ("blacklist.json", log_errors = false);
        if ok
        {
            json_ok, result := json_parse_string (blacklist, BlacklistFile);
            if !json_ok
            {
                print ("Error while parsing blacklist.json file\n");
                return;
            }

            types_to_ignore = result.Types;
            for result.Types
                print ("Ignoring type '%'\n", it);

            functions_to_ignore = result.Functions;
            for result.Functions
                print ("Ignoring function '%'\n", it);

            libraries_to_ignore = result.DllImports;
            for result.DllImports
                print ("Ignoring functions from library '%'\n", it);
        }
    }

    for modules_to_generate
        FindOrAddModule (it, true);

    while modules_that_are_dirty.count != 0 || modules_to_parse.count != 0
    {
        for it, name : modules_to_parse
        {
            module := FindOrAddModule (name);
            ParseModule (module);
            remove it;
        }

        assert (modules_to_parse.count == 0, "There are still modules to parse");

        old_modules_that_are_dirty := modules_that_are_dirty;
        modules_that_are_dirty = .{};

        for it, name : old_modules_that_are_dirty
        {
            module := FindOrAddModule (name);
            CollectModuleTypesAndDependencies (module);
            remove it;
        }

        assert (old_modules_that_are_dirty.count == 0, "There are still modules to traverse");
        deinit (*old_modules_that_are_dirty);
    }

    if has_errors
        return;

    for * modules
    {
        assert (it.parsed);
        GenerateModule (it);
    }

    // Compile all modules to catch errors
    make_directory_if_it_does_not_exist ("Generated/");

    all_modules_builder : String_Builder;
    for modules
    {
        write_entire_file (sprint ("Generated/%.jai", it.name), it.source_code);
        print_to_builder (*all_modules_builder, "#load \"%.jai\";\n", it.name);
    }

    write_entire_file ("Generated/all_modules.jai", *all_modules_builder);

    ws := compiler_create_workspace ("Win32");

    options := get_build_options (ws);
    options.output_type = .NO_OUTPUT;
    options.dead_code_elimination = .NONE;
    set_build_options (options, ws);

    compiler_begin_intercept (ws, .SKIP_ALL);
    add_build_string ("#import, file \"../module.jai\";", ws);
    compiler_end_intercept (ws);
}
