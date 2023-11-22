// This file was auto generated for module Security
// This module was generated partially, because it is a dependency of another module

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants


// Types

TOKEN_PRIVILEGES_ATTRIBUTES :: enum_flags u32
{
    SE_PRIVILEGE_ENABLED :: 2;
    SE_PRIVILEGE_ENABLED_BY_DEFAULT :: 1;
    SE_PRIVILEGE_REMOVED :: 4;
    SE_PRIVILEGE_USED_FOR_ACCESS :: 2147483648;
}

SECURITY_ATTRIBUTES :: struct
{
    nLength : u32;
    lpSecurityDescriptor : *void;
    bInheritHandle : BOOL;
}

GENERIC_MAPPING :: struct
{
    GenericRead : u32;
    GenericWrite : u32;
    GenericExecute : u32;
    GenericAll : u32;
}

LUID_AND_ATTRIBUTES :: struct
{
    Luid : LUID;
    Attributes : TOKEN_PRIVILEGES_ATTRIBUTES;
}

SID_IDENTIFIER_AUTHORITY :: struct
{
    Value : [6]u8;
}

SID :: struct
{
    Revision : u8;
    SubAuthorityCount : u8;
    IdentifierAuthority : SID_IDENTIFIER_AUTHORITY;
    SubAuthority : *u32;
}

ACL :: struct
{
    AclRevision : u8;
    Sbz1 : u8;
    AclSize : u16;
    AceCount : u16;
    Sbz2 : u16;
}

SECURITY_DESCRIPTOR :: struct
{
    Revision : u8;
    Sbz1 : u8;
    Control : u16;
    Owner : PSID;
    Group : PSID;
    Sacl : *ACL;
    Dacl : *ACL;
}

PRIVILEGE_SET :: struct
{
    PrivilegeCount : u32;
    Control : u32;
    Privilege : *LUID_AND_ATTRIBUTES;
}

// Functions


// Unicode aliases


// System libraries

#scope_file

