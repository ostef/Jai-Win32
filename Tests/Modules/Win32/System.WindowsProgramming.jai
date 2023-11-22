// This file was auto generated for module System.WindowsProgramming
// This module was generated partially, because it is a dependency of another module

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants


// Types

OBJECT_ATTRIBUTES :: struct
{
    Length : u32;
    RootDirectory : HANDLE;
    ObjectName : *UNICODE_STRING;
    Attributes : u32;
    SecurityDescriptor : *void;
    SecurityQualityOfService : *void;
}

IO_STATUS_BLOCK :: struct
{
    Anonymous : _Anonymous_e__Union;
    Information : u64;

    _Anonymous_e__Union :: union
    {
        Status : NTSTATUS;
        Pointer : *void;
    }
}

// Functions


// Unicode aliases


// System libraries

#scope_file

