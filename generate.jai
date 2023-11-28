#scope_module

appendf :: (builder : *String_Builder, format_string : string, args: ..Any) -> bool
{
    return print_to_builder (builder, format_string, ..args);
} @PrintLike

#scope_export

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
    case "remove"; #through;
    case "defer"; #through;
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
    case "Type"; #through;
    case "Any"; #through;
    case "Code"; #through;
    case "Type_Info"; #through;
    case "GUID";
        appendf (builder, "_%", str);

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

#scope_file

Indent :: () #expand
{
    for 0..`indent_level - 1
        append (`builder, "    ");
}

#scope_export

AppendValueType :: (builder : *String_Builder, type : Win32ValueType)
{
    if #complete type ==
    {
    case .Null; append (builder, "<null>");
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

AppendType :: (builder : *String_Builder, using type : Win32Type, pointer_to_com := true)
{
    if #complete kind ==
    {
    case .Null;
    case .MissingClrType;
        append (builder, "void");

    case .Native;
        AppendNativeType (builder, native_type);

    case .ApiRef;
        if target_kind == .Com && pointer_to_com
            append (builder, "*");
        append (builder, name);

    case .Array;
        if count >= 0
            print_to_builder (builder, "[%]", count);
        else
            append (builder, "*");

        if child
            AppendType (builder, child);
        else
            append (builder, "<invalid>");

    case .LPArray;
        // I think all the other stuff about LPArray is metadata about the parameter
        // (I don't know what the NullNullTerm is...)
        // https://learn.microsoft.com/en-us/dotnet/framework/interop/default-marshalling-for-arrays

        // Fixed size arrays cannot be passed as arguments to #c_call procedure,
        // we either have to pass a pointer to the elem type or a pointer to the array.
        if count >= 0
            print_to_builder (builder, "*[%]", count);
        else
            append (builder, "*");

        if child
            AppendType (builder, child);
        else
            append (builder, "<invalid>");

    case .PointerTo;
        append (builder, "*");
        if child
            AppendType (builder, child);
        else
            append (builder, "<invalid>");
    }
}

GenerateConstant :: (builder : *String_Builder, using const : Win32Constant)
{
    AppendIdentifier (builder, name);

    if type.kind == .ApiRef && type.name != "PROPERTYKEY"
    {
        append (builder, " :: cast, no_check (");
        AppendType (builder, type);
        append (builder, ") ");
    }
    else
    {
        append (builder, " :: ");
    }

    if #complete value_type ==
    {
    case .Null;
        append (builder, "<null>");

    case .Byte; #through;
    case .UInt16; #through;
    case .UInt32; #through;
    case .UInt64;
        appendf (builder, "%", cast, no_check (u64) int_value);

    case .Int16; #through;
    case .Int32; #through;
    case .Int64;
        appendf (builder, "%", cast, no_check (s64) int_value);

    case .Single; #through;
    case .Double;
        appendf (builder, "%", FormatFloat.{value=float_value, zero_removal=.ONE_ZERO_AFTER_DECIMAL});

    case .String;
        AppendStringLiteral (builder, str_value);

    case .PropertyKey; append (builder, "PROPERTYKEY");
        appendf (builder, "#run PROPERTYKEY.{ MakeGUID (\"%\"), % }", property_key.fmtid, property_key.pid);
    }

    append (builder, ";");

    if attrs != 0
        appendf (builder, "// %", attrs);

    append (builder, "\n");
}

GenerateTypeDefinition :: (builder : *String_Builder, using type : Win32TypeDefinition, indent_level := 0, as_type_declaration := true)
{
    if kind == .Com
    {
        GenerateCOMInterface (builder, type, indent_level);
        return;
    }

    Indent ();
    if as_type_declaration
    {
        AppendIdentifier (builder, name);
        append (builder, " :: ");
    }

    if #complete kind ==
    {
    case .Enum;
        // @Todo: handle Scoped

        if flags
            append (builder, "enum_flags ");
        else
            append (builder, "enum ");

        if integer_base == .Null
            append (builder, "s32");
        else
            AppendValueType (builder, integer_base);

        append (builder, "\n");
        Indent ();
        append (builder, "{\n");

        for values
        {
            Indent ();
            append (builder, "    ");
            AppendIdentifier (builder, it.name);
            if integer_base ==
            {
            case .Byte;
                print_to_builder (builder, " :: %;\n", cast, no_check (u8) it.value);
            case .UInt16;
                print_to_builder (builder, " :: %;\n", cast, no_check (u16) it.value);
            case .Int16;
                print_to_builder (builder, " :: %;\n", cast, no_check (s16) it.value);
            case .UInt32;
                print_to_builder (builder, " :: %;\n", cast, no_check (u32) it.value);
            case .Int32;
                print_to_builder (builder, " :: %;\n", cast, no_check (s32) it.value);
            case .UInt64;
                print_to_builder (builder, " :: %;\n", cast, no_check (u32) it.value);
            case .Int64;
                print_to_builder (builder, " :: %;\n", cast, no_check (s64) it.value);
            }
        }

        Indent ();
        append (builder, "}\n");

    case .Struct; #through;
    case .Union;
        if kind == .Struct
            append (builder, "struct\n");
        else
            append (builder, "union\n");

        Indent ();
        append (builder, "{\n");

        for fields
        {
            is_anonymous : bool;
            anonymous_typedef : *Win32TypeDefinition;
            if starts_with (it.name, "Anonymous") && starts_with (it.type.name, "_Anonymous")
            {
                for * nested : nested_types
                {
                    if nested.name == it.type.name
                    {
                        is_anonymous = true;
                        anonymous_typedef = nested;
                        break;
                    }
                }
            }

            if is_anonymous
            {
                GenerateTypeDefinition (builder, anonymous_typedef, indent_level + 1, as_type_declaration = false);
            }
            else
            {
                Indent ();
                append (builder, "    ");

                // @Incomplete: see commit about struct member names clashing
                if it.name == it.type.name
                    append (builder, "_");

                AppendIdentifier (builder, it.name);
                append (builder, " : ");

                AppendType (builder, it.type);
            }

            if packing_size != 0
                appendf (builder, " #align %", packing_size);

            append (builder, ";");

            // Generate attributes as comments
            if it.attrs != 0
            {
                appendf (builder, " // %", it.attrs);
                if is_anonymous
                    appendf (builder, " Anonymous");
            }
            else if is_anonymous
            {
                appendf (builder, " // Anonymous");
            }

            append (builder, "\n");
        }

        for nested_types
        {
            if starts_with (it.name, "_Anonymous")
                continue;

            append (builder, "\n");

            GenerateTypeDefinition (builder, it, indent_level + 1);
        }

        Indent ();
        append (builder, "}");

        if packing_size != 0
            append (builder, " #no_padding");

        if as_type_declaration
            append (builder, "\n");

    case .NativeTypedef;
        AppendType (builder, def);
        append (builder, ";\n");

    case .FunctionPointer;
        append (builder, "#type (");

        AppendParamList (builder, params);

        append (builder, ") -> ");
        AppendType (builder, return_type);
        append (builder, " #c_call;\n");

    case .Com;
        // Handled above
    case .ComClassID;
        appendf (builder, "\"%\";\n", guid);
    }
}

GenerateCOMInterface :: (builder : *String_Builder, using typedef : Win32TypeDefinition, indent_level := 0)
{
    Indent ();
    AppendIdentifier (builder, name);
    appendf (builder, "_UUID :: \"%\";\n", guid);

    Indent ();
    AppendIdentifier (builder, name);
    append (builder, " :: struct\n");

    Indent ();
    appendf (builder, "{\n");

    {
        indent_level += 1;
        defer indent_level -= 1;

        Indent ();
        append (builder, "UUID :: ");
        AppendIdentifier (builder, name);
        append (builder, "_UUID;\n\n");

        if interface_type.kind != .Null
        {
            Indent ();

            append (builder, "#as using, except (.[\"vtable\", \"base\", \"UUID\"]) base : ");
            AppendType (builder, interface_type, pointer_to_com = false);
            append (builder, ";\n\n");

            Indent ();
            append (builder, "#place base;\n");
        }

        Indent ();
        append (builder, "vtable : *");
        AppendIdentifier (builder, name);
        append (builder, "VTable;\n");

        // Generate wrappers for the methods
        for method : methods
        {
            if it_index == 0
                append (builder, "\n");

            Indent ();

            AppendIdentifier (builder, method.name);
            appendf (builder, " :: (this : *");
            AppendIdentifier (builder, name);

            if method.params.count > 0
                append (builder, ", ");
            AppendParamList (builder, method.params, const_ref_wrapper = true);

            if HasReturnValue (method)
            {
                appendf (builder, ") -> ");
                AppendType (builder, method.return_type);
                append (builder, " #no_context { return this.vtable.");
            }
            else
            {
                appendf (builder, ") #no_context { this.vtable.");
            }

            AppendIdentifier (builder, method.name);
            append (builder, " (this");

            for method.params
            {
                append (builder, ", ");

                if ParamIsConstRef (it)
                    append (builder, "*");

                AppendIdentifier (builder, it.name);
            }

            append (builder, "); }\n");
        }
    }

    Indent ();
    append (builder, "}\n\n");

    // Generate VTable struct
    Indent ();
    appendf (builder, "%VTable :: struct\n", name);

    Indent ();
    appendf (builder, "{\n");

    {
        indent_level += 1;
        defer indent_level -= 1;

        if interface_type.kind != .Null
        {
            Indent ();
            append (builder, "#as using, except (.[\"base\"]) base : ");
            AppendType (builder, interface_type, pointer_to_com = false);
            append (builder, ";\n\n");
        }

        for methods
        {
            Indent ();
            GenerateVirtualMethod (builder, name, it);
        }
    }

    Indent ();
    appendf (builder, "}\n");
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
        if it.name == it.type.name
            append (builder, "_");

        AppendIdentifier (builder, it.name);
        appendf (builder, " : ");

        if const_ref
            AppendType (builder, it.type.child);
        else
            AppendType (builder, it.type);
    }
}

HasReturnValue :: inline (using func : Win32FunctionType) -> bool #must
{
    return !(return_type.kind == .Native && return_type.native_type == .Void);
}

ParamIsConstRef :: (using param : Win32FunctionParam) -> bool #must
{
    if type.kind != .PointerTo || !type.child
        return false;

    // void pointers cannot be const ref (they would decay into param : void)
    if type.child.kind == .Native && type.child.native_type == .Void
        return false;

    // Optional means you can pass null, so it needs to stay a pointer
    if attrs | .Optional
        return false;

    return (attrs | .Const) && (attrs | .In);
}

GenerateVirtualMethod :: (builder : *String_Builder, interface_name : string, using method : Win32Method)
{
    AppendIdentifier (builder, name);
    append (builder, " : (");

    append (builder, "this : *");
    AppendIdentifier (builder, interface_name);

    if params.count > 0
        append (builder, ", ");
    AppendParamList (builder, params);

    if HasReturnValue (method)
    {
        append (builder, ") -> ");
        AppendType (builder, return_type);
    }
    else
    {
        append (builder, ")");
    }

    append (builder, " #cpp_method;\n");
}

GenerateFunction :: (builder : *String_Builder, using func : Win32Function)
{
    AppendIdentifier (builder, name);
    append (builder, " :: (");
    AppendParamList (builder, params);

    if HasReturnValue (func)
    {
        append (builder, ") -> ");
        AppendType (builder, return_type);
    }
    else
    {
        append (builder, ") ");
    }

    if dll_import
    {
        append (builder, " #foreign ");
        AppendStringAsIdentifier (builder, dll_import);
    }

    append (builder, ";\n");
}

GenerateModuleSourceCode :: (module : *Module) -> string #must
{
    builder : String_Builder;

    append (*builder, "// This file was auto generated\n\n");
    append (*builder, "#module_parameters (UNICODE := true);\n\n");

    for _, dep : module.dependencies
    {
        if dep != module.name
            appendf (*builder, "#import \"%\" (UNICODE);\n", dep);
    }

    // Append hand-written GUID stuff
    if module.name == "Win32/Basics"
    {
        append (*builder, GUID_Code);
    }

    append (*builder, "\n");
    append (*builder, "// Constants\n\n");

    for module.constants
        GenerateConstant (*builder, it);

    append (*builder, "\n");

    append (*builder, "// Types\n\n");

    for module.types
    {
        if it_index != 0
            append (*builder, "\n");
        GenerateTypeDefinition (*builder, it);
    }

    append (*builder, "\n// Functions\n\n");

    all_dlls : [..]string;
    for module.functions
    {
        GenerateFunction (*builder, it);

        // Not sure how this is possible but let's handle it
        if !it.dll_import
            continue;

        if !array_find (all_dlls, it.dll_import)
            array_add (*all_dlls, it.dll_import);
    }

    append (*builder, "\n// Unicode aliases\n\n");
    for module.unicode_aliases
    {
        appendf (*builder, "#if UNICODE then %1 :: %1W;\n", it);
        appendf (*builder, "else             %1 :: %1A;\n", it);
    }

    append (*builder, "\n// System libraries\n\n");
    append (*builder, "#scope_file\n\n");

    for all_dlls
    {
        AppendStringAsIdentifier (*builder, it);
        appendf (*builder, " :: #system_library \"%\";\n", it);
    }

    return builder_to_string (*builder);
}

GenerateModuleSourceCodeToFile :: (module : *Module, output_directory := "Generated") -> string
{
    make_directory_if_it_does_not_exist (output_directory, recursive = true);

    source_code := GenerateModuleSourceCode (module);

    write_entire_file (sprint ("%/%.jai", output_directory, module.name), source_code);

    return source_code;
}
