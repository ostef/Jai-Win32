#load "all_modules.jai";

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
