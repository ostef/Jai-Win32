// @Todo: generate as invidiual modules to be #imported
// @Todo: handle compilation of generated code when in executable form
// @Todo: do something nice about anonymous struct members
// @Todo: can we generate #must on return types automatically?
// Maybe there are attributes on the return type that can help
// @Todo: remove prefix from enum value names

#import "Compiler";
#import "Basic";
#import "String";
#import "File";
#import "File_Utilities";
#import "Hash_Table";

#import, dir "./Jaison";

Set :: #bake_arguments Table (Value_Type = void);

Handle_Type_Names :: string.[
    "HANDLE", "HINSTANCE", "SOCKET",
    "HICON", "HCURSOR", "HBRUSH", "HSYNTHETICPOINTERDEVICE", "HPROPSHEETPAGE",
    "HIMAGELIST", "HTREEITEM", "HCOLORSPACE", "HCRYPTASYNC", "HCERTCHAINENGINE",
    "HCOMDB", "HKEY", "HWINWATCH", "HWINSTA", "HDESK", "HSTRING", "HSZ", "HCONV",
    "HCONVLIST", "HDDEDATA", "HRASCONN", "HAMSICONTEXT", "HAMSISESSION",
    "HCMNOTIFICATION", "HKL", "HIFTIMESTAMPCHANGE", "HWSAEVENT", "HTASK",
    "HWINEVENTHOOK", "HUIANODE", "HUIAPATTERNOBJECT", "HUIATEXTRANGE",
    "HUIAEVENT", "HMIDI", "HMIDIIN", "HMIDIOUT", "HMIDISTRM", "HMIXER",
    "HMIXEROBJ", "HWAVE", "HWAVEOUT", "HWAVEIN", "HMMIO", "HDRVR",
    "HACMDRIVERID", "HACMDRIVER", "HACMSTREAM", "HACMOBJ", "HIC", "HVIDEO",
    "HSWDEVICE", "HINTERACTIONCONTEXT", "HRAWINPUT", "HRECOALT", "HRECOCONTEXT",
    "HRECOGNIZER", "HRECOLATTICE", "HRECOWORDLIST", "HIMC", "HIMCC",
    "HSAVEDUILANGUAGES", "HRSRC", "HSURF", "HPOWERNOTIFY", "HUMPD", "HSTR",
    "HSPRITE", "HSEMAPHORE", "HLSURF", "HFASTMUTEX", "HDRVOBJ", "HDEV", "HBM",
    "HPCON", "HMENU", "HACCEL", "HDROP", "HPSXA", "HDC", "HGDIOBJ", "HBITMAP",
    "HRGN", "HPEN", "HBRUSH", "HFONT", "HMETAFILE", "HENHMETAFILE", "HMONITOR",
    "HPALETTE", "HWND", "HHOOK", "HGESTUREINFO", "HTOUCHINPUT", "HGLRC",
    "HFILTER", "HPTPROVIDER", "HPSS", "HPSSWALK", "HSTRING_BUFFER", "JET_SESID",
    "PSID", "AUTHZ_AUDIT_EVENT_HANDLE", "HeapHandle", "HDPA", "HDSA",
];

// Some struct member names are PascalCase because we follow the convention
// of what's in the Json files.
// We'll maybe use the rename feature of Jaison at some point.

GenerationContext :: struct
{
    generate_WIN32_ERROR_enum := false;

    generate_for_architecture := "X64";
    handle_type_set : Set (string);
    module_filters : []ModuleFilter;
    modules : Table (string, Win32Module);
    modules_to_parse : Set (string);

    // In this set are the modules that we need to traverse to collect
    // dependencies, either because they were newly added or because a
    // dependency was added while traversing another module
    modules_that_are_dirty : Set (string);

    has_errors : bool;
}

ModuleFilter :: struct
{
    ModuleName : string;
    AlwaysGenerate : []string;
    // Things that are a dependency for another module will not get ignored!
    Ignore : []string;
}

#add_context gen_ctx : GenerationContext;

FindOrAddModule :: (module_name : string) -> *Win32Module
{
    using context.gen_ctx;

    result, new := find_or_add (*modules, module_name);

    if new
    {
        print ("Adding module %\n", module_name);

        result.name = module_name;
        find_or_add (*modules_to_parse, module_name);
        find_or_add (*modules_that_are_dirty, module_name);
    }

    return result;
}

AddDependency :: (module_name : string, type_name : string)
{
    module := FindOrAddModule (module_name);

    _, new := find_or_add (*module.types_to_generate, type_name);
    if new
        find_or_add (*context.gen_ctx.modules_that_are_dirty, module_name);
}

GetFilterInfoForName :: (module_name : string, name : string) -> always_generate : bool, ignore : bool
{
    always_generate : bool;
    ignore : bool;
    for filter : context.gen_ctx.module_filters
    {
        if !WildcardStarMatch (filter.ModuleName, module_name)
            continue;

        if !always_generate
        {
            for filter.AlwaysGenerate
            {
                if WildcardStarMatch (it, name)
                {
                    always_generate = true;
                    break;
                }
            }
        }

        if !ignore
        {
            for filter.Ignore
            {
                if WildcardStarMatch (it, name)
                {
                    ignore = true;
                    break;
                }
            }
        }
    }

    return always_generate, ignore;
}

ShouldGenerateConstant :: (module : *Win32Module, const : Win32Constant) -> bool #must
{
    always_generate, ignored := GetFilterInfoForName (module.name, const.Name);

    if always_generate
        return true;

    if ignored
        return false;

    return module.generate_entirely;
}

ShouldGenerateType :: (module : *Win32Module, type : Win32TypeDefinition) -> bool #must
{
    if type.Architectures.count != 0 && !array_find (type.Architectures, context.gen_ctx.generate_for_architecture)
        return false;

    always_generate, ignored := GetFilterInfoForName (module.name, type.Name);

    if always_generate
        return true;

    if table_contains (*module.types_to_generate, type.Name)
        return true;

    if ignored
        return false;

    return module.generate_entirely;
}

ShouldGenerateFunction :: (module : *Win32Module, name : string) -> bool #must
{
    always_generate, ignored := GetFilterInfoForName (module.name, name);

    if always_generate
        return true;

    if ignored
        return false;

    return module.generate_entirely;
}

ShouldGenerateFunction :: (module : *Win32Module, func : Win32Function) -> bool #must
{
    if func.Architectures.count != 0 && !array_find (func.Architectures, context.gen_ctx.generate_for_architecture)
        return false;

    always_generate, ignored := GetFilterInfoForName (module.name, func.Name);
    lib_always_generate, lib_ignored := GetFilterInfoForName (module.name, func.DllImport);

    if (always_generate || lib_always_generate) && !lib_ignored
        return true;

    if ignored || lib_ignored
        return false;

    return module.generate_entirely;
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

    case .Com;
        CollectDependencies (Interface);
        for Methods
            CollectDependencies (it);
    }
}

CollectDependencies :: (using func : Win32Function)
{
    CollectDependencies (ReturnType);
    for Params
        CollectDependencies (it.Type);
 }

CollectModuleDependencies :: (module : *Win32Module)
{
    for module.Types
    {
        if ShouldGenerateType (module, it)
            CollectDependencies (it);
    }

    for module.Constants
    {
        if ShouldGenerateConstant (module, it)
            CollectDependencies (it);
    }

    for module.Functions
    {
        if ShouldGenerateFunction (module, it)
            CollectDependencies (it);
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
    Null;
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
    case .String; append (builder, "string"); // @Todo: Is this correct?
    case .PropertyKey; append (builder, "PROPERTYKEY");
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
    // This is actually a WCHAR. This is confusing and absolutely not helpful to name this Char but whatever...
    case .Char; append (builder, "u16");
    case .Single; append (builder, "float");
    case .Double; append (builder, "float64");

    // Should it be *u8 ? This is only ever used for constants, so I guess
    // it's fine if we use the string type (we don't even print the NativeType
    // for constants at the moment)
    case .String; append (builder, "string");

    // This is used for handles, which users usually expect to be *void so we have a special case for them
    // @Incomplete: these are probably different on different architectures,
    // especially X86
    case .IntPtr; append (builder, "s64");
    case .UIntPtr; append (builder, "u64");
    case .Guid; append (builder, "GUID");
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

AppendType :: (builder : *String_Builder, using type : Win32Type, pointer_to_com := true)
{
    if #complete Kind ==
    {
    case .Null;
    case .Native;
        AppendNativeType (builder, Name);

    case .ApiRef;
        // We replace WIN32_ERROR with u32, see the comment about this type
        // in GenerateTypeDeclaration
        if !context.gen_ctx.generate_WIN32_ERROR_enum && Name == "WIN32_ERROR"
        {
            append (builder, "u32");
            return;
        }

        if TargetKind == "Com" && pointer_to_com
            append (builder, "*");
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

    if Type.Kind == .ApiRef && Type.Name != "PROPERTYKEY"
    {
        append (builder, " :: cast, no_check (");
        AppendType (builder, Type);
        append (builder, ") ");
    }
    else
    {
        append (builder, " :: ");
    }

    if #complete Value.type ==
    {
    case .NULL;
        append (builder, "null");
    case .BOOLEAN;
        print_to_builder (builder, "%", Value.boolean);

    case .NUMBER;
        if ValueType == .Single || ValueType == .Double
            print_to_builder (builder, "%", FormatFloat.{value=Value.number, zero_removal=.ONE_ZERO_AFTER_DECIMAL});
        else if ValueType == .UInt16 || ValueType == .UInt32 || ValueType == .UInt64
            print_to_builder (builder, "%", cast, no_check (u64) Value.number);
        else
            print_to_builder (builder, "%", cast, no_check (s64) Value.number);

    case .STRING;
        AppendStringLiteral (builder, Value.str);

    case .OBJECT;
        if ValueType == .PropertyKey
        {
            fmtid, ok := table_find (Value.object, "Fmtid");
            assert (ok, "Could not find Fmtid value for PropertyKey");
            assert (fmtid.type == .STRING, "Fmtid is not a string");

            pid:, ok = table_find (Value.object, "Pid");
            assert (ok, "Could not find Pid value for PropertyKey");
            assert (pid.type == .NUMBER, "Pid is not a number");

            print_to_builder (builder, "#run PROPERTYKEY.{ MakeGUID (\"%\"), % }", fmtid.str, pid.number);
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

    // Don't generate this! It's a HUGE enum (3k values) that has error codes for
    // a lot of different and unrelated things; things that should be in different modules.
    // It's used in like only 4 different places, places that could return only a handful of
    // these values, so IT DOES NOT MAKE ANY SENSE THAT THIS ENUM EXIST!!!
    // I think the Microsoft team responsible for the API metadata tried to bundle all these
    // error codes into a single enum because it is all of the possible values for Get/SetLastError,
    // which seems OBVIOUSLY wrong to me but whatever...
    if !context.gen_ctx.generate_WIN32_ERROR_enum && Name == "WIN32_ERROR"
        return;

    if Kind == .Com
    {
        GenerateCOMInterface (builder, type, indent_level);
        return;
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

            // @Incomplete: see commit about struct member names clashing
            if it.Name == it.Type.Name
                append (builder, "_");

            AppendIdentifier (builder, it.Name);
            append (builder, " : ");

            AppendType (builder, it.Type);

            append (builder, ";");

            // Generate attributes as comments
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
        if table_contains (*context.gen_ctx.handle_type_set, Name)
            append (builder, "*void");
        else
            AppendType (builder, Def);

        append (builder, ";\n");

    case .FunctionPointer;
        append (builder, "#type (");

        AppendParamList (builder, Params);

        append (builder, ") -> ");
        AppendType (builder, ReturnType);
        append (builder, " #c_call;\n");

    case .Com;
        // Handled above
    case .ComClassID;
        print_to_builder (builder, "\"%\";\n", Guid);
    }
}

GenerateCOMInterface :: (builder : *String_Builder, using typedef : Win32TypeDefinition, indent_level := 0)
{
    Indent :: () #expand
    {
        for 0..`indent_level - 1
            append (`builder, "    ");
    }

    Indent ();
    AppendIdentifier (builder, Name);
    print_to_builder (builder, "_UUID :: \"%\";\n", Guid);

    Indent ();
    AppendIdentifier (builder, Name);
    append (builder, " :: struct\n");

    Indent ();
    print_to_builder (builder, "{\n");

    {
        indent_level += 1;
        defer indent_level -= 1;

        Indent ();
        append (builder, "UUID :: ");
        AppendIdentifier (builder, Name);
        append (builder, "_UUID;\n\n");

        if Interface.Kind != .Null
        {
            Indent ();

            append (builder, "#as using, except (.[\"vtable\", \"base\", \"UUID\"]) base : ");
            AppendType (builder, Interface, pointer_to_com = false);
            append (builder, ";\n\n");

            Indent ();
            append (builder, "#place base;\n");
        }

        Indent ();
        append (builder, "vtable : *");
        AppendIdentifier (builder, Name);
        append (builder, "VTable;\n");

        // Generate wrappers for the methods
        for method : Methods
        {
            if it_index == 0
                append (builder, "\n");

            Indent ();

            AppendIdentifier (builder, method.Name);
            print_to_builder (builder, " :: (this : *");
            AppendIdentifier (builder, Name);

            if method.Params.count > 0
                append (builder, ", ");
            AppendParamList (builder, method.Params, const_ref_wrapper = true);

            if HasReturnValue (method)
            {
                print_to_builder (builder, ") -> ");
                AppendType (builder, method.ReturnType);
                append (builder, " #no_context { return this.vtable.");
            }
            else
            {
                print_to_builder (builder, ") #no_context { this.vtable.");
            }

            AppendIdentifier (builder, method.Name);
            append (builder, " (this");

            for method.Params
            {
                append (builder, ", ");

                if ParamIsConstRef (it)
                    append (builder, "*");

                AppendIdentifier (builder, it.Name);
            }

            append (builder, "); }\n");
        }
    }

    Indent ();
    append (builder, "}\n\n");

    // Generate VTable struct
    Indent ();
    print_to_builder (builder, "%VTable :: struct\n", Name);

    Indent ();
    print_to_builder (builder, "{\n");

    {
        indent_level += 1;
        defer indent_level -= 1;

        if Interface.Kind != .Null
        {
            Indent ();
            append (builder, "#as using, except (.[\"base\"]) base : ");
            AppendType (builder, Interface, pointer_to_com = false);
            append (builder, ";\n\n");
        }

        for Methods
        {
            Indent ();
            GenerateVirtualMethod (builder, Name, it);
        }
    }

    Indent ();
    print_to_builder (builder, "}\n");
}

AppendParamList :: (builder : *String_Builder, params : []Win32FunctionParam, const_ref_wrapper := false)
{
    for params
    {
        if it_index != 0
            append (builder, ", ");

        const_ref := const_ref_wrapper && ParamIsConstRef (it);
        if const_ref
            append (builder, "/*const ref*/ ");

        // @Incomplete: we do this to prevent the param name clashing with the
        // type name, which happens a few times, but a more robust thing would be to
        // check for name clashes against all types
        if it.Name == it.Type.Name
            append (builder, "_");

        AppendIdentifier (builder, it.Name);
        print_to_builder (builder, " : ");

        if const_ref
            AppendType (builder, it.Type.Child);
        else
            AppendType (builder, it.Type);
    }
}

HasReturnValue :: inline (using func : Win32Function) -> bool #must
{
    return !(ReturnType.Kind == .Native && ReturnType.Name == "Void");
}

ParamIsConstRef :: (using param : Win32FunctionParam) -> bool #must
{
    if Type.Kind != .PointerTo || !Type.Child
        return false;

    // void pointers cannot be const ref (they would decay into param : void)
    if Type.Child.Kind == .Native && Type.Child.Name == "Void"
        return false;

    has_const := false;
    has_in := false;
    for attr : Attrs
    {
        if attr.type == .STRING
        {
            if attr.str == "Const"
                has_const = true;
            else if attr.str == "In"
                has_in = true;
            else if attr.str == "Optional" // Optional means you can pass null, so it needs to stay a pointer
                return false;
        }

        if has_const && has_in
            return true;
    }

    return false;
}

GenerateVirtualMethod :: (builder : *String_Builder, interface_name : string, using func : Win32Function)
{
    AppendIdentifier (builder, Name);
    append (builder, " : (");

    append (builder, "this : *");
    AppendIdentifier (builder, interface_name);

    if Params.count > 0
        append (builder, ", ");
    AppendParamList (builder, Params);

    if HasReturnValue (func)
    {
        append (builder, ") -> ");
        AppendType (builder, ReturnType);
    }
    else
    {
        append (builder, ")");
    }

    append (builder, " #cpp_method;\n");
}

GenerateFunction :: (builder : *String_Builder, using func : Win32Function)
{
    AppendIdentifier (builder, Name);
    append (builder, " :: (");
    AppendParamList (builder, Params);

    if HasReturnValue (func)
    {
        append (builder, ") -> ");
        AppendType (builder, ReturnType);
    }
    else
    {
        append (builder, ") ");
    }

    if DllImport
    {
        append (builder, " #foreign ");
        AppendStringAsIdentifier (builder, DllImport);
    }

    append (builder, ";\n");
}

// print_item_to_builder does not escape everything (like tabs) so we roll our own
AppendStringLiteral :: (builder : *String_Builder, str : string)
{
    append (builder, "\"");

    for i : 0..str.count - 1
    {
        if str[i] ==
        {
        case #char "\t";
            append (builder, "\\t");
        case #char "\n";
            append (builder, "\\n");
        case #char "\r";
            append (builder, "\\r");
        case;
            append (builder, str[i]);
        }
    }

    append (builder, "\"");
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
    case "float64"; #through;
    case "GUID";
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

    append (*builder, "// Constants\n\n");

    for module.Constants
    {
        if ShouldGenerateConstant (module, it)
            GenerateConstantDeclaration (*builder, it);
    }

    append (*builder, "\n");

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
        if !ShouldGenerateFunction (module, sprint ("%W", it))
        || !ShouldGenerateFunction (module, sprint ("%A", it))
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

Main :: (arguments : []string) -> int
{
    ReturnWithoutCompiling :: (code : int) #expand
    {
        if #compile_time
            set_build_options_dc (.{do_output = false, write_added_strings = false});
        `return code;
    }

    using context.gen_ctx;

    context.allocator = temp;

    if arguments.count == 0
    {
        print ("Usage: jai generate.jai - module_names [options]\n");
        print ("A module name can end with a * to indicate a wildcard\n\n");
        print ("Valid options are:\n");
        print (" -arch ARCHITECTURE (ARCHITECTURE must be one of X64, Arm64, X86)\n");
        print (" -clean (delete the Generated directory and its contents)\n");

        if #compile_time
        {
            print (" -import_GL (import GL module to check for name clashes with Graphics.OpenGL)\n");
            print (" -exe (compile this into an executable; for now this removes the ability to compile the generated code automatically)\n");
        }

        ReturnWithoutCompiling (0);
    }

    module_arguments : [..]string;
    next_is_arch := false;
    clean := false;
    import_GL := false;
    exe := false;

    for arguments
    {
        if next_is_arch
        {
            defer next_is_arch = false;

            if it ==
            {
            case "X64";
                print ("Generating for architecture X64\n");
            case "Arm64";
                print ("Generating for architecture Arm64\n");
                print ("Warning: architecture Arm64 might not be fully supported\n");
            case "X86";
                print ("Generating for architecture X86\n");
                print ("Warning: architecture X86 might not be fully supported\n");
            case;
                print ("Error: invalid architecture '%'. Valid architectures are X64, Arm64 and X86\n", it);
                ReturnWithoutCompiling (1);
            }

            generate_for_architecture = it;
        }
        else if it ==
        {
        case "-arch";
            next_is_arch = true;

        case "-clean";
            clean = true;

        case "-import_GL";
            if !#compile_time
            {
                print ("Error: % option is only valid when executed in the Jai interpreter\n", it);
                ReturnWithoutCompiling (1);
            }

            import_GL = true;

        case "-exe";
            if !#compile_time
            {
                print ("Error: % option is only valid when executed in the Jai interpreter\n", it);
                ReturnWithoutCompiling (1);
            }

            exe = true;

        case "-generate_WIN32_ERROR_enum";
            generate_WIN32_ERROR_enum = true;

        case;
            if it.count > 0 && it[0] == #char "-"
            {
                print ("Error: unknown option %\n", it);
                ReturnWithoutCompiling (1);
            }

            array_add (*module_arguments, it);
        }
    }

    if !#compile_time
    {
        print ("Warning: this program is not running in the Jai interpreter\n");
        print ("The generated code will not get compiled and checked for errors\n");
    }

    if exe
    {
        if arguments.count != 1
        {
            print ("Error: when option -exe is passed, nothing else should be passed\n");

            if #compile_time
                set_build_options_dc (.{do_output = false, write_added_strings = false});

            ReturnWithoutCompiling (1);
        }

        return 0;
    }
    else if #compile_time
    {
        set_build_options_dc (.{do_output = false, write_added_strings = false});
    }

    if clean && file_exists ("Generated/")
    {
        DeleteDirectory :: (info : *File_Visit_Info, user_data : *void)
        {
            if info.is_directory
                delete_directory (info.full_name);
            else
                file_delete (info.full_name);
        }

        visit_files ("Generated/", recursive=true, null, DeleteDirectory, visit_files=true, visit_directories=true);
        delete_directory ("Generated/");
    }

    if module_arguments.count == 0
    {
        if clean // Clean can be called without arguments
            ReturnWithoutCompiling (0);

        print ("Error: you need to provide modules to generate\n");
        ReturnWithoutCompiling (1);
    }

    for Handle_Type_Names
    {
        dummy : void;
        table_add (*handle_type_set, it, dummy);
    }

    assert (handle_type_set.count == Handle_Type_Names.count);

    modules_to_generate : [..]string;
    all_modules := file_list ("win32json/api/");
    for all_modules
    {
        name := path_strip_extension (path_filename (it));

        for to_gen : module_arguments
        {
            if WildcardStarMatch (to_gen, name)
            {
                array_add (*modules_to_generate, name);
                break;
            }
        }
    }

    {
        filter, ok := read_entire_file ("filter.json", log_errors = false);
        if ok
        {
            json_ok:, module_filters = json_parse_string (filter, []ModuleFilter);
            if !json_ok
            {
                print ("Error while parsing blacklist.json file\n");
                ReturnWithoutCompiling (1);
            }

            for module_filters
            {
                if it.AlwaysGenerate.count > 0 || it.Ignore.count > 0
                {
                    if it.ModuleName == "*"
                        print ("For all modules:\n");
                    else
                        print ("For module '%':\n", it.ModuleName);
                }

                for it.AlwaysGenerate
                    print (" - always generate name '%'\n", it);

                for it.Ignore
                    print (" - ignoring name '%'\n", it);
            }
        }
    }

    for modules_to_generate
    {
        module := FindOrAddModule (it);
        module.generate_entirely = true;
    }

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
            CollectModuleDependencies (module);
            remove it;
        }

        assert (old_modules_that_are_dirty.count == 0, "There are still modules to traverse");
        deinit (*old_modules_that_are_dirty);
    }

    if has_errors
        ReturnWithoutCompiling (1);

    for * modules
    {
        assert (it.parsed);
        GenerateModule (it);
    }

    // Write to disk

    make_directory_if_it_does_not_exist ("Generated/");

    all_modules_builder : String_Builder;
    for modules
    {
        write_entire_file (sprint ("Generated/%.jai", it.name), it.source_code);
        print_to_builder (*all_modules_builder, "#load \"%.jai\";\n", it.name);
    }

    write_entire_file ("Generated/all_modules.jai", *all_modules_builder);

    // Compile all modules to catch errors
    if #compile_time
    {
        ws := compiler_create_workspace ("Win32");

        options := get_build_options (ws);
        options.output_type = .NO_OUTPUT;
        options.dead_code_elimination = .NONE;
        set_build_options (options, ws);

        compiler_begin_intercept (ws, .SKIP_ALL);
        if import_GL
            add_build_string ("#import \"GL\" (ENABLE_ALL_EXTENSIONS = true);", ws);
        add_build_string ("#import, file \"../module.jai\";", ws);
        compiler_end_intercept (ws);
    }

    ReturnWithoutCompiling (0);
}

main :: ()
{
    arguments := get_command_line_arguments ();
    arguments.data += 1;
    arguments.count -= 1;

    exit_code := Main (arguments);
    exit (xx exit_code);
}

#run Main (get_build_options ().compile_time_command_line);
