#module_parameters (UNICODE := true);

#load "Generated/all_modules.jai";

Guid :: union
{
    Ints : struct
    {
        a : u32;
        b : u16;
        c : u16;
        d : [8]u8;
    };
    Bytes : [16]u8;
}

PropertyKey :: struct
{
    Fmtid : Guid;
    Pid : u32;
}

#scope_module

MakeGUID :: (str : string) -> Guid #must
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

    offset := 0;

    a, adv := ParseHexInt (str, offset);
    offset += adv + 1;

    b:, adv = ParseHexInt (str, offset);
    offset += adv + 1;

    c:, adv = ParseHexInt (str, offset);
    offset += adv + 1;

    result := Guid.{ Ints = .{ a = xx a, b = xx b, c = xx c }};

    s := str;
    s.data += offset;
    s.count = 2;

    result.Ints.d[0] = xx ParseHexInt (s, 0);
    offset += 2;
    s.data += 2;

    result.Ints.d[1] = xx ParseHexInt (s, 0);
    offset += 3;

    for i : 2..7
    {
        s := str;
        s.data += offset;
        s.count = 2;

        result.Ints.d[i] = xx ParseHexInt (s, 0);
        offset += 2;
    }

    return result;
}

MakePropertyKey :: (fmtid : string, pid : u32) -> PropertyKey #must
{
    return .{ MakeGUID (fmtid), pid };
}

#scope_export
