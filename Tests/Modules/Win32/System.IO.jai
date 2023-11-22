// This file was auto generated for module System.IO
// This module was generated partially, because it is a dependency of another module

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants


// Types

OVERLAPPED :: struct
{
    Internal : u64;
    InternalHigh : u64;
    Anonymous : _Anonymous_e__Union;
    hEvent : HANDLE;

    _Anonymous_e__Union :: union
    {
        Anonymous : _Anonymous_e__Struct;
        Pointer : *void;

        _Anonymous_e__Struct :: struct
        {
            Offset : u32;
            OffsetHigh : u32;
        }
    }
}

LPOVERLAPPED_COMPLETION_ROUTINE :: #type (dwErrorCode : u32, dwNumberOfBytesTransfered : u32, lpOverlapped : *OVERLAPPED) -> void #c_call;

// Functions


// Unicode aliases


// System libraries

#scope_file

