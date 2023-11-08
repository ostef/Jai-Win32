#import "Compiler";
#import "File_Utilities";
#import "Basic";
#import "File";
#import "String";
#import, dir "./Jaison";

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

// The struct member names are PascalCase because we follow the convention of what's in the Json files
// We could use the rename feature of Jaison

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

Win32FunctionParamAttr :: enum
{
    In;
    Out;
    Const;
    Optional;
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

    struct
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

Win32Module :: struct
{
    Constants : []Win32Constant;
    Types : []Win32TypeDefinition;
    Functions : []Win32Function;
    UnicodeAliases : []string;
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
    case .PropertyKey; // What is this???
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
    case .Guid; append (builder, "string");
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
            append (builder, "*"); // Should it be []?
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

    case .LPArray;  // What is even that???
        append (builder, "<LPArray>");
    }
}

GenerateConstantDeclaration :: (builder : *String_Builder, using const : Win32Constant)
{
    append (builder, Name);

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

    case .OBJECT; #through;
    case .ARRAY;
        append (builder, "<unhandled JSON value>");
    }

    append (builder, ";\n");
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

GenerateModule :: (module_name : string) -> string #must, bool
{
    success, result := json_parse_file (sprint ("win32json/api/%.json", module_name), Win32Module);

    if !success
    {
        print ("Error: Could not generate module %\n", module_name);
        return "", false;
    }

    builder : String_Builder;

    print_to_builder (*builder, "// This file was auto generated for module %\n\n", module_name);
    append (*builder, "// Constants\n\n");

    // @Todo: maybe use empty lines to group constants by topic, by looking at the prefix

    for result.Constants
        GenerateConstantDeclaration (*builder, it);

    append (*builder, "\n// Functions\n\n");

    all_dlls : [..]string;
    for result.Functions
    {
        // Not sure how this is possible but let's handle it
        if !it.DllImport
            continue;

        if !array_find (all_dlls, it.DllImport)
            array_add (*all_dlls, it.DllImport);
    }

    append (*builder, "\n// System libraries\n\n");

    for all_dlls
    {
        AppendStringAsIdentifier (*builder, it);
        print_to_builder (*builder, " :: #system_library \"%\";\n", it);
    }

    return builder_to_string (*builder), true;
}

GenerateAndCompileModule :: (module_name : string, write_to_file := true) -> generation_ok : bool, file_ok : bool, compile_ok : bool
{
    temp_state := get_temporary_storage_mark ();
    defer set_temporary_storage_mark (temp_state);

    file_written : bool;
    code, generation_ok := GenerateModule (module_name);

    file_ok : bool;
    compilation_ok : bool;

    if generation_ok
    {
        output_filename := sprint ("Generated/%.jai", module_name);

        if write_to_file
        {
            make_directory_if_it_does_not_exist ("Generated/");

            file_ok = write_entire_file (output_filename, code);
            if !file_ok
            {
                System :: #import "System";

                error_code, error_str := System.get_error_value_and_string ();
                print ("Error: Could not write generated module to file % (code %: %)\n",
                    output_filename, error_code, error_str);
            }
        }

        ws := compiler_create_workspace (module_name);

        options := get_build_options (ws);
        options.output_type = .NO_OUTPUT;
        options.dead_code_elimination = .NONE;
        set_build_options (options, ws);

        compiler_begin_intercept (ws, .SKIP_ALL);
        if write_to_file && file_ok
            add_build_file (output_filename, ws);
        else
            add_build_string (code, ws);

        while true
        {
            msg := compiler_wait_for_message ();
            if msg.kind == .COMPLETE
            {
                complete := cast (*Message_Complete) msg;
                compilation_ok = complete.error_code == .NONE;
                break;
            }
        }

        if compilation_ok
            print ("Sucessfully generated and compiled module %\n", module_name);
        else
            print ("Error: Could not compile module %\n", module_name);

        compiler_end_intercept (ws);
    }

    return generation_ok, file_ok, compilation_ok;
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

    all_modules_builder : String_Builder;

    number_of_successful_modules : int;
    number_of_failed_modules : int;

    for modules_to_generate
    {
        gen_ok, file_ok, compile_ok := GenerateAndCompileModule (it);

        if file_ok
            print_to_builder (*all_modules_builder, "#load \"Generated/%.json\";\n", it);

        if gen_ok && file_ok && compile_ok
            number_of_successful_modules += 1;
        else
            number_of_failed_modules += 1;
    }

    print ("\n% successes\n% failures\n", number_of_successful_modules, number_of_failed_modules);

    ok := write_entire_file ("all_modules.jai", *all_modules_builder);
    if !ok
    {
        print ("Error: Could not write file all_modules.jai\n");
    }
}
