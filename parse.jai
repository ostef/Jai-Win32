// @Todo: ensure we parse integer values correctly from the Json files
// Currently Jaison interprets any number as a float, but I don't think
// all int64s are representable as float64...

// There is a typed API in Jaison, which would help reduce all of this
// boilerplate annoying parsing code, BUT this limits us in terms of how
// we want to structure our data.

#import, dir "Jaison";

ParseType :: (module : *Module, target : *Win32Type, type : *JSON_Object)
{
    kind := JsonGet (type, "Kind", string);
    StringToEnumValue (*target.kind, kind);

    if kind ==
    {
    case "Native";
        name := JsonGet (type, "Name", string);
        StringToEnumValue (*target.native_type, name);

    case "ApiRef";
        target.name = JsonGet (type, "Name", string);
        StringToEnumValue (*target.target_kind, JsonGet (type, "TargetKind", string));
        target.api = JsonGet (type, "Api", string);

        parents := JsonGet (type, "Parents", []JSON_Value);
        if parents.count > 0
            target.parents = NewArray (parents.count, string);

        for parents
        {
            if it.type != .STRING
                continue;

            target.parents[it_index] = it.str;
        }

    case "Array"; #through;
    case "LPArray"; #through;
    case "PointerTo";
        if kind == "Array"
        {
            // @Todo: handle null Shape
            shape := JsonGet (type, "Shape", JSON_Value);
            if shape.type == .NULL
            {
                target.count = -1;
            }
            else
            {
                assert (shape.type == .OBJECT);

                count := JsonGet (shape.object, "Size", float64);
                target.count = cast (s64) count;
            }
        }

        if kind == "LPArray"
        {
            count_const := JsonGet (type, "CountConst", float64);
            // @Todo: handle the different value types
            target.count = cast (s64) count_const;
        }

        child := JsonGet (type, "Child", JSON_Object);

        target.child = New (Win32Type);
        ParseType (module, target.child, *child);

    case "MissingClrType";
    case;
        assert (false, "Invalid type kind %", kind);
    }
}

ParseConstant :: (module : *Module, const : *JSON_Object)
{
    name := JsonGet (const, "Name", string);
    type := JsonGet (const, "Type", JSON_Object);
    value_type := JsonGet (const, "ValueType", string);
    value := JsonGet (const, "Value", JSON_Value);
    // @Todo: see if Attrs can be of any use

    result := New (Win32Constant);
    result.name = name;
    ParseType (module, *result.type, *type);
    StringToEnumValue (*result.value_type, value_type);

    if value_type ==
    {
    case "Byte"; #through;
    case "UInt16"; #through;
    case "Int16"; #through;
    case "UInt32"; #through;
    case "Int32"; #through;
    case "UInt64"; #through;
    case "Int64";
        result.int_value = cast (int) get_as (value, float64);

    case "Single"; #through;
    case "Double";
        result.float_value = get_as (value, float64);

    case "String";
        result.str_value = get_as (value, string);

    case "PropertyKey";
        obj := get_as (value, JSON_Object);

        result.property_key.fmtid = JsonGet (*obj, "Fmtid", string);
        result.property_key.pid = cast (u32) JsonGet (*obj, "Pid", float64);

    case;
        assert (false, "Invalid ValueType %", value_type);
    }

    AddConstant (module, result);
}

ParseTypeDefinition :: (module : *Module, typedef : *JSON_Object)
{
    result := New (Win32TypeDefinition);
    ParseTypeDefinition (module, result, typedef);

    AddTypeDefinition (module, result);
}

ParseTypeDefinition :: (module : *Module, result : *Win32TypeDefinition, typedef : *JSON_Object)
{
    name := JsonGet (typedef, "Name", string);
    architectures := JsonGet (typedef, "Architectures", []JSON_Value);
    platform := JsonGet (typedef, "Platform", string, allow_null = true);
    kind := JsonGet (typedef, "Kind", string);

    result.name = name;
    StringToEnumValue (*result.kind, kind);
    ParseJsonArrayAsEnumFlags (*result.architectures, architectures);
    result.platform = platform;

    if kind ==
    {
    case "NativeTypedef";

        result.also_usable_for = JsonGet (typedef, "AlsoUsableFor", string, allow_null = true);
        result.free_func = JsonGet (typedef, "FreeFunc", string, allow_null = true);

        def := JsonGet (typedef, "Def", JSON_Object);
        ParseType (module, *result.def, *def);

    case "Enum";
        result.flags = JsonGet (typedef, "Flags", bool);
        result.scoped = JsonGet (typedef, "Scoped", bool);

        integer_base := JsonGet (typedef, "IntegerBase", string, allow_null = true);
        if integer_base
            StringToEnumValue (*result.integer_base, integer_base);

        values := JsonGet (typedef, "Values", []JSON_Value);
        if values.count > 0
            result.values = NewArray (values.count, Win32EnumValue);

        for values
        {
            result.values[it_index].name = JsonGet (it, "Name", string);
            result.values[it_index].value = cast (int) JsonGet (it, "Value", float64);
        }

    case "Union"; #through;
    case "Struct";
        result.packing_size = cast (int) JsonGet (typedef, "PackingSize", float);
        fields := JsonGet (typedef, "Fields", []JSON_Value);

        if fields.count > 0
            result.fields = NewArray (fields.count, Win32StructField);

        for fields
        {
            result.fields[it_index].name = JsonGet (it, "Name", string);

            type := JsonGet (it, "Type", JSON_Object);
            ParseType (module, *result.fields[it_index].type, *type);

            attrs := JsonGet (it, "Attrs", []JSON_Value);
            ParseJsonArrayAsEnumFlags (*result.fields[it_index].attrs, attrs);
        }

        nested_types := JsonGet (typedef, "NestedTypes", []JSON_Value);
        if nested_types.count > 0
            result.nested_types = NewArray (nested_types.count, Win32TypeDefinition);

        for nested_types
        {
            obj := get_as (it, JSON_Object);
            ParseTypeDefinition (module, *result.nested_types[it_index], *obj);
        }

    case "FunctionPointer";
        ParseFunctionType (module, *result.function_pointer, typedef);

    case "Com";
        result.guid = JsonGet (typedef, "Guid", string);

        interface_type : *JSON_Object;
        {
            val := JsonGet (typedef, "Interface");
            if val.type == .OBJECT
                interface_type = val.object;
        }

        if interface_type
            ParseType (module, *result.interface_type, interface_type);

        methods := JsonGet (typedef, "Methods", []JSON_Value);

        if methods.count != 0
            result.methods = NewArray (methods.count, Win32Method);

        for methods
        {
            result.methods[it_index].name = JsonGet (it, "Name", string);

            architectures := JsonGet (it, "Architectures", []JSON_Value);
            ParseJsonArrayAsEnumFlags (*result.methods[it_index].architectures, architectures);

            result.methods[it_index].platform = JsonGet (it, "Platform", string, allow_null = true);

            ParseFunctionType (module, *result.methods[it_index], it.object);
        }

    case "ComClassID";
        result.guid = JsonGet (typedef, "Guid", string);

    case;
        assert (false, "Invalid type def kind %", kind);
    }
}

ParseFunctionType :: (module : *Module, target : *Win32FunctionType, func : *JSON_Object)
{
    target.sets_last_error = JsonGet (func, "SetLastError", bool);

    return_type := JsonGet (func, "ReturnType", JSON_Object);
    ParseType (module, *target.return_type, *return_type);

    return_attrs := JsonGet (func, "ReturnAttrs", []JSON_Value);
    ParseJsonArrayAsEnumFlags (*target.return_attrs, return_attrs);

    attrs := JsonGet (func, "Attrs", []JSON_Value);
    ParseJsonArrayAsEnumFlags (*target.attrs, attrs);

    params := JsonGet (func, "Params", []JSON_Value);
    if params.count > 0
        target.params = NewArray (params.count, Win32FunctionParam);

    for params
    {
        target.params[it_index].name = JsonGet (it, "Name", string);

        type := JsonGet (it, "Type", JSON_Object);
        ParseType (module, *target.params[it_index].type, *type);

        attrs := JsonGet (it, "Attrs", []JSON_Value);
        ParseJsonArrayAsEnumFlags (*target.params[it_index].attrs, attrs);
    }
}

ParseFunction :: (module : *Module, func : *JSON_Object)
{
    result := New (Win32Function);

    result.name = JsonGet (func, "Name", string);

    architectures := JsonGet (func, "Architectures", []JSON_Value);
    ParseJsonArrayAsEnumFlags (*result.architectures, architectures);

    result.platform = JsonGet (func, "Platform", string, allow_null = true);
    result.dll_import = JsonGet (func, "DllImport", string);

    ParseFunctionType (module, result, func);

    AddFunction (module, result);
}

ParseModule :: (module_name : string) -> *Module
{
    json_filename := sprint ("win32json/api/%.json", module_name);
    success, json_file := json_parse_file (json_filename);
    if !success
        return null;

    module := CreateInputModule (module_name);

    constants := JsonGet (json_file, "Constants", []JSON_Value);
    types := JsonGet (json_file, "Types", []JSON_Value);
    functions := JsonGet (json_file, "Functions", []JSON_Value);
    unicode_aliases := JsonGet (json_file, "UnicodeAliases", []JSON_Value);

    for constants
    {
        assert (it.type == .OBJECT);
        ParseConstant (module, it.object);
    }

    for types
    {
        assert (it.type == .OBJECT);
        ParseTypeDefinition (module, it.object);
    }

    for functions
    {
        assert (it.type == .OBJECT);
        ParseFunction (module, it.object);
    }

    module.unicode_aliases = NewArray (unicode_aliases.count, string);
    for unicode_aliases
        module.unicode_aliases[it_index] = get_as (it, string);

    return module;
}

JsonGet :: inline (val : JSON_Value, name : string, $T : Type, allow_null := false) -> T #must
{
    assert (val.type == .OBJECT);

    return JsonGet (val.object, name, T, allow_null);
}

JsonGet :: inline (obj : *JSON_Object, name : string, $T : Type, allow_null := false) -> T #must
{
    ptr := JsonGet (obj, name);

    #if T == JSON_Value
    {
        return <<ptr;
    }
    else
    {
        if ptr.type == .NULL
        {
            result : T;
            return result;
        }

        return get_as (ptr, T);
    }
}

JsonGet :: inline (val : JSON_Value, name : string) -> *JSON_Value #must
{
    assert (val.type == .OBJECT);

    return JsonGet (val.object, name);
}

JsonGet :: inline (obj : *JSON_Object, name : string) -> *JSON_Value #must
{
    ptr := table_find_pointer (obj, name);
    assert (ptr != null, "Could not find JSON member %", name);

    return ptr;
}

ParseJsonArrayAsEnumFlags :: ($T : Type, json : []JSON_Value) -> T #must
#modify { info := cast (*Type_Info_Enum) T; return info.type == .ENUM && (info.enum_type_flags | .FLAGS); }
{
    result : T;
    for json
    {
        if it.type != .STRING
            continue;

        result |= StringToEnumValue (T, it.str);
    }

    return result;
}

ParseJsonArrayAsEnumFlags :: (val : *$T, json : []JSON_Value)
#modify { info := cast (*Type_Info_Enum) T; return info.type == .ENUM && (info.enum_type_flags | .FLAGS); }
{
    val.* = ParseJsonArrayAsEnumFlags (T, json);
}

StringToEnumValue :: ($T : Type, str : string) -> T #must
#modify { return (cast (*Type_Info) T).type == .ENUM; }
{
    info := type_info (T);

    for info.names
    {
        if str == it
            return cast (T) info.values[it_index];
    }

    return cast (T) 0;
}

StringToEnumValue :: (val : *$T, str : string)
#modify { return (cast (*Type_Info) T).type == .ENUM; }
{
    val.* = StringToEnumValue (T, str);
}
