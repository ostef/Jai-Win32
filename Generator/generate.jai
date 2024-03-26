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
        if is_digit (str[0])
            append (builder, "_");

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

AppendStringAsGUIDStruct :: (builder : *String_Builder, str : string)
{
    prev := context.print_style.default_format_int;
    defer context.print_style.default_format_int = prev;

    context.print_style.default_format_int.base = 16;

    guid_value := MakeGUID (str);

    appendf (builder, "GUID.{0x%,0x%,0x%,.[0x%,0x%,0x%,0x%,0x%,0x%,0x%,0x%]}",
        guid_value.Data1, guid_value.Data2, guid_value.Data3,
        guid_value.Data4[0], guid_value.Data4[1], guid_value.Data4[2], guid_value.Data4[3],
        guid_value.Data4[4], guid_value.Data4[5], guid_value.Data4[6], guid_value.Data4[7]
    );
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
        if context.generator.generate_clsid_constants_as_guid && starts_with (name, "CLSID_")
            AppendStringAsGUIDStruct (builder, str_value);
        else
            AppendStringLiteral (builder, str_value);

    case .PropertyKey;
        prev := context.print_style.default_format_int;
        defer context.print_style.default_format_int = prev;

        context.print_style.default_format_int.base = 16;

        guid_value := MakeGUID (property_key.fmtid);

        appendf (builder, "PROPERTYKEY.{ ");
        AppendStringAsGUIDStruct (builder, property_key.fmtid);
        appendf (builder, ", % }", property_key.pid);
    }

    append (builder, ";");

    if attrs != 0
        appendf (builder, "// %", attrs);

    append (builder, "\n");
}

GenerateScopedEnumTypeDefinition :: (builder : *String_Builder, using type : Win32TypeDefinition, indent_level : int, remove_name_prefix : bool)
{
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

        identifier := it.name;
        if remove_name_prefix
        {
            if starts_with (identifier, name)
            {
                identifier.data += name.count;
                identifier.count -= name.count;
            }
            else if ends_with (name, "FLAGS")
            {
                name_without_flags := name;
                name_without_flags.count -= "FLAGS".count;

                if starts_with (identifier, name_without_flags)
                {
                    identifier.data += name_without_flags.count;
                    identifier.count -= name_without_flags.count;
                }

                if starts_with (identifier, "FLAG")
                {
                    identifier.data += "FLAG".count;
                    identifier.count -= "FLAG".count;
                }
            }
            // Handle different usage of plural/singular in enum names and value names
            else if to_lower(name[name.count - 1]) == #char "s"
            {
                singular_name := name;
                singular_name.count -= 1;

                if starts_with (identifier, singular_name)
                {
                    identifier.data += singular_name.count;
                    identifier.count -= singular_name.count;
                }
            }

            if identifier.count > 0 && identifier[0] == #char "_"
            {
                identifier.data += 1;
                identifier.count -= 1;
            }

            if identifier.count == 0
            {
                print ("WARNING: when generating scoped enum type %, identifier % was reduced to nothing when removing the name prefix. We'll use the full name instead.\n", name, it.name);
                identifier = it.name;
            }
        }

        AppendIdentifier (builder, identifier);
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
        // We only generate a list of constants at current scope with non scoped
        // enum because most of the time an enum is expected it's specified as an
        // integer type, so .SOMETHING namespacing does not work and it makes it
        // even less convenient to use.
        // If context.generator.generate_additional_enum_type_for_non_scoped_enums we generate
        // an enum type anyway, but we also try to remove the name prefix
        if scoped || context.generator.generate_additional_enum_type_for_non_scoped_enums
        {
            GenerateScopedEnumTypeDefinition (builder, type, indent_level, !scoped);
        }
        else
        {
            if integer_base == .Null
                append (builder, "s32");
            else
                AppendValueType (builder, integer_base);

            append (builder, ";\n");
        }

        if !scoped
        {
            if context.generator.generate_additional_enum_type_for_non_scoped_enums
                append (builder, "\n");

            for values
            {
                Indent ();

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
        }

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
        AppendStringAsGUIDStruct (builder, guid);
        append (builder, ";\n\n");

        //AppendIdentifier (builder, name);
        //append (builder, "_UUID;\n\n");

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

        const_ref_wrapper := context.generator.handle_const_refs_in_COM_interface_wrappers;
        // Generate wrappers for the methods
        for method : methods
        {
            if it_index == 0
                append (builder, "\n");

            Indent ();

            AppendIdentifier (builder, method.name);
            appendf (builder, " :: inline (this : *");
            AppendIdentifier (builder, name);

            if method.params.count > 0
                append (builder, ", ");
            AppendParamList (builder, method.params, const_ref_wrapper=const_ref_wrapper);

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

                if const_ref_wrapper && ParamIsConstRef (it)
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
            append (builder, "VTable;\n\n");
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

AppendParamList :: (builder : *String_Builder, params : []Win32FunctionParam, const_ref_wrapper := false, guid_const_ref_wrapper := false)
{
    for params
    {
        if it_index != 0
            append (builder, ", ");

        const_ref := (const_ref_wrapper && ParamIsConstRef (it))
            || (guid_const_ref_wrapper && ParamIsREFIID (it));
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
    if type.child.kind == .Native && type.child.native_type != .Void
        return false;

    // Optional means you can pass null, so it needs to stay a pointer
    if attrs & .Optional
        return false;

    return (attrs & .Const) && (attrs & .In);
}

ParamIsREFIID :: inline (using param : Win32FunctionParam) -> bool #must
{
    if !ParamIsConstRef (param)
        return false;

    return type.child.kind == .Native && type.child.native_type == .Guid;
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

FunctionNeedsWrapperForREFIIDParam :: (func : Win32Function) -> bool #must
{
    if !context.generator.generate_wrapper_function_for_REFIID_params
        return false;

    for func.params
    {
        if ParamIsREFIID (it)
            return true;
    }

    return false;
}

GenerateFunction :: (builder : *String_Builder, using func : Win32Function)
{
    needs_REFIID_wrapper := FunctionNeedsWrapperForREFIIDParam (func);
    if needs_REFIID_wrapper
    {
        append (builder, "\n");
        AppendIdentifier (builder, name);
        append (builder, " :: inline (");
        AppendParamList (builder, params, guid_const_ref_wrapper = true);

        if HasReturnValue (func)
        {
            append (builder, ") -> ");
            AppendType (builder, return_type);
            append (builder, " #no_context");
        }
        else
        {
            append (builder, ") #no_context");
        }

        append (builder, "\n{\n    ");
    }

    AppendIdentifier (builder, name);
    if needs_REFIID_wrapper
        append (builder, "_Original");

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

        if needs_REFIID_wrapper
        {
            append (builder, " ");
            AppendStringLiteral (builder, name);
        }
    }

    append (builder, ";\n");

    if needs_REFIID_wrapper
    {
        if HasReturnValue (func)
            append (builder, "    return ");
        else
            append (builder, "    ");

        AppendIdentifier (builder, name);
        append (builder, "_Original (");

        for params
        {
            if it_index != 0
                append (builder, ", ");

            if ParamIsREFIID (it)
                append (builder, "*");

            AppendIdentifier (builder, it.name);
        }

        append (builder, ");\n}\n\n");
    }
}

GenerateModuleSourceCode :: inline (module : *Module) -> string #must
{
    builder : String_Builder;

    GenerateModuleSourceCode (*builder, module);

    return builder_to_string (*builder);
}

GenerateModuleSourceCode :: (builder : *String_Builder, module : *Module)
{
    append (builder, "// This file was auto generated\n\n");
    if context.generator.generate_unicode_aliases
        append (builder, "#module_parameters (UNICODE := true);\n\n");

    for _, dep : module.dependencies
    {
        if dep != module.name
        {
            // @Hack (stefan): If we #import "Windows" we assume it's the original Jai
            // module, which does not have a UNICODE parameter.
            if !context.generator.generate_unicode_aliases ||
            (dep == "Windows" && context.generator.treat_generated_Windows_import_as_original_jai_module)
                appendf (builder, "#import \"%\";\n", dep);
            else
                appendf (builder, "#import \"%\" (UNICODE);\n", dep);
        }
    }

    append (builder, "\n");
    append (builder, "// Constants\n\n");

    for module.constants
        GenerateConstant (builder, it);

    append (builder, "\n");

    append (builder, "// Types\n\n");

    for module.types
    {
        if it_index != 0
            append (builder, "\n");
        GenerateTypeDefinition (builder, it);
    }

    append (builder, "\n// Functions\n\n");

    all_dlls : [..]string;
    for module.functions
    {
        GenerateFunction (builder, it);

        // Not sure how this is possible but let's handle it
        if !it.dll_import
            continue;

        if !array_find (all_dlls, it.dll_import)
            array_add (*all_dlls, it.dll_import);
    }

    if context.generator.generate_unicode_aliases
    {
        append (builder, "\n// Unicode aliases\n\n");
        for module.unicode_aliases
        {
            appendf (builder, "#if UNICODE then %1 :: %1W;\n", it);
            appendf (builder, "else             %1 :: %1A;\n", it);
        }
    }

    append (builder, "\n// System libraries\n\n");
    append (builder, "#scope_file\n\n");

    for all_dlls
    {
        AppendStringAsIdentifier (builder, it);
        appendf (builder, " :: #system_library \"%\";\n", it);
    }

    if all_dlls.count
        append (builder, "\n");
}

GenerateModuleSourceCodeToFile :: (module : *Module, additional_code := "", output_directory := "Generated") -> string
{
    make_directory_if_it_does_not_exist (output_directory, recursive = true);

    builder : String_Builder;

    GenerateModuleSourceCode (*builder, module);

    if additional_code
    {
        append (*builder, "#scope_export\n\n");
        append (*builder, additional_code);
    }

    source_code := builder_to_string (*builder);

    write_entire_file (sprint ("%/%.jai", output_directory, module.name), source_code);

    return source_code;
}

GUID :: struct
{
    Data1 : u32;
    Data2 : u16;
    Data3 : u16;
    Data4 : [8]u8;
}

MakeGUID :: (str : string) -> GUID #must
{
    ParseHexInt :: (str : string, offset : int) -> result : int, advance : int
    {
        ToDigit :: inline (char : u8) -> int #must
        {
            if char >= #char "0" && char <= #char "9"
                return char - #char "0";

            if char >= #char "a" && char <= #char "f"
                return 10 + char - #char "a";

            if char >= #char "A" && char <= #char "F"
                return 10 + char - #char "A";

            return -1;
        }

        end := offset;
        result : int;
        while end < str.count
        {
            digit := ToDigit (str[end]);
            if digit < 0
                break;

            result *= 16;
            result += digit;
            end += 1;
        }

        return result, end - offset;
    }

    if str.count == 0
        return .{};

    assert (str.count == 36, "GUID length is not valid (got %)", str.count);

    offset := 0;

    a, adv := ParseHexInt (str, offset);

    assert (adv == 8);
    assert (str[offset + adv] == #char "-");

    offset += adv + 1;

    b:, adv = ParseHexInt (str, offset);

    assert (adv == 4);
    assert (str[offset + adv] == #char "-");

    offset += adv + 1;

    c:, adv = ParseHexInt (str, offset);

    assert (adv == 4);
    assert (str[offset + adv] == #char "-");

    offset += adv + 1;

    result := GUID.{ Data1 = xx a, Data2 = xx b, Data3 = xx c };

    s := str;
    s.data += offset;
    s.count = 2;

    value:, adv = ParseHexInt (s, 0);

    assert (adv == 2);

    result.Data4[0] = xx value;
    offset += 2;
    s.data += 2;

    value, adv = ParseHexInt (s, 0);

    assert (adv == 2);
    assert (str[offset + adv] == #char "-");

    result.Data4[1] = xx value;
    offset += 3;

    for i : 2..7
    {
        s := str;
        s.data += offset;
        s.count = 2;

        value, adv = ParseHexInt (s, 0);

        assert (adv == 2);

        result.Data4[i] = xx value;
        offset += 2;
    }

    assert (offset == str.count);

    return result;
}
