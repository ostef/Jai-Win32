// This file was auto generated


// Constants

CP_ACP :: 0;
CP_DIRECT :: 2;
CP_HWND :: 0;
CP_LEVEL :: 3;
CP_MACCP :: 2;
CP_NONE :: 0;
CP_OEMCP :: 1;
CP_OPEN :: 1;
CP_RECTANGLE :: 1;
CP_REGION :: 2;
CP_SYMBOL :: 42;
CP_THREAD_ACP :: 3;
CP_UTF7 :: 65000;
CP_UTF8 :: 65001;
CP_WINANSI :: 1004;
CP_WINNEUTRAL :: 1200;
CP_WINUNICODE :: 1200;
FORMAT_MESSAGE_MAX_WIDTH_MASK :: 255;
IGNORE :: 0;
INFINITE :: 4294967295;
INVALID_HANDLE_VALUE :: cast, no_check (HANDLE) -1;
MAX_PATH :: 260;
STRICT :: 1;

// Types

ACL :: struct
{
    AclRevision : u8;
    Sbz1 : u8;
    AclSize : u16;
    AceCount : u16;
    Sbz2 : u16;
}

APP_LOCAL_DEVICE_ID :: struct
{
    value : [32]u8;
}

BOOL :: s32;

BOOLEAN :: u8;

BSTR :: *u16;

CHAR :: u8;

CONNECTDATA :: struct
{
    pUnk : *IUnknown;
    dwCookie : u32;
}

DECIMAL :: struct
{
    wReserved : u16;
    union
    {
        struct
        {
            scale : u8;
            sign : u8;
        }; // Anonymous
        signscale : u16;
    }; // Anonymous
    Hi32 : u32;
    union
    {
        struct
        {
            Lo32 : u32;
            Mid32 : u32;
        }; // Anonymous
        Lo64 : u64;
    }; // Anonymous
}

DUPLICATE_HANDLE_OPTIONS :: enum_flags u32
{
    DUPLICATE_CLOSE_SOURCE :: 1;
    DUPLICATE_SAME_ACCESS :: 2;
}

DUPLICATE_CLOSE_SOURCE :: 1;
DUPLICATE_SAME_ACCESS :: 2;

FARPROC :: #type () -> s64 #c_call;

FILETIME :: struct
{
    dwLowDateTime : u32;
    dwHighDateTime : u32;
}

FLOAT128 :: struct
{
    LowPart : s64;
    HighPart : s64;
}

FORMAT_MESSAGE_OPTIONS :: enum_flags u32
{
    FORMAT_MESSAGE_ALLOCATE_BUFFER :: 256;
    FORMAT_MESSAGE_ARGUMENT_ARRAY :: 8192;
    FORMAT_MESSAGE_FROM_HMODULE :: 2048;
    FORMAT_MESSAGE_FROM_STRING :: 1024;
    FORMAT_MESSAGE_FROM_SYSTEM :: 4096;
    FORMAT_MESSAGE_IGNORE_INSERTS :: 512;
}

FORMAT_MESSAGE_ALLOCATE_BUFFER :: 256;
FORMAT_MESSAGE_ARGUMENT_ARRAY :: 8192;
FORMAT_MESSAGE_FROM_HMODULE :: 2048;
FORMAT_MESSAGE_FROM_STRING :: 1024;
FORMAT_MESSAGE_FROM_SYSTEM :: 4096;
FORMAT_MESSAGE_IGNORE_INSERTS :: 512;

GENERIC_MAPPING :: struct
{
    GenericRead : u32;
    GenericWrite : u32;
    GenericExecute : u32;
    GenericAll : u32;
}

GROUP_AFFINITY :: struct
{
    Mask : u64;
    Group : u16;
    Reserved : [3]u16;
}

HANDLE :: *void;

HANDLE_FLAGS :: enum_flags u32
{
    INHERIT :: 1;
    PROTECT_FROM_CLOSE :: 2;
}

HANDLE_FLAG_INHERIT :: 1;
HANDLE_FLAG_PROTECT_FROM_CLOSE :: 2;

HANDLE_PTR :: u64;

HINSTANCE :: *void;

HLSURF__ :: struct
{
    unused : s32;
}

HRESULT :: s32;

HRSRC :: *void;

HSPRITE__ :: struct
{
    unused : s32;
}

HSTR__ :: struct
{
    unused : s32;
}

HUMPD__ :: struct
{
    unused : s32;
}

HWND :: *void;

IConnectionPoint_UUID :: "b196b286-bab4-101a-b69c-00aa00341d07";
IConnectionPoint :: struct
{
    UUID :: GUID.{0xb196b286,0xbab4,0x101a,.[0xb6,0x9c,0x0,0xaa,0x0,0x34,0x1d,0x7]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IConnectionPointVTable;

    GetConnectionInterface :: inline (this : *IConnectionPoint, pIID : *GUID) -> HRESULT #no_context { return this.vtable.GetConnectionInterface (this, pIID); }
    GetConnectionPointContainer :: inline (this : *IConnectionPoint, ppCPC : **IConnectionPointContainer) -> HRESULT #no_context { return this.vtable.GetConnectionPointContainer (this, ppCPC); }
    Advise :: inline (this : *IConnectionPoint, pUnkSink : *IUnknown, pdwCookie : *u32) -> HRESULT #no_context { return this.vtable.Advise (this, pUnkSink, pdwCookie); }
    Unadvise :: inline (this : *IConnectionPoint, dwCookie : u32) -> HRESULT #no_context { return this.vtable.Unadvise (this, dwCookie); }
    EnumConnections :: inline (this : *IConnectionPoint, ppEnum : **IEnumConnections) -> HRESULT #no_context { return this.vtable.EnumConnections (this, ppEnum); }
}

IConnectionPointVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    GetConnectionInterface : (this : *IConnectionPoint, pIID : *GUID) -> HRESULT #cpp_method;
    GetConnectionPointContainer : (this : *IConnectionPoint, ppCPC : **IConnectionPointContainer) -> HRESULT #cpp_method;
    Advise : (this : *IConnectionPoint, pUnkSink : *IUnknown, pdwCookie : *u32) -> HRESULT #cpp_method;
    Unadvise : (this : *IConnectionPoint, dwCookie : u32) -> HRESULT #cpp_method;
    EnumConnections : (this : *IConnectionPoint, ppEnum : **IEnumConnections) -> HRESULT #cpp_method;
}

IConnectionPointContainer_UUID :: "b196b284-bab4-101a-b69c-00aa00341d07";
IConnectionPointContainer :: struct
{
    UUID :: GUID.{0xb196b284,0xbab4,0x101a,.[0xb6,0x9c,0x0,0xaa,0x0,0x34,0x1d,0x7]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IConnectionPointContainerVTable;

    EnumConnectionPoints :: inline (this : *IConnectionPointContainer, ppEnum : **IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.EnumConnectionPoints (this, ppEnum); }
    FindConnectionPoint :: inline (this : *IConnectionPointContainer, riid : *GUID, ppCP : **IConnectionPoint) -> HRESULT #no_context { return this.vtable.FindConnectionPoint (this, riid, ppCP); }
}

IConnectionPointContainerVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    EnumConnectionPoints : (this : *IConnectionPointContainer, ppEnum : **IEnumConnectionPoints) -> HRESULT #cpp_method;
    FindConnectionPoint : (this : *IConnectionPointContainer, riid : *GUID, ppCP : **IConnectionPoint) -> HRESULT #cpp_method;
}

IEnumConnectionPoints_UUID :: "b196b285-bab4-101a-b69c-00aa00341d07";
IEnumConnectionPoints :: struct
{
    UUID :: GUID.{0xb196b285,0xbab4,0x101a,.[0xb6,0x9c,0x0,0xaa,0x0,0x34,0x1d,0x7]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IEnumConnectionPointsVTable;

    Next :: inline (this : *IEnumConnectionPoints, cConnections : u32, ppCP : **IConnectionPoint, pcFetched : *u32) -> HRESULT #no_context { return this.vtable.Next (this, cConnections, ppCP, pcFetched); }
    Skip :: inline (this : *IEnumConnectionPoints, cConnections : u32) -> HRESULT #no_context { return this.vtable.Skip (this, cConnections); }
    Reset :: inline (this : *IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.Reset (this); }
    Clone :: inline (this : *IEnumConnectionPoints, ppEnum : **IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.Clone (this, ppEnum); }
}

IEnumConnectionPointsVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    Next : (this : *IEnumConnectionPoints, cConnections : u32, ppCP : **IConnectionPoint, pcFetched : *u32) -> HRESULT #cpp_method;
    Skip : (this : *IEnumConnectionPoints, cConnections : u32) -> HRESULT #cpp_method;
    Reset : (this : *IEnumConnectionPoints) -> HRESULT #cpp_method;
    Clone : (this : *IEnumConnectionPoints, ppEnum : **IEnumConnectionPoints) -> HRESULT #cpp_method;
}

IEnumConnections_UUID :: "b196b287-bab4-101a-b69c-00aa00341d07";
IEnumConnections :: struct
{
    UUID :: GUID.{0xb196b287,0xbab4,0x101a,.[0xb6,0x9c,0x0,0xaa,0x0,0x34,0x1d,0x7]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IEnumConnectionsVTable;

    Next :: inline (this : *IEnumConnections, cConnections : u32, rgcd : *CONNECTDATA, pcFetched : *u32) -> HRESULT #no_context { return this.vtable.Next (this, cConnections, rgcd, pcFetched); }
    Skip :: inline (this : *IEnumConnections, cConnections : u32) -> HRESULT #no_context { return this.vtable.Skip (this, cConnections); }
    Reset :: inline (this : *IEnumConnections) -> HRESULT #no_context { return this.vtable.Reset (this); }
    Clone :: inline (this : *IEnumConnections, ppEnum : **IEnumConnections) -> HRESULT #no_context { return this.vtable.Clone (this, ppEnum); }
}

IEnumConnectionsVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    Next : (this : *IEnumConnections, cConnections : u32, rgcd : *CONNECTDATA, pcFetched : *u32) -> HRESULT #cpp_method;
    Skip : (this : *IEnumConnections, cConnections : u32) -> HRESULT #cpp_method;
    Reset : (this : *IEnumConnections) -> HRESULT #cpp_method;
    Clone : (this : *IEnumConnections, ppEnum : **IEnumConnections) -> HRESULT #cpp_method;
}

IMalloc_UUID :: "00000002-0000-0000-c000-000000000046";
IMalloc :: struct
{
    UUID :: GUID.{0x2,0x0,0x0,.[0xc0,0x0,0x0,0x0,0x0,0x0,0x0,0x46]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IMallocVTable;

    Alloc :: inline (this : *IMalloc, cb : u64) -> *void #no_context { return this.vtable.Alloc (this, cb); }
    Realloc :: inline (this : *IMalloc, pv : *void, cb : u64) -> *void #no_context { return this.vtable.Realloc (this, pv, cb); }
    Free :: inline (this : *IMalloc, pv : *void) #no_context { this.vtable.Free (this, pv); }
    GetSize :: inline (this : *IMalloc, pv : *void) -> u64 #no_context { return this.vtable.GetSize (this, pv); }
    DidAlloc :: inline (this : *IMalloc, pv : *void) -> s32 #no_context { return this.vtable.DidAlloc (this, pv); }
    HeapMinimize :: inline (this : *IMalloc) #no_context { this.vtable.HeapMinimize (this); }
}

IMallocVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    Alloc : (this : *IMalloc, cb : u64) -> *void #cpp_method;
    Realloc : (this : *IMalloc, pv : *void, cb : u64) -> *void #cpp_method;
    Free : (this : *IMalloc, pv : *void) #cpp_method;
    GetSize : (this : *IMalloc, pv : *void) -> u64 #cpp_method;
    DidAlloc : (this : *IMalloc, pv : *void) -> s32 #cpp_method;
    HeapMinimize : (this : *IMalloc) #cpp_method;
}

ISequentialStream_UUID :: "0c733a30-2a1c-11ce-ade5-00aa0044773d";
ISequentialStream :: struct
{
    UUID :: GUID.{0xc733a30,0x2a1c,0x11ce,.[0xad,0xe5,0x0,0xaa,0x0,0x44,0x77,0x3d]};

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *ISequentialStreamVTable;

    Read :: inline (this : *ISequentialStream, pv : *void, cb : u32, pcbRead : *u32) -> HRESULT #no_context { return this.vtable.Read (this, pv, cb, pcbRead); }
    Write :: inline (this : *ISequentialStream, pv : *void, cb : u32, pcbWritten : *u32) -> HRESULT #no_context { return this.vtable.Write (this, pv, cb, pcbWritten); }
}

ISequentialStreamVTable :: struct
{
    #as using, except (.["base"]) base : IUnknownVTable;

    Read : (this : *ISequentialStream, pv : *void, cb : u32, pcbRead : *u32) -> HRESULT #cpp_method;
    Write : (this : *ISequentialStream, pv : *void, cb : u32, pcbWritten : *u32) -> HRESULT #cpp_method;
}

IStream_UUID :: "0000000c-0000-0000-c000-000000000046";
IStream :: struct
{
    UUID :: GUID.{0xc,0x0,0x0,.[0xc0,0x0,0x0,0x0,0x0,0x0,0x0,0x46]};

    #as using, except (.["vtable", "base", "UUID"]) base : ISequentialStream;

    #place base;
    vtable : *IStreamVTable;

    Seek :: inline (this : *IStream, dlibMove : LARGE_INTEGER, dwOrigin : STREAM_SEEK, plibNewPosition : *ULARGE_INTEGER) -> HRESULT #no_context { return this.vtable.Seek (this, dlibMove, dwOrigin, plibNewPosition); }
    SetSize :: inline (this : *IStream, libNewSize : ULARGE_INTEGER) -> HRESULT #no_context { return this.vtable.SetSize (this, libNewSize); }
    CopyTo :: inline (this : *IStream, pstm : *IStream, cb : ULARGE_INTEGER, pcbRead : *ULARGE_INTEGER, pcbWritten : *ULARGE_INTEGER) -> HRESULT #no_context { return this.vtable.CopyTo (this, pstm, cb, pcbRead, pcbWritten); }
    Commit :: inline (this : *IStream, grfCommitFlags : u32) -> HRESULT #no_context { return this.vtable.Commit (this, grfCommitFlags); }
    Revert :: inline (this : *IStream) -> HRESULT #no_context { return this.vtable.Revert (this); }
    LockRegion :: inline (this : *IStream, libOffset : ULARGE_INTEGER, cb : ULARGE_INTEGER, dwLockType : u32) -> HRESULT #no_context { return this.vtable.LockRegion (this, libOffset, cb, dwLockType); }
    UnlockRegion :: inline (this : *IStream, libOffset : ULARGE_INTEGER, cb : ULARGE_INTEGER, dwLockType : u32) -> HRESULT #no_context { return this.vtable.UnlockRegion (this, libOffset, cb, dwLockType); }
    Stat :: inline (this : *IStream, pstatstg : *STATSTG, grfStatFlag : u32) -> HRESULT #no_context { return this.vtable.Stat (this, pstatstg, grfStatFlag); }
    Clone :: inline (this : *IStream, ppstm : **IStream) -> HRESULT #no_context { return this.vtable.Clone (this, ppstm); }
}

IStreamVTable :: struct
{
    #as using, except (.["base"]) base : ISequentialStreamVTable;

    Seek : (this : *IStream, dlibMove : LARGE_INTEGER, dwOrigin : STREAM_SEEK, plibNewPosition : *ULARGE_INTEGER) -> HRESULT #cpp_method;
    SetSize : (this : *IStream, libNewSize : ULARGE_INTEGER) -> HRESULT #cpp_method;
    CopyTo : (this : *IStream, pstm : *IStream, cb : ULARGE_INTEGER, pcbRead : *ULARGE_INTEGER, pcbWritten : *ULARGE_INTEGER) -> HRESULT #cpp_method;
    Commit : (this : *IStream, grfCommitFlags : u32) -> HRESULT #cpp_method;
    Revert : (this : *IStream) -> HRESULT #cpp_method;
    LockRegion : (this : *IStream, libOffset : ULARGE_INTEGER, cb : ULARGE_INTEGER, dwLockType : u32) -> HRESULT #cpp_method;
    UnlockRegion : (this : *IStream, libOffset : ULARGE_INTEGER, cb : ULARGE_INTEGER, dwLockType : u32) -> HRESULT #cpp_method;
    Stat : (this : *IStream, pstatstg : *STATSTG, grfStatFlag : u32) -> HRESULT #cpp_method;
    Clone : (this : *IStream, ppstm : **IStream) -> HRESULT #cpp_method;
}

IUnknown_UUID :: "00000000-0000-0000-c000-000000000046";
IUnknown :: struct
{
    UUID :: GUID.{0x0,0x0,0x0,.[0xc0,0x0,0x0,0x0,0x0,0x0,0x0,0x46]};

    vtable : *IUnknownVTable;

    QueryInterface :: inline (this : *IUnknown, riid : *GUID, ppvObject : **void) -> HRESULT #no_context { return this.vtable.QueryInterface (this, riid, ppvObject); }
    AddRef :: inline (this : *IUnknown) -> u32 #no_context { return this.vtable.AddRef (this); }
    Release :: inline (this : *IUnknown) -> u32 #no_context { return this.vtable.Release (this); }
}

IUnknownVTable :: struct
{
    QueryInterface : (this : *IUnknown, riid : *GUID, ppvObject : **void) -> HRESULT #cpp_method;
    AddRef : (this : *IUnknown) -> u32 #cpp_method;
    Release : (this : *IUnknown) -> u32 #cpp_method;
}

LARGE_INTEGER :: union
{
    struct
    {
        LowPart : u32;
        HighPart : s32;
    }; // Anonymous
    u : _u_e__Struct;
    QuadPart : s64;

    _u_e__Struct :: struct
    {
        LowPart : u32;
        HighPart : s32;
    }
}

LIST_ENTRY :: struct
{
    Flink : *LIST_ENTRY;
    Blink : *LIST_ENTRY;
}

LPARAM :: s64;

LRESULT :: s64;

LSTATUS :: s32;

LUID :: struct
{
    LowPart : u32;
    HighPart : s32;
}

LUID_AND_ATTRIBUTES :: struct
{
    Luid : LUID;
    Attributes : TOKEN_PRIVILEGES_ATTRIBUTES;
}

MULTI_BYTE_TO_WIDE_CHAR_FLAGS :: enum_flags u32
{
    MB_COMPOSITE :: 2;
    MB_ERR_INVALID_CHARS :: 8;
    MB_PRECOMPOSED :: 1;
    MB_USEGLYPHCHARS :: 4;
}

MB_COMPOSITE :: 2;
MB_ERR_INVALID_CHARS :: 8;
MB_PRECOMPOSED :: 1;
MB_USEGLYPHCHARS :: 4;

NEARPROC :: #type () -> s64 #c_call;

NTSTATUS :: s32;

PAPCFUNC :: #type (Parameter : u64) -> void #c_call;

POINT :: struct
{
    x : s32;
    y : s32;
}

POINTL :: struct
{
    x : s32;
    y : s32;
}

POINTS :: struct
{
    x : s16;
    y : s16;
}

PRIVILEGE_SET :: struct
{
    PrivilegeCount : u32;
    Control : u32;
    Privilege : *LUID_AND_ATTRIBUTES;
}

PROC :: #type () -> s64 #c_call;

PROCESSOR_NUMBER :: struct
{
    Group : u16;
    Number : u8;
    Reserved : u8;
}

PSID :: *void;

PSTR :: *u8;

PWSTR :: *u16;

RECT :: struct
{
    left : s32;
    top : s32;
    right : s32;
    bottom : s32;
}

RECTL :: struct
{
    left : s32;
    top : s32;
    right : s32;
    bottom : s32;
}

RTL_UMS_SCHEDULER_REASON :: enum s32
{
    UmsSchedulerStartup :: 0;
    UmsSchedulerThreadBlocked :: 1;
    UmsSchedulerThreadYield :: 2;
}

UmsSchedulerStartup :: 0;
UmsSchedulerThreadBlocked :: 1;
UmsSchedulerThreadYield :: 2;

SECURITY_ATTRIBUTES :: struct
{
    nLength : u32;
    lpSecurityDescriptor : *void;
    bInheritHandle : BOOL;
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

SHANDLE_PTR :: s64;

SID :: struct
{
    Revision : u8;
    SubAuthorityCount : u8;
    IdentifierAuthority : SID_IDENTIFIER_AUTHORITY;
    SubAuthority : *u32;
}

SID_IDENTIFIER_AUTHORITY :: struct
{
    Value : [6]u8;
}

SIZE :: struct
{
    cx : s32;
    cy : s32;
}

SLIST_ENTRY :: struct
{
    Next : *SLIST_ENTRY;
}

SLIST_HEADER :: union
{
    struct
    {
        Alignment : u64;
        Region : u64;
    }; // Anonymous
    HeaderX64 : _HeaderX64_e__Struct;

    _HeaderX64_e__Struct :: struct
    {
        _bitfield1 : u64;
        _bitfield2 : u64;
    }
}

STATSTG :: struct
{
    pwcsName : PWSTR;
    type : u32;
    cbSize : ULARGE_INTEGER;
    mtime : FILETIME;
    ctime : FILETIME;
    atime : FILETIME;
    grfMode : u32;
    grfLocksSupported : u32;
    clsid : GUID;
    grfStateBits : u32;
    reserved : u32;
}

STD_HANDLE :: enum u32
{
    STD_INPUT_HANDLE :: 4294967286;
    STD_OUTPUT_HANDLE :: 4294967285;
    STD_ERROR_HANDLE :: 4294967284;
}

STD_INPUT_HANDLE :: 4294967286;
STD_OUTPUT_HANDLE :: 4294967285;
STD_ERROR_HANDLE :: 4294967284;

STREAM_SEEK :: enum u32
{
    SET :: 0;
    CUR :: 1;
    END :: 2;
}

STREAM_SEEK_SET :: 0;
STREAM_SEEK_CUR :: 1;
STREAM_SEEK_END :: 2;

SYSTEMTIME :: struct
{
    wYear : u16;
    wMonth : u16;
    wDayOfWeek : u16;
    wDay : u16;
    wHour : u16;
    wMinute : u16;
    wSecond : u16;
    wMilliseconds : u16;
}

TOKEN_ACCESS_MASK :: enum_flags u32
{
    TOKEN_DELETE :: 65536;
    TOKEN_READ_CONTROL :: 131072;
    TOKEN_WRITE_DAC :: 262144;
    TOKEN_WRITE_OWNER :: 524288;
    TOKEN_ACCESS_SYSTEM_SECURITY :: 16777216;
    TOKEN_ASSIGN_PRIMARY :: 1;
    TOKEN_DUPLICATE :: 2;
    TOKEN_IMPERSONATE :: 4;
    TOKEN_QUERY :: 8;
    TOKEN_QUERY_SOURCE :: 16;
    TOKEN_ADJUST_PRIVILEGES :: 32;
    TOKEN_ADJUST_GROUPS :: 64;
    TOKEN_ADJUST_DEFAULT :: 128;
    TOKEN_ADJUST_SESSIONID :: 256;
    TOKEN_ALL_ACCESS :: 983295;
}

TOKEN_DELETE :: 65536;
TOKEN_READ_CONTROL :: 131072;
TOKEN_WRITE_DAC :: 262144;
TOKEN_WRITE_OWNER :: 524288;
TOKEN_ACCESS_SYSTEM_SECURITY :: 16777216;
TOKEN_ASSIGN_PRIMARY :: 1;
TOKEN_DUPLICATE :: 2;
TOKEN_IMPERSONATE :: 4;
TOKEN_QUERY :: 8;
TOKEN_QUERY_SOURCE :: 16;
TOKEN_ADJUST_PRIVILEGES :: 32;
TOKEN_ADJUST_GROUPS :: 64;
TOKEN_ADJUST_DEFAULT :: 128;
TOKEN_ADJUST_SESSIONID :: 256;
TOKEN_ALL_ACCESS :: 983295;

TOKEN_PRIVILEGES_ATTRIBUTES :: enum_flags u32
{
    SE_PRIVILEGE_ENABLED :: 2;
    SE_PRIVILEGE_ENABLED_BY_DEFAULT :: 1;
    SE_PRIVILEGE_REMOVED :: 4;
    SE_PRIVILEGE_USED_FOR_ACCESS :: 2147483648;
}

SE_PRIVILEGE_ENABLED :: 2;
SE_PRIVILEGE_ENABLED_BY_DEFAULT :: 1;
SE_PRIVILEGE_REMOVED :: 4;
SE_PRIVILEGE_USED_FOR_ACCESS :: 2147483648;

ULARGE_INTEGER :: union
{
    struct
    {
        LowPart : u32;
        HighPart : u32;
    }; // Anonymous
    u : _u_e__Struct;
    QuadPart : u64;

    _u_e__Struct :: struct
    {
        LowPart : u32;
        HighPart : u32;
    }
}

UNICODE_STRING :: struct
{
    Length : u16;
    MaximumLength : u16;
    Buffer : PWSTR; // NotNullTerminated
}

WIN32_ERROR :: u32;

WPARAM :: u64;

// Functions

CloseHandle :: (hObject : HANDLE) -> BOOL #foreign KERNEL32;
DuplicateHandle :: (hSourceProcessHandle : HANDLE, hSourceHandle : HANDLE, hTargetProcessHandle : HANDLE, lpTargetHandle : *HANDLE, dwDesiredAccess : u32, bInheritHandle : BOOL, dwOptions : DUPLICATE_HANDLE_OPTIONS) -> BOOL #foreign KERNEL32;
FormatMessageA :: (dwFlags : FORMAT_MESSAGE_OPTIONS, lpSource : *void, dwMessageId : u32, dwLanguageId : u32, lpBuffer : PSTR, nSize : u32, Arguments : **s8) -> u32 #foreign KERNEL32;
FormatMessageW :: (dwFlags : FORMAT_MESSAGE_OPTIONS, lpSource : *void, dwMessageId : u32, dwLanguageId : u32, lpBuffer : PWSTR, nSize : u32, Arguments : **s8) -> u32 #foreign KERNEL32;
GetComputerNameA :: (lpBuffer : *u8, nSize : *u32) -> BOOL #foreign KERNEL32;
GetComputerNameW :: (lpBuffer : *u16, nSize : *u32) -> BOOL #foreign KERNEL32;
GetHandleInformation :: (hObject : HANDLE, lpdwFlags : *u32) -> BOOL #foreign KERNEL32;
GetLastError :: () -> WIN32_ERROR #foreign KERNEL32;
GetModuleFileNameA :: (hModule : HINSTANCE, lpFilename : *u8, nSize : u32) -> u32 #foreign KERNEL32;
GetModuleFileNameW :: (hModule : HINSTANCE, lpFilename : *u16, nSize : u32) -> u32 #foreign KERNEL32;
GetModuleHandleA :: (lpModuleName : PSTR) -> HINSTANCE #foreign KERNEL32;
GetModuleHandleW :: (lpModuleName : PWSTR) -> HINSTANCE #foreign KERNEL32;
GetStdHandle :: (nStdHandle : STD_HANDLE) -> HANDLE #foreign KERNEL32;
GetUserNameA :: (lpBuffer : *u8, pcbBuffer : *u32) -> BOOL #foreign ADVAPI32;
GetUserNameW :: (lpBuffer : *u16, pcbBuffer : *u32) -> BOOL #foreign ADVAPI32;
IsValidCodePage :: (CodePage : u32) -> BOOL #foreign KERNEL32;
MultiByteToWideChar :: (CodePage : u32, dwFlags : MULTI_BYTE_TO_WIDE_CHAR_FLAGS, lpMultiByteStr : *u8, cbMultiByte : s32, lpWideCharStr : *u16, cchWideChar : s32) -> s32 #foreign KERNEL32;
QueryPerformanceCounter :: (lpPerformanceCount : *LARGE_INTEGER) -> BOOL #foreign KERNEL32;
QueryPerformanceFrequency :: (lpFrequency : *LARGE_INTEGER) -> BOOL #foreign KERNEL32;
RtlNtStatusToDosError :: (Status : NTSTATUS) -> u32 #foreign ntdll;
SetHandleInformation :: (hObject : HANDLE, dwMask : u32, dwFlags : HANDLE_FLAGS) -> BOOL #foreign KERNEL32;
SetLastError :: (dwErrCode : WIN32_ERROR)  #foreign KERNEL32;
SetLastErrorEx :: (dwErrCode : WIN32_ERROR, dwType : u32)  #foreign USER32;
SetStdHandle :: (nStdHandle : STD_HANDLE, hHandle : HANDLE) -> BOOL #foreign KERNEL32;
SetStdHandleEx :: (nStdHandle : STD_HANDLE, hHandle : HANDLE, phPrevValue : *HANDLE) -> BOOL #foreign KERNEL32;
SysAddRefString :: (bstrString : BSTR) -> HRESULT #foreign OLEAUT32;
SysAllocString :: (psz : PWSTR) -> BSTR #foreign OLEAUT32;
SysAllocStringByteLen :: (psz : PSTR, len : u32) -> BSTR #foreign OLEAUT32;
SysAllocStringLen :: (strIn : *u16, ui : u32) -> BSTR #foreign OLEAUT32;
SysFreeString :: (bstrString : BSTR)  #foreign OLEAUT32;
SysReAllocString :: (pbstr : *BSTR, psz : PWSTR) -> s32 #foreign OLEAUT32;
SysReAllocStringLen :: (pbstr : *BSTR, psz : PWSTR, len : u32) -> s32 #foreign OLEAUT32;
SysReleaseString :: (bstrString : BSTR)  #foreign OLEAUT32;
SysStringByteLen :: (bstr : BSTR) -> u32 #foreign OLEAUT32;
SysStringLen :: (pbstr : BSTR) -> u32 #foreign OLEAUT32;
WideCharToMultiByte :: (CodePage : u32, dwFlags : u32, lpWideCharStr : *u16, cchWideChar : s32, lpMultiByteStr : PSTR, cbMultiByte : s32, lpDefaultChar : PSTR, lpUsedDefaultChar : *s32) -> s32 #foreign KERNEL32;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";
ADVAPI32 :: #system_library "ADVAPI32";
ntdll :: #system_library "ntdll";
USER32 :: #system_library "USER32";
OLEAUT32 :: #system_library "OLEAUT32";

#scope_export

// The following stuff was hand-written to be automatically
// copy-pasted here, because it is not present in the metadata

HIWORD :: inline (wparam: WPARAM) -> s16 #must #no_context
{
    return cast, no_check (s16) ((cast, no_check (s32) (wparam) >> 16) & 0xffff);
}

LOWORD :: inline (wparam: WPARAM) -> s16 #must #no_context
{
    return cast, no_check (s16) (wparam);
}

HIWORD :: inline (lparam: LPARAM) -> s16 #must #no_context
{
    return cast, no_check (s16) ((cast, no_check (s32) (lparam) >> 16) & 0xffff);
}

LOWORD :: inline (lparam: LPARAM) -> s16 #must #no_context
{
    return cast, no_check (s16) (lparam);
}

MAKELANGID :: inline (p : u16, s : u16) -> u16 #must #no_context
{
    return (s << 10) | p;
}

HRESULT_CODE :: inline (val : HRESULT) -> u32 #must #no_context
{
    return cast, no_check (u32) val & 0xffff;
}

HRESULT_FACILITY :: inline (val : HRESULT) -> u32 #must #no_context
{
    return cast, no_check (u32) (val << 16) & 0x1fff;
}

HRESULT_SEVERITY :: inline (val : HRESULT) -> u32 #must #no_context
{
    return cast, no_check (u32) (val >> 31) & 0x1;
}

FAILED :: inline (val : HRESULT) -> bool #must #no_context
{
    return val < 0;
}

SUCCEEDED :: inline (val : HRESULT) -> bool #must #no_context
{
    return val >= 0;
}

SafeRelease :: inline (obj : *IUnknown) #no_context
{
    if obj
        obj.Release (obj);
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
    // Simple assert that does not do anything fancy. Avoiding dependencies on Basic, etc.
    assert :: (arg: bool, loc := #caller_location) {
        if arg return;

        if context.handling_assertion_failure  return;  // Avoid infinite loops.
        context.handling_assertion_failure = true;

        context.assertion_failed(loc, "Assertion failed.");
        context.handling_assertion_failure = false;
    } @NoProfile

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

operator == :: (a : RECT, b : RECT) -> bool #must #no_context
{
    return a.left == b.left && a.top == b.top && a.right == b.right && a.bottom == b.bottom;
}

operator == :: (a : RECTL, b : RECTL) -> bool #must #no_context
{
    return a.left == b.left && a.top == b.top && a.right == b.right && a.bottom == b.bottom;
}

// The result is null terminated even though a Jai string is returned
WideToUtf8 :: (data : *u16) -> string #must, success : bool
{
    result_length := WideCharToMultiByte (CP_UTF8, 0, data, -1, null, 0, null, null);
    if result_length <= 0
        return "", false;

    utf8_data := cast (*u8) context.allocator.proc (.ALLOCATE, result_length, 0, null, context.allocator.data);

    written := WideCharToMultiByte (CP_UTF8, 0, data, -1, utf8_data, result_length, null, null);
    if written > 0
    {
        str : string = ---;
        str.data  = utf8_data;
        str.count = written - 1;

        return str, true;
    }

    return "", false;
}

// The result is null terminated
Utf8ToWide :: (utf8_str : string) -> wide_str : *u16 #must, length : s32
{
    if !utf8_str
    {
        wide_str := cast (*u16) context.allocator.proc (.ALLOCATE, size_of (u16), 0, null, context.allocator.data);
        wide_str[0] = 0;

        return wide_str, 0;
    }

    result_length := MultiByteToWideChar (CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, null, 0);
    if result_length <= 0
        return null, 0;

    wide_str := cast (*u16) context.allocator.proc (.ALLOCATE, (result_length + 1) * size_of (u16), 0, null, context.allocator.data);
    written := MultiByteToWideChar (CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, wide_str, result_length);
    if written > 0
    {
        wide_str[written] = 0;

        return wide_str, written;
    }

    return null, 0;
}
