// This file was auto generated for module System.Memory

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);
#import "Win32/Security" (UNICODE);

// Constants

FILE_CACHE_MAX_HARD_ENABLE :: 1;
FILE_CACHE_MAX_HARD_DISABLE :: 2;
FILE_CACHE_MIN_HARD_ENABLE :: 4;
FILE_CACHE_MIN_HARD_DISABLE :: 8;
MEHC_PATROL_SCRUBBER_PRESENT :: 1;

// Types

FILE_MAP :: enum_flags u32
{
    FILE_MAP_WRITE :: 2;
    FILE_MAP_READ :: 4;
    FILE_MAP_ALL_ACCESS :: 983071;
    FILE_MAP_EXECUTE :: 32;
    FILE_MAP_COPY :: 1;
    FILE_MAP_RESERVE :: 2147483648;
    FILE_MAP_TARGETS_INVALID :: 1073741824;
    FILE_MAP_LARGE_PAGES :: 536870912;
}

HEAP_FLAGS :: enum_flags u32
{
    HEAP_NONE :: 0;
    HEAP_NO_SERIALIZE :: 1;
    HEAP_GROWABLE :: 2;
    HEAP_GENERATE_EXCEPTIONS :: 4;
    HEAP_ZERO_MEMORY :: 8;
    HEAP_REALLOC_IN_PLACE_ONLY :: 16;
    HEAP_TAIL_CHECKING_ENABLED :: 32;
    HEAP_FREE_CHECKING_ENABLED :: 64;
    HEAP_DISABLE_COALESCE_ON_FREE :: 128;
    HEAP_CREATE_ALIGN_16 :: 65536;
    HEAP_CREATE_ENABLE_TRACING :: 131072;
    HEAP_CREATE_ENABLE_EXECUTE :: 262144;
    HEAP_MAXIMUM_TAG :: 4095;
    HEAP_PSEUDO_TAG_FLAG :: 32768;
    HEAP_TAG_SHIFT :: 18;
    HEAP_CREATE_SEGMENT_HEAP :: 256;
    HEAP_CREATE_HARDENED :: 512;
}

PAGE_PROTECTION_FLAGS :: enum_flags u32
{
    PAGE_NOACCESS :: 1;
    PAGE_READONLY :: 2;
    PAGE_READWRITE :: 4;
    PAGE_WRITECOPY :: 8;
    PAGE_EXECUTE :: 16;
    PAGE_EXECUTE_READ :: 32;
    PAGE_EXECUTE_READWRITE :: 64;
    PAGE_EXECUTE_WRITECOPY :: 128;
    PAGE_GUARD :: 256;
    PAGE_NOCACHE :: 512;
    PAGE_WRITECOMBINE :: 1024;
    PAGE_GRAPHICS_NOACCESS :: 2048;
    PAGE_GRAPHICS_READONLY :: 4096;
    PAGE_GRAPHICS_READWRITE :: 8192;
    PAGE_GRAPHICS_EXECUTE :: 16384;
    PAGE_GRAPHICS_EXECUTE_READ :: 32768;
    PAGE_GRAPHICS_EXECUTE_READWRITE :: 65536;
    PAGE_GRAPHICS_COHERENT :: 131072;
    PAGE_GRAPHICS_NOCACHE :: 262144;
    PAGE_ENCLAVE_THREAD_CONTROL :: 2147483648;
    PAGE_REVERT_TO_FILE_MAP :: 2147483648;
    PAGE_TARGETS_NO_UPDATE :: 1073741824;
    PAGE_TARGETS_INVALID :: 1073741824;
    PAGE_ENCLAVE_UNVALIDATED :: 536870912;
    PAGE_ENCLAVE_MASK :: 268435456;
    PAGE_ENCLAVE_DECOMMIT :: 268435456;
    PAGE_ENCLAVE_SS_FIRST :: 268435457;
    PAGE_ENCLAVE_SS_REST :: 268435458;
    SEC_PARTITION_OWNER_HANDLE :: 262144;
    SEC_64K_PAGES :: 524288;
    SEC_FILE :: 8388608;
    SEC_IMAGE :: 16777216;
    SEC_PROTECTED_IMAGE :: 33554432;
    SEC_RESERVE :: 67108864;
    SEC_COMMIT :: 134217728;
    SEC_NOCACHE :: 268435456;
    SEC_WRITECOMBINE :: 1073741824;
    SEC_LARGE_PAGES :: 2147483648;
    SEC_IMAGE_NO_EXECUTE :: 285212672;
}

UNMAP_VIEW_OF_FILE_FLAGS :: enum u32
{
    MEM_UNMAP_NONE :: 0;
    MEM_UNMAP_WITH_TRANSIENT_BOOST :: 1;
    MEM_PRESERVE_PLACEHOLDER :: 2;
}

VIRTUAL_FREE_TYPE :: enum u32
{
    MEM_DECOMMIT :: 16384;
    MEM_RELEASE :: 32768;
}

VIRTUAL_ALLOCATION_TYPE :: enum_flags u32
{
    MEM_COMMIT :: 4096;
    MEM_RESERVE :: 8192;
    MEM_RESET :: 524288;
    MEM_RESET_UNDO :: 16777216;
    MEM_REPLACE_PLACEHOLDER :: 16384;
    MEM_LARGE_PAGES :: 536870912;
    MEM_RESERVE_PLACEHOLDER :: 262144;
    MEM_FREE :: 65536;
}

LOCAL_ALLOC_FLAGS :: enum_flags u32
{
    LHND :: 66;
    LMEM_FIXED :: 0;
    LMEM_MOVEABLE :: 2;
    LMEM_ZEROINIT :: 64;
    LPTR :: 64;
    NONZEROLHND :: 2;
    NONZEROLPTR :: 0;
}

GLOBAL_ALLOC_FLAGS :: enum_flags u32
{
    GHND :: 66;
    GMEM_FIXED :: 0;
    GMEM_MOVEABLE :: 2;
    GMEM_ZEROINIT :: 64;
    GPTR :: 64;
}

PAGE_TYPE :: enum_flags u32
{
    MEM_PRIVATE :: 131072;
    MEM_MAPPED :: 262144;
    MEM_IMAGE :: 16777216;
}

HeapHandle :: *void;

PROCESS_HEAP_ENTRY :: struct
{
    lpData : *void;
    cbData : u32;
    cbOverhead : u8;
    iRegionIndex : u8;
    wFlags : u16;
    Anonymous : _Anonymous_e__Union;

    _Anonymous_e__Union :: union
    {
        Block : _Block_e__Struct;
        Region : _Region_e__Struct;

        _Block_e__Struct :: struct
        {
            hMem : HANDLE;
            dwReserved : [3]u32;
        }

        _Region_e__Struct :: struct
        {
            dwCommittedSize : u32;
            dwUnCommittedSize : u32;
            lpFirstBlock : *void;
            lpLastBlock : *void;
        }
    }
}

HEAP_SUMMARY :: struct
{
    cb : u32;
    cbAllocated : u64;
    cbCommitted : u64;
    cbReserved : u64;
    cbMaxReserve : u64;
}

MEMORY_RESOURCE_NOTIFICATION_TYPE :: enum s32
{
    LowMemoryResourceNotification :: 0;
    HighMemoryResourceNotification :: 1;
}

WIN32_MEMORY_RANGE_ENTRY :: struct
{
    VirtualAddress : *void;
    NumberOfBytes : u64;
}

PBAD_MEMORY_CALLBACK_ROUTINE :: #type () -> void #c_call;

OFFER_PRIORITY :: enum s32
{
    VmOfferPriorityVeryLow :: 1;
    VmOfferPriorityLow :: 2;
    VmOfferPriorityBelowNormal :: 3;
    VmOfferPriorityNormal :: 4;
}

WIN32_MEMORY_INFORMATION_CLASS :: enum s32
{
    MemoryRegionInfo :: 0;
}

WIN32_MEMORY_REGION_INFORMATION :: struct
{
    AllocationBase : *void;
    AllocationProtect : u32;
    Anonymous : _Anonymous_e__Union;
    RegionSize : u64;
    CommitSize : u64;

    _Anonymous_e__Union :: union
    {
        Flags : u32;
        Anonymous : _Anonymous_e__Struct;

        _Anonymous_e__Struct :: struct
        {
            _bitfield : u32;
        }
    }
}

WIN32_MEMORY_PARTITION_INFORMATION_CLASS :: enum s32
{
    MemoryPartitionInfo :: 0;
    MemoryPartitionDedicatedMemoryInfo :: 1;
}

WIN32_MEMORY_PARTITION_INFORMATION :: struct
{
    Flags : u32;
    NumaNode : u32;
    Channel : u32;
    NumberOfNumaNodes : u32;
    ResidentAvailablePages : u64;
    CommittedPages : u64;
    CommitLimit : u64;
    PeakCommitment : u64;
    TotalNumberOfPages : u64;
    AvailablePages : u64;
    ZeroPages : u64;
    FreePages : u64;
    StandbyPages : u64;
    Reserved : [16]u64;
    MaximumCommitLimit : u64;
    Reserved2 : u64;
    PartitionId : u32;
}

MEMORY_BASIC_INFORMATION :: struct
{
    BaseAddress : *void;
    AllocationBase : *void;
    AllocationProtect : PAGE_PROTECTION_FLAGS;
    PartitionId : u16;
    RegionSize : u64;
    State : VIRTUAL_ALLOCATION_TYPE;
    Protect : PAGE_PROTECTION_FLAGS;
    Type : PAGE_TYPE;
}

MEMORY_BASIC_INFORMATION32 :: struct
{
    BaseAddress : u32;
    AllocationBase : u32;
    AllocationProtect : PAGE_PROTECTION_FLAGS;
    RegionSize : u32;
    State : VIRTUAL_ALLOCATION_TYPE;
    Protect : PAGE_PROTECTION_FLAGS;
    Type : PAGE_TYPE;
}

MEMORY_BASIC_INFORMATION64 :: struct
{
    BaseAddress : u64;
    AllocationBase : u64;
    AllocationProtect : PAGE_PROTECTION_FLAGS;
    __alignment1 : u32;
    RegionSize : u64;
    State : VIRTUAL_ALLOCATION_TYPE;
    Protect : PAGE_PROTECTION_FLAGS;
    Type : PAGE_TYPE;
    __alignment2 : u32;
}

CFG_CALL_TARGET_INFO :: struct
{
    Offset : u64;
    Flags : u64;
}

MEM_EXTENDED_PARAMETER_TYPE :: enum s32
{
    MemExtendedParameterInvalidType :: 0;
    MemExtendedParameterAddressRequirements :: 1;
    MemExtendedParameterNumaNode :: 2;
    MemExtendedParameterPartitionHandle :: 3;
    MemExtendedParameterUserPhysicalHandle :: 4;
    MemExtendedParameterAttributeFlags :: 5;
    MemExtendedParameterImageMachine :: 6;
    MemExtendedParameterMax :: 7;
}

MEM_EXTENDED_PARAMETER :: struct
{
    Anonymous1 : _Anonymous1_e__Struct;
    Anonymous2 : _Anonymous2_e__Union;

    _Anonymous2_e__Union :: union
    {
        ULong64 : u64;
        Pointer : *void;
        Size : u64;
        Handle : HANDLE;
        ULong : u32;
    }

    _Anonymous1_e__Struct :: struct
    {
        _bitfield : u64;
    }
}

HEAP_INFORMATION_CLASS :: enum s32
{
    HeapCompatibilityInformation :: 0;
    HeapEnableTerminationOnCorruption :: 1;
    HeapOptimizeResources :: 3;
    HeapTag :: 7;
}

PSECURE_MEMORY_CACHE_CALLBACK :: #type (Addr : *void, Range : u64) -> BOOLEAN #c_call;

// Functions

HeapCreate :: (flOptions : HEAP_FLAGS, dwInitialSize : u64, dwMaximumSize : u64) -> HeapHandle #foreign KERNEL32;
HeapDestroy :: (hHeap : HeapHandle) -> BOOL #foreign KERNEL32;
HeapAlloc :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS, dwBytes : u64) -> *void #foreign KERNEL32;
HeapReAlloc :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS, lpMem : *void, dwBytes : u64) -> *void #foreign KERNEL32;
HeapFree :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS, lpMem : *void) -> BOOL #foreign KERNEL32;
HeapSize :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS, lpMem : *void) -> u64 #foreign KERNEL32;
GetProcessHeap :: () -> HeapHandle #foreign KERNEL32;
HeapCompact :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS) -> u64 #foreign KERNEL32;
HeapSetInformation :: (_HeapHandle : HeapHandle, HeapInformationClass : HEAP_INFORMATION_CLASS, HeapInformation : *void, HeapInformationLength : u64) -> BOOL #foreign KERNEL32;
HeapValidate :: (hHeap : HeapHandle, dwFlags : HEAP_FLAGS, lpMem : *void) -> BOOL #foreign KERNEL32;
HeapSummary :: (hHeap : HANDLE, dwFlags : u32, lpSummary : *HEAP_SUMMARY) -> BOOL #foreign KERNEL32;
GetProcessHeaps :: (NumberOfHeaps : u32, ProcessHeaps : *HeapHandle) -> u32 #foreign KERNEL32;
HeapLock :: (hHeap : HeapHandle) -> BOOL #foreign KERNEL32;
HeapUnlock :: (hHeap : HeapHandle) -> BOOL #foreign KERNEL32;
HeapWalk :: (hHeap : HeapHandle, lpEntry : *PROCESS_HEAP_ENTRY) -> BOOL #foreign KERNEL32;
HeapQueryInformation :: (_HeapHandle : HeapHandle, HeapInformationClass : HEAP_INFORMATION_CLASS, HeapInformation : *void, HeapInformationLength : u64, ReturnLength : *u64) -> BOOL #foreign KERNEL32;
VirtualAlloc :: (lpAddress : *void, dwSize : u64, flAllocationType : VIRTUAL_ALLOCATION_TYPE, flProtect : PAGE_PROTECTION_FLAGS) -> *void #foreign KERNEL32;
VirtualProtect :: (lpAddress : *void, dwSize : u64, flNewProtect : PAGE_PROTECTION_FLAGS, lpflOldProtect : *PAGE_PROTECTION_FLAGS) -> BOOL #foreign KERNEL32;
VirtualFree :: (lpAddress : *void, dwSize : u64, dwFreeType : VIRTUAL_FREE_TYPE) -> BOOL #foreign KERNEL32;
VirtualQuery :: (lpAddress : *void, lpBuffer : *MEMORY_BASIC_INFORMATION, dwLength : u64) -> u64 #foreign KERNEL32;
VirtualAllocEx :: (hProcess : HANDLE, lpAddress : *void, dwSize : u64, flAllocationType : VIRTUAL_ALLOCATION_TYPE, flProtect : PAGE_PROTECTION_FLAGS) -> *void #foreign KERNEL32;
VirtualProtectEx :: (hProcess : HANDLE, lpAddress : *void, dwSize : u64, flNewProtect : PAGE_PROTECTION_FLAGS, lpflOldProtect : *PAGE_PROTECTION_FLAGS) -> BOOL #foreign KERNEL32;
VirtualQueryEx :: (hProcess : HANDLE, lpAddress : *void, lpBuffer : *MEMORY_BASIC_INFORMATION, dwLength : u64) -> u64 #foreign KERNEL32;
CreateFileMappingW :: (hFile : HANDLE, lpFileMappingAttributes : *SECURITY_ATTRIBUTES, flProtect : PAGE_PROTECTION_FLAGS, dwMaximumSizeHigh : u32, dwMaximumSizeLow : u32, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
OpenFileMappingW :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
MapViewOfFile :: (hFileMappingObject : HANDLE, dwDesiredAccess : FILE_MAP, dwFileOffsetHigh : u32, dwFileOffsetLow : u32, dwNumberOfBytesToMap : u64) -> *void #foreign KERNEL32;
MapViewOfFileEx :: (hFileMappingObject : HANDLE, dwDesiredAccess : FILE_MAP, dwFileOffsetHigh : u32, dwFileOffsetLow : u32, dwNumberOfBytesToMap : u64, lpBaseAddress : *void) -> *void #foreign KERNEL32;
VirtualFreeEx :: (hProcess : HANDLE, lpAddress : *void, dwSize : u64, dwFreeType : VIRTUAL_FREE_TYPE) -> BOOL #foreign KERNEL32;
FlushViewOfFile :: (lpBaseAddress : *void, dwNumberOfBytesToFlush : u64) -> BOOL #foreign KERNEL32;
UnmapViewOfFile :: (lpBaseAddress : *void) -> BOOL #foreign KERNEL32;
GetLargePageMinimum :: () -> u64 #foreign KERNEL32;
GetProcessWorkingSetSizeEx :: (hProcess : HANDLE, lpMinimumWorkingSetSize : *u64, lpMaximumWorkingSetSize : *u64, Flags : *u32) -> BOOL #foreign KERNEL32;
SetProcessWorkingSetSizeEx :: (hProcess : HANDLE, dwMinimumWorkingSetSize : u64, dwMaximumWorkingSetSize : u64, Flags : u32) -> BOOL #foreign KERNEL32;
VirtualLock :: (lpAddress : *void, dwSize : u64) -> BOOL #foreign KERNEL32;
VirtualUnlock :: (lpAddress : *void, dwSize : u64) -> BOOL #foreign KERNEL32;
GetWriteWatch :: (dwFlags : u32, lpBaseAddress : *void, dwRegionSize : u64, lpAddresses : **void, lpdwCount : *u64, lpdwGranularity : *u32) -> u32 #foreign KERNEL32;
ResetWriteWatch :: (lpBaseAddress : *void, dwRegionSize : u64) -> u32 #foreign KERNEL32;
CreateMemoryResourceNotification :: (NotificationType : MEMORY_RESOURCE_NOTIFICATION_TYPE) -> HANDLE #foreign KERNEL32;
QueryMemoryResourceNotification :: (ResourceNotificationHandle : HANDLE, ResourceState : *BOOL) -> BOOL #foreign KERNEL32;
GetSystemFileCacheSize :: (lpMinimumFileCacheSize : *u64, lpMaximumFileCacheSize : *u64, lpFlags : *u32) -> BOOL #foreign KERNEL32;
SetSystemFileCacheSize :: (MinimumFileCacheSize : u64, MaximumFileCacheSize : u64, Flags : u32) -> BOOL #foreign KERNEL32;
CreateFileMappingNumaW :: (hFile : HANDLE, lpFileMappingAttributes : *SECURITY_ATTRIBUTES, flProtect : PAGE_PROTECTION_FLAGS, dwMaximumSizeHigh : u32, dwMaximumSizeLow : u32, lpName : PWSTR, nndPreferred : u32) -> HANDLE #foreign KERNEL32;
PrefetchVirtualMemory :: (hProcess : HANDLE, NumberOfEntries : u64, VirtualAddresses : *WIN32_MEMORY_RANGE_ENTRY, Flags : u32) -> BOOL #foreign KERNEL32;
CreateFileMappingFromApp :: (hFile : HANDLE, SecurityAttributes : *SECURITY_ATTRIBUTES, PageProtection : PAGE_PROTECTION_FLAGS, MaximumSize : u64, Name : PWSTR) -> HANDLE #foreign KERNEL32;
MapViewOfFileFromApp :: (hFileMappingObject : HANDLE, DesiredAccess : FILE_MAP, FileOffset : u64, NumberOfBytesToMap : u64) -> *void #foreign KERNEL32;
UnmapViewOfFileEx :: (BaseAddress : *void, UnmapFlags : UNMAP_VIEW_OF_FILE_FLAGS) -> BOOL #foreign KERNEL32;
AllocateUserPhysicalPages :: (hProcess : HANDLE, NumberOfPages : *u64, PageArray : *u64) -> BOOL #foreign KERNEL32;
FreeUserPhysicalPages :: (hProcess : HANDLE, NumberOfPages : *u64, PageArray : *u64) -> BOOL #foreign KERNEL32;
MapUserPhysicalPages :: (VirtualAddress : *void, NumberOfPages : u64, PageArray : *u64) -> BOOL #foreign KERNEL32;
AllocateUserPhysicalPagesNuma :: (hProcess : HANDLE, NumberOfPages : *u64, PageArray : *u64, nndPreferred : u32) -> BOOL #foreign KERNEL32;
VirtualAllocExNuma :: (hProcess : HANDLE, lpAddress : *void, dwSize : u64, flAllocationType : VIRTUAL_ALLOCATION_TYPE, flProtect : u32, nndPreferred : u32) -> *void #foreign KERNEL32;
GetMemoryErrorHandlingCapabilities :: (Capabilities : *u32) -> BOOL #foreign KERNEL32;
RegisterBadMemoryNotification :: (Callback : PBAD_MEMORY_CALLBACK_ROUTINE) -> *void #foreign KERNEL32;
UnregisterBadMemoryNotification :: (RegistrationHandle : *void) -> BOOL #foreign KERNEL32;
OfferVirtualMemory :: (VirtualAddress : *void, Size : u64, Priority : OFFER_PRIORITY) -> u32 #foreign KERNEL32;
ReclaimVirtualMemory :: (VirtualAddress : *void, Size : u64) -> u32 #foreign KERNEL32;
DiscardVirtualMemory :: (VirtualAddress : *void, Size : u64) -> u32 #foreign KERNEL32;
RtlCompareMemory :: (Source1 : *void, Source2 : *void, Length : u64) -> u64 #foreign KERNEL32;
RtlCrc32 :: (Buffer : *void, Size : u64, InitialCrc : u32) -> u32 #foreign ntdll;
RtlCrc64 :: (Buffer : *void, Size : u64, InitialCrc : u64) -> u64 #foreign ntdll;
RtlIsZeroMemory :: (Buffer : *void, Length : u64) -> BOOLEAN #foreign ntdll;
GlobalAlloc :: (uFlags : GLOBAL_ALLOC_FLAGS, dwBytes : u64) -> s64 #foreign KERNEL32;
GlobalReAlloc :: (hMem : s64, dwBytes : u64, uFlags : u32) -> s64 #foreign KERNEL32;
GlobalSize :: (hMem : s64) -> u64 #foreign KERNEL32;
GlobalUnlock :: (hMem : s64) -> BOOL #foreign KERNEL32;
GlobalLock :: (hMem : s64) -> *void #foreign KERNEL32;
GlobalFlags :: (hMem : s64) -> u32 #foreign KERNEL32;
GlobalHandle :: (pMem : *void) -> s64 #foreign KERNEL32;
GlobalFree :: (hMem : s64) -> s64 #foreign KERNEL32;
LocalAlloc :: (uFlags : LOCAL_ALLOC_FLAGS, uBytes : u64) -> s64 #foreign KERNEL32;
LocalReAlloc :: (hMem : s64, uBytes : u64, uFlags : u32) -> s64 #foreign KERNEL32;
LocalLock :: (hMem : s64) -> *void #foreign KERNEL32;
LocalHandle :: (pMem : *void) -> s64 #foreign KERNEL32;
LocalUnlock :: (hMem : s64) -> BOOL #foreign KERNEL32;
LocalSize :: (hMem : s64) -> u64 #foreign KERNEL32;
LocalFlags :: (hMem : s64) -> u32 #foreign KERNEL32;
LocalFree :: (hMem : s64) -> s64 #foreign KERNEL32;
CreateFileMappingA :: (hFile : HANDLE, lpFileMappingAttributes : *SECURITY_ATTRIBUTES, flProtect : PAGE_PROTECTION_FLAGS, dwMaximumSizeHigh : u32, dwMaximumSizeLow : u32, lpName : PSTR) -> HANDLE #foreign KERNEL32;
CreateFileMappingNumaA :: (hFile : HANDLE, lpFileMappingAttributes : *SECURITY_ATTRIBUTES, flProtect : PAGE_PROTECTION_FLAGS, dwMaximumSizeHigh : u32, dwMaximumSizeLow : u32, lpName : PSTR, nndPreferred : u32) -> HANDLE #foreign KERNEL32;
OpenFileMappingA :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PSTR) -> HANDLE #foreign KERNEL32;
MapViewOfFileExNuma :: (hFileMappingObject : HANDLE, dwDesiredAccess : FILE_MAP, dwFileOffsetHigh : u32, dwFileOffsetLow : u32, dwNumberOfBytesToMap : u64, lpBaseAddress : *void, nndPreferred : u32) -> *void #foreign KERNEL32;
IsBadReadPtr :: (lp : *void, ucb : u64) -> BOOL #foreign KERNEL32;
IsBadWritePtr :: (lp : *void, ucb : u64) -> BOOL #foreign KERNEL32;
IsBadCodePtr :: (lpfn : FARPROC) -> BOOL #foreign KERNEL32;
IsBadStringPtrA :: (lpsz : PSTR, ucchMax : u64) -> BOOL #foreign KERNEL32;
IsBadStringPtrW :: (lpsz : PWSTR, ucchMax : u64) -> BOOL #foreign KERNEL32;
MapUserPhysicalPagesScatter :: (VirtualAddresses : **void, NumberOfPages : u64, PageArray : *u64) -> BOOL #foreign KERNEL32;
AddSecureMemoryCacheCallback :: (pfnCallBack : PSECURE_MEMORY_CACHE_CALLBACK) -> BOOL #foreign KERNEL32;
RemoveSecureMemoryCacheCallback :: (pfnCallBack : PSECURE_MEMORY_CACHE_CALLBACK) -> BOOL #foreign KERNEL32;

// Unicode aliases

#if UNICODE then CreateFileMapping :: CreateFileMappingW;
else             CreateFileMapping :: CreateFileMappingA;
#if UNICODE then OpenFileMapping :: OpenFileMappingW;
else             OpenFileMapping :: OpenFileMappingA;
#if UNICODE then CreateFileMappingNuma :: CreateFileMappingNumaW;
else             CreateFileMappingNuma :: CreateFileMappingNumaA;
#if UNICODE then IsBadStringPtr :: IsBadStringPtrW;
else             IsBadStringPtr :: IsBadStringPtrA;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";
ntdll :: #system_library "ntdll";
