#module_parameters (UNICODE := true);

#load "Generated/all_modules.jai";

// For some reason this is not part of the metadata
GUID :: union
{
    Data1 : u32;
    Data2 : u16;
    Data3 : u16;
    Data4 : [8]u8;
}

#scope_file

// Simple assert that does not do anything fancy. Avoiding dependencies on Basic, etc.
assert :: (arg: bool, loc := #caller_location) {
    if arg return;

    if context.handling_assertion_failure  return;  // Avoid infinite loops.
	context.handling_assertion_failure = true;

    context.assertion_failed(loc, "Assertion failed.");
	context.handling_assertion_failure = false;
} @NoProfile

#scope_export

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

    assert (str.count == 36);

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
