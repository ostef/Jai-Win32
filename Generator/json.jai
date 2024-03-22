#import "Hash_Table";

JsonParser :: struct
{
    text : string;
    index : int;
}

JsonKind :: struct
{
    Invalid;
    Null;
    Boolean;
    Number;
    String;
    Array;
    Object;
}

JsonValue :: struct
{
    kind : JsonKind;
    union
    {
        bool_value : bool;
        struct
        {
            float_value : float64;

            s64_value : s64;
            #place s64_value;
            u64_value : u64;
        };
        string_value : string;
        array : []JsonValue;
        object : *JsonObject;
    };
}

JsonObject :: Table (string, JsonValue);

JsonSyntaxError :: (parser : *JsonParser, fmt_str : string, args : ..Any)
{
}
@PrintLike

JsonSkipWhitespace :: (parser : *JsonParser)
{
}

JsonParseValue :: (using parser : *JsonParser) -> JsonValue
{
    result : JsonValue;

    if JsonMatchAlphaNumeric (parser, "null")
    {
        result.kind = .Null;

        return result;
    }
    else if JsonMatchAlphaNumeric (parser, "true")
    {
        result.kind = .Boolean;
        result.bool_value = true;

        return result;
    }
    else if JsonMatchAlphaNumeric (parser, "false")
    {
        result.kind = .Boolean;
        result.bool_value = false;

        return result;
    }
    else if text[index] == #char "\""
    {
        result = JsonParseString (parser);

        return result;
    }
    else if text[index] == #char "["
    {
        result = JsonParseArray (parser);

        return result;
    }
    else if text[index] == #char "{"
    {
        result = JsonParseObject (parser);

        return result;
    }
    else if is_digit (text[index])
    {
        result = JsonParseNumber (parser);

        return result;
    }

    return result; // Invalid
}

JsonParseArray :: (using parser : *JsonParser) -> JsonValue
{
    array : []JsonValue;

    JsonSkipWhitespace (parser);

    while true
    {
        value := JsonParseValue (parser);
        JsonSkipWhitespace (parser);

        if text[index] != #char ","
            break;
    }

    if text[index] != #char "]"
        JsonSyntaxError (parser, "Expected ']'");

    index += 1;

    JsonParserAdvance (parser);

    result : JsonValue;
    result.kind = .Array;
    result.array = array;

    return result;
}
