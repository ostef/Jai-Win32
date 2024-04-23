// This file was auto generated

#import "Win32/Basics";

// Constants

CONDITION_VARIABLE_LOCKMODE_SHARED :: 1;
CREATE_MUTEX_INITIAL_OWNER :: 1;
CREATE_WAITABLE_TIMER_HIGH_RESOLUTION :: 2;
CREATE_WAITABLE_TIMER_MANUAL_RESET :: 1;
INIT_ONCE_ASYNC :: 2;
INIT_ONCE_CHECK_ONLY :: 1;
INIT_ONCE_CTX_RESERVED_BITS :: 2;
INIT_ONCE_INIT_FAILED :: 4;
MUTEX_MODIFY_STATE :: 1;
PME_CURRENT_VERSION :: 1;
PME_FAILFAST_ON_COMMIT_FAIL_DISABLE :: 0;
PME_FAILFAST_ON_COMMIT_FAIL_ENABLE :: 1;
PRIVATE_NAMESPACE_FLAG_DESTROY :: 1;
PROCESS_LEAP_SECOND_INFO_FLAG_ENABLE_SIXTY_SECOND :: 1;
PROCESS_LEAP_SECOND_INFO_VALID_FLAGS :: 1;
PROCESS_POWER_THROTTLING_CURRENT_VERSION :: 1;
PROCESS_POWER_THROTTLING_EXECUTION_SPEED :: 1;
PROCESS_POWER_THROTTLING_IGNORE_TIMER_RESOLUTION :: 4;
PROC_THREAD_ATTRIBUTE_REPLACE_VALUE :: 1;
SYNCHRONIZATION_BARRIER_FLAGS_BLOCK_ONLY :: 2;
SYNCHRONIZATION_BARRIER_FLAGS_NO_DELETE :: 4;
SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY :: 1;
THREAD_POWER_THROTTLING_CURRENT_VERSION :: 1;
THREAD_POWER_THROTTLING_EXECUTION_SPEED :: 1;
THREAD_POWER_THROTTLING_VALID_FLAGS :: 1;
WAIT_ABANDONED :: 128;
WAIT_ABANDONED_0 :: 128;
WAIT_IO_COMPLETION :: 192;
WAIT_OBJECT_0 :: 0;

// Types

APP_MEMORY_INFORMATION :: struct
{
    AvailableCommit : u64;
    PrivateCommitUsage : u64;
    PeakPrivateCommitUsage : u64;
    TotalCommitUsage : u64;
}

BoundaryDescriptorHandle :: s64;

CREATE_EVENT :: enum_flags u32
{
    INITIAL_SET :: 2;
    MANUAL_RESET :: 1;
}

CREATE_EVENT_INITIAL_SET :: 2;
CREATE_EVENT_MANUAL_RESET :: 1;

CREATE_PROCESS_LOGON_FLAGS :: enum u32
{
    LOGON_WITH_PROFILE :: 1;
    LOGON_NETCREDENTIALS_ONLY :: 2;
}

LOGON_WITH_PROFILE :: 1;
LOGON_NETCREDENTIALS_ONLY :: 2;

GET_GUI_RESOURCES_FLAGS :: enum u32
{
    GR_GDIOBJECTS :: 0;
    GR_GDIOBJECTS_PEAK :: 2;
    GR_USEROBJECTS :: 1;
    GR_USEROBJECTS_PEAK :: 4;
}

GR_GDIOBJECTS :: 0;
GR_GDIOBJECTS_PEAK :: 2;
GR_USEROBJECTS :: 1;
GR_USEROBJECTS_PEAK :: 4;

IO_COUNTERS :: struct
{
    ReadOperationCount : u64;
    WriteOperationCount : u64;
    OtherOperationCount : u64;
    ReadTransferCount : u64;
    WriteTransferCount : u64;
    OtherTransferCount : u64;
}

LPFIBER_START_ROUTINE :: #type (lpFiberParameter : *void) -> void #c_call;

LPPROC_THREAD_ATTRIBUTE_LIST :: *void;

LPTHREAD_START_ROUTINE :: #type (lpThreadParameter : *void) -> u32 #c_call;

MACHINE_ATTRIBUTES :: enum_flags u32
{
    UserEnabled :: 1;
    KernelEnabled :: 2;
    Wow64Container :: 4;
}

UserEnabled :: 1;
KernelEnabled :: 2;
Wow64Container :: 4;

MEMORY_PRIORITY :: enum u32
{
    VERY_LOW :: 1;
    LOW :: 2;
    MEDIUM :: 3;
    BELOW_NORMAL :: 4;
    NORMAL :: 5;
}

MEMORY_PRIORITY_VERY_LOW :: 1;
MEMORY_PRIORITY_LOW :: 2;
MEMORY_PRIORITY_MEDIUM :: 3;
MEMORY_PRIORITY_BELOW_NORMAL :: 4;
MEMORY_PRIORITY_NORMAL :: 5;

MEMORY_PRIORITY_INFORMATION :: struct
{
    MemoryPriority : MEMORY_PRIORITY;
}

NamespaceHandle :: s64;

PEB :: struct
{
    Reserved1 : [2]u8;
    BeingDebugged : u8;
    Reserved2 : *u8;
    Reserved3 : [2]*void;
    Ldr : *PEB_LDR_DATA;
    ProcessParameters : *RTL_USER_PROCESS_PARAMETERS;
    Reserved4 : [3]*void;
    AtlThunkSListPtr : *void;
    Reserved5 : *void;
    Reserved6 : u32;
    Reserved7 : *void;
    Reserved8 : u32;
    AtlThunkSListPtr32 : u32;
    Reserved9 : [45]*void;
    Reserved10 : [96]u8;
    PostProcessInitRoutine : PPS_POST_PROCESS_INIT_ROUTINE;
    Reserved11 : [128]u8;
    Reserved12 : **void;
    SessionId : u32;
}

PEB_LDR_DATA :: struct
{
    Reserved1 : [8]u8;
    Reserved2 : [3]*void;
    InMemoryOrderModuleList : LIST_ENTRY;
}

PFLS_CALLBACK_FUNCTION :: #type (lpFlsData : *void) -> void #c_call;

PINIT_ONCE_FN :: #type (InitOnce : *RTL_RUN_ONCE, Parameter : *void, Context : **void) -> BOOL #c_call;

POWER_REQUEST_CONTEXT_FLAGS :: enum u32
{
    DETAILED_STRING :: 2;
    SIMPLE_STRING :: 1;
}

POWER_REQUEST_CONTEXT_DETAILED_STRING :: 2;
POWER_REQUEST_CONTEXT_SIMPLE_STRING :: 1;

PPS_POST_PROCESS_INIT_ROUTINE :: #type () -> void #c_call;

PROCESSINFOCLASS :: enum s32
{
    ProcessBasicInformation :: 0;
    ProcessDebugPort :: 7;
    ProcessWow64Information :: 26;
    ProcessImageFileName :: 27;
    ProcessBreakOnTermination :: 29;
}

ProcessBasicInformation :: 0;
ProcessDebugPort :: 7;
ProcessWow64Information :: 26;
ProcessImageFileName :: 27;
ProcessBreakOnTermination :: 29;

PROCESSOR_FEATURE_ID :: enum u32
{
    PF_ARM_64BIT_LOADSTORE_ATOMIC :: 25;
    PF_ARM_DIVIDE_INSTRUCTION_AVAILABLE :: 24;
    PF_ARM_EXTERNAL_CACHE_AVAILABLE :: 26;
    PF_ARM_FMAC_INSTRUCTIONS_AVAILABLE :: 27;
    PF_ARM_VFP_32_REGISTERS_AVAILABLE :: 18;
    PF_3DNOW_INSTRUCTIONS_AVAILABLE :: 7;
    PF_CHANNELS_ENABLED :: 16;
    PF_COMPARE_EXCHANGE_DOUBLE :: 2;
    PF_COMPARE_EXCHANGE128 :: 14;
    PF_COMPARE64_EXCHANGE128 :: 15;
    PF_FASTFAIL_AVAILABLE :: 23;
    PF_FLOATING_POINT_EMULATED :: 1;
    PF_FLOATING_POINT_PRECISION_ERRATA :: 0;
    PF_MMX_INSTRUCTIONS_AVAILABLE :: 3;
    PF_NX_ENABLED :: 12;
    PF_PAE_ENABLED :: 9;
    PF_RDTSC_INSTRUCTION_AVAILABLE :: 8;
    PF_RDWRFSGSBASE_AVAILABLE :: 22;
    PF_SECOND_LEVEL_ADDRESS_TRANSLATION :: 20;
    PF_SSE3_INSTRUCTIONS_AVAILABLE :: 13;
    PF_VIRT_FIRMWARE_ENABLED :: 21;
    PF_XMMI_INSTRUCTIONS_AVAILABLE :: 6;
    PF_XMMI64_INSTRUCTIONS_AVAILABLE :: 10;
    PF_XSAVE_ENABLED :: 17;
    PF_ARM_V8_INSTRUCTIONS_AVAILABLE :: 29;
    PF_ARM_V8_CRYPTO_INSTRUCTIONS_AVAILABLE :: 30;
    PF_ARM_V8_CRC32_INSTRUCTIONS_AVAILABLE :: 31;
    PF_ARM_V81_ATOMIC_INSTRUCTIONS_AVAILABLE :: 34;
}

PF_ARM_64BIT_LOADSTORE_ATOMIC :: 25;
PF_ARM_DIVIDE_INSTRUCTION_AVAILABLE :: 24;
PF_ARM_EXTERNAL_CACHE_AVAILABLE :: 26;
PF_ARM_FMAC_INSTRUCTIONS_AVAILABLE :: 27;
PF_ARM_VFP_32_REGISTERS_AVAILABLE :: 18;
PF_3DNOW_INSTRUCTIONS_AVAILABLE :: 7;
PF_CHANNELS_ENABLED :: 16;
PF_COMPARE_EXCHANGE_DOUBLE :: 2;
PF_COMPARE_EXCHANGE128 :: 14;
PF_COMPARE64_EXCHANGE128 :: 15;
PF_FASTFAIL_AVAILABLE :: 23;
PF_FLOATING_POINT_EMULATED :: 1;
PF_FLOATING_POINT_PRECISION_ERRATA :: 0;
PF_MMX_INSTRUCTIONS_AVAILABLE :: 3;
PF_NX_ENABLED :: 12;
PF_PAE_ENABLED :: 9;
PF_RDTSC_INSTRUCTION_AVAILABLE :: 8;
PF_RDWRFSGSBASE_AVAILABLE :: 22;
PF_SECOND_LEVEL_ADDRESS_TRANSLATION :: 20;
PF_SSE3_INSTRUCTIONS_AVAILABLE :: 13;
PF_VIRT_FIRMWARE_ENABLED :: 21;
PF_XMMI_INSTRUCTIONS_AVAILABLE :: 6;
PF_XMMI64_INSTRUCTIONS_AVAILABLE :: 10;
PF_XSAVE_ENABLED :: 17;
PF_ARM_V8_INSTRUCTIONS_AVAILABLE :: 29;
PF_ARM_V8_CRYPTO_INSTRUCTIONS_AVAILABLE :: 30;
PF_ARM_V8_CRC32_INSTRUCTIONS_AVAILABLE :: 31;
PF_ARM_V81_ATOMIC_INSTRUCTIONS_AVAILABLE :: 34;

PROCESS_ACCESS_RIGHTS :: enum_flags u32
{
    PROCESS_TERMINATE :: 1;
    PROCESS_CREATE_THREAD :: 2;
    PROCESS_SET_SESSIONID :: 4;
    PROCESS_VM_OPERATION :: 8;
    PROCESS_VM_READ :: 16;
    PROCESS_VM_WRITE :: 32;
    PROCESS_DUP_HANDLE :: 64;
    PROCESS_CREATE_PROCESS :: 128;
    PROCESS_SET_QUOTA :: 256;
    PROCESS_SET_INFORMATION :: 512;
    PROCESS_QUERY_INFORMATION :: 1024;
    PROCESS_SUSPEND_RESUME :: 2048;
    PROCESS_QUERY_LIMITED_INFORMATION :: 4096;
    PROCESS_SET_LIMITED_INFORMATION :: 8192;
    PROCESS_ALL_ACCESS :: 2097151;
    PROCESS_DELETE :: 65536;
    PROCESS_READ_CONTROL :: 131072;
    PROCESS_WRITE_DAC :: 262144;
    PROCESS_WRITE_OWNER :: 524288;
    PROCESS_SYNCHRONIZE :: 1048576;
    PROCESS_STANDARD_RIGHTS_REQUIRED :: 983040;
}

PROCESS_TERMINATE :: 1;
PROCESS_CREATE_THREAD :: 2;
PROCESS_SET_SESSIONID :: 4;
PROCESS_VM_OPERATION :: 8;
PROCESS_VM_READ :: 16;
PROCESS_VM_WRITE :: 32;
PROCESS_DUP_HANDLE :: 64;
PROCESS_CREATE_PROCESS :: 128;
PROCESS_SET_QUOTA :: 256;
PROCESS_SET_INFORMATION :: 512;
PROCESS_QUERY_INFORMATION :: 1024;
PROCESS_SUSPEND_RESUME :: 2048;
PROCESS_QUERY_LIMITED_INFORMATION :: 4096;
PROCESS_SET_LIMITED_INFORMATION :: 8192;
PROCESS_ALL_ACCESS :: 2097151;
PROCESS_DELETE :: 65536;
PROCESS_READ_CONTROL :: 131072;
PROCESS_WRITE_DAC :: 262144;
PROCESS_WRITE_OWNER :: 524288;
PROCESS_SYNCHRONIZE :: 1048576;
PROCESS_STANDARD_RIGHTS_REQUIRED :: 983040;

PROCESS_AFFINITY_AUTO_UPDATE_FLAGS :: enum u32
{
    PROCESS_AFFINITY_DISABLE_AUTO_UPDATE :: 0;
    PROCESS_AFFINITY_ENABLE_AUTO_UPDATE :: 1;
}

PROCESS_AFFINITY_DISABLE_AUTO_UPDATE :: 0;
PROCESS_AFFINITY_ENABLE_AUTO_UPDATE :: 1;

PROCESS_BASIC_INFORMATION :: struct
{
    Reserved1 : *void;
    PebBaseAddress : *PEB;
    Reserved2 : [2]*void;
    UniqueProcessId : u64;
    Reserved3 : *void;
}

PROCESS_CREATION_FLAGS :: enum_flags u32
{
    DEBUG_PROCESS :: 1;
    DEBUG_ONLY_THIS_PROCESS :: 2;
    CREATE_SUSPENDED :: 4;
    DETACHED_PROCESS :: 8;
    CREATE_NEW_CONSOLE :: 16;
    NORMAL_PRIORITY_CLASS :: 32;
    IDLE_PRIORITY_CLASS :: 64;
    HIGH_PRIORITY_CLASS :: 128;
    REALTIME_PRIORITY_CLASS :: 256;
    CREATE_NEW_PROCESS_GROUP :: 512;
    CREATE_UNICODE_ENVIRONMENT :: 1024;
    CREATE_SEPARATE_WOW_VDM :: 2048;
    CREATE_SHARED_WOW_VDM :: 4096;
    CREATE_FORCEDOS :: 8192;
    BELOW_NORMAL_PRIORITY_CLASS :: 16384;
    ABOVE_NORMAL_PRIORITY_CLASS :: 32768;
    INHERIT_PARENT_AFFINITY :: 65536;
    INHERIT_CALLER_PRIORITY :: 131072;
    CREATE_PROTECTED_PROCESS :: 262144;
    EXTENDED_STARTUPINFO_PRESENT :: 524288;
    PROCESS_MODE_BACKGROUND_BEGIN :: 1048576;
    PROCESS_MODE_BACKGROUND_END :: 2097152;
    CREATE_SECURE_PROCESS :: 4194304;
    CREATE_BREAKAWAY_FROM_JOB :: 16777216;
    CREATE_PRESERVE_CODE_AUTHZ_LEVEL :: 33554432;
    CREATE_DEFAULT_ERROR_MODE :: 67108864;
    CREATE_NO_WINDOW :: 134217728;
    PROFILE_USER :: 268435456;
    PROFILE_KERNEL :: 536870912;
    PROFILE_SERVER :: 1073741824;
    CREATE_IGNORE_SYSTEM_DEFAULT :: 2147483648;
}

DEBUG_PROCESS :: 1;
DEBUG_ONLY_THIS_PROCESS :: 2;
CREATE_SUSPENDED :: 4;
DETACHED_PROCESS :: 8;
CREATE_NEW_CONSOLE :: 16;
NORMAL_PRIORITY_CLASS :: 32;
IDLE_PRIORITY_CLASS :: 64;
HIGH_PRIORITY_CLASS :: 128;
REALTIME_PRIORITY_CLASS :: 256;
CREATE_NEW_PROCESS_GROUP :: 512;
CREATE_UNICODE_ENVIRONMENT :: 1024;
CREATE_SEPARATE_WOW_VDM :: 2048;
CREATE_SHARED_WOW_VDM :: 4096;
CREATE_FORCEDOS :: 8192;
BELOW_NORMAL_PRIORITY_CLASS :: 16384;
ABOVE_NORMAL_PRIORITY_CLASS :: 32768;
INHERIT_PARENT_AFFINITY :: 65536;
INHERIT_CALLER_PRIORITY :: 131072;
CREATE_PROTECTED_PROCESS :: 262144;
EXTENDED_STARTUPINFO_PRESENT :: 524288;
PROCESS_MODE_BACKGROUND_BEGIN :: 1048576;
PROCESS_MODE_BACKGROUND_END :: 2097152;
CREATE_SECURE_PROCESS :: 4194304;
CREATE_BREAKAWAY_FROM_JOB :: 16777216;
CREATE_PRESERVE_CODE_AUTHZ_LEVEL :: 33554432;
CREATE_DEFAULT_ERROR_MODE :: 67108864;
CREATE_NO_WINDOW :: 134217728;
PROFILE_USER :: 268435456;
PROFILE_KERNEL :: 536870912;
PROFILE_SERVER :: 1073741824;
CREATE_IGNORE_SYSTEM_DEFAULT :: 2147483648;

PROCESS_DEP_FLAGS :: enum_flags u32
{
    ENABLE :: 1;
    DISABLE_ATL_THUNK_EMULATION :: 2;
    NONE :: 0;
}

PROCESS_DEP_ENABLE :: 1;
PROCESS_DEP_DISABLE_ATL_THUNK_EMULATION :: 2;
PROCESS_DEP_NONE :: 0;

PROCESS_DYNAMIC_EH_CONTINUATION_TARGET :: struct
{
    TargetAddress : u64;
    Flags : u64;
}

PROCESS_DYNAMIC_EH_CONTINUATION_TARGETS_INFORMATION :: struct
{
    NumberOfTargets : u16;
    Reserved : u16;
    Reserved2 : u32;
    Targets : *PROCESS_DYNAMIC_EH_CONTINUATION_TARGET;
}

PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE :: struct
{
    BaseAddress : u64;
    Size : u64;
    Flags : u32;
}

PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGES_INFORMATION :: struct
{
    NumberOfRanges : u16;
    Reserved : u16;
    Reserved2 : u32;
    Ranges : *PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE;
}

PROCESS_INFORMATION :: struct
{
    hProcess : HANDLE;
    hThread : HANDLE;
    dwProcessId : u32;
    dwThreadId : u32;
}

PROCESS_INFORMATION_CLASS :: enum s32
{
    ProcessMemoryPriority :: 0;
    ProcessMemoryExhaustionInfo :: 1;
    ProcessAppMemoryInfo :: 2;
    ProcessInPrivateInfo :: 3;
    ProcessPowerThrottling :: 4;
    ProcessReservedValue1 :: 5;
    ProcessTelemetryCoverageInfo :: 6;
    ProcessProtectionLevelInfo :: 7;
    ProcessLeapSecondInfo :: 8;
    ProcessMachineTypeInfo :: 9;
    ProcessInformationClassMax :: 10;
}

ProcessMemoryPriority :: 0;
ProcessMemoryExhaustionInfo :: 1;
ProcessAppMemoryInfo :: 2;
ProcessInPrivateInfo :: 3;
ProcessPowerThrottling :: 4;
ProcessReservedValue1 :: 5;
ProcessTelemetryCoverageInfo :: 6;
ProcessProtectionLevelInfo :: 7;
ProcessLeapSecondInfo :: 8;
ProcessMachineTypeInfo :: 9;
ProcessInformationClassMax :: 10;

PROCESS_LEAP_SECOND_INFO :: struct
{
    Flags : u32;
    Reserved : u32;
}

PROCESS_MACHINE_INFORMATION :: struct
{
    ProcessMachine : u16;
    Res0 : u16;
    MachineAttributes : MACHINE_ATTRIBUTES;
}

PROCESS_MEMORY_EXHAUSTION_INFO :: struct
{
    Version : u16;
    Reserved : u16;
    _Type : PROCESS_MEMORY_EXHAUSTION_TYPE;
    Value : u64;
}

PROCESS_MEMORY_EXHAUSTION_TYPE :: enum s32
{
    PMETypeFailFastOnCommitFailure :: 0;
    PMETypeMax :: 1;
}

PMETypeFailFastOnCommitFailure :: 0;
PMETypeMax :: 1;

PROCESS_MITIGATION_POLICY :: enum s32
{
    ProcessDEPPolicy :: 0;
    ProcessASLRPolicy :: 1;
    ProcessDynamicCodePolicy :: 2;
    ProcessStrictHandleCheckPolicy :: 3;
    ProcessSystemCallDisablePolicy :: 4;
    ProcessMitigationOptionsMask :: 5;
    ProcessExtensionPointDisablePolicy :: 6;
    ProcessControlFlowGuardPolicy :: 7;
    ProcessSignaturePolicy :: 8;
    ProcessFontDisablePolicy :: 9;
    ProcessImageLoadPolicy :: 10;
    ProcessSystemCallFilterPolicy :: 11;
    ProcessPayloadRestrictionPolicy :: 12;
    ProcessChildProcessPolicy :: 13;
    ProcessSideChannelIsolationPolicy :: 14;
    ProcessUserShadowStackPolicy :: 15;
    ProcessRedirectionTrustPolicy :: 16;
    MaxProcessMitigationPolicy :: 17;
}

ProcessDEPPolicy :: 0;
ProcessASLRPolicy :: 1;
ProcessDynamicCodePolicy :: 2;
ProcessStrictHandleCheckPolicy :: 3;
ProcessSystemCallDisablePolicy :: 4;
ProcessMitigationOptionsMask :: 5;
ProcessExtensionPointDisablePolicy :: 6;
ProcessControlFlowGuardPolicy :: 7;
ProcessSignaturePolicy :: 8;
ProcessFontDisablePolicy :: 9;
ProcessImageLoadPolicy :: 10;
ProcessSystemCallFilterPolicy :: 11;
ProcessPayloadRestrictionPolicy :: 12;
ProcessChildProcessPolicy :: 13;
ProcessSideChannelIsolationPolicy :: 14;
ProcessUserShadowStackPolicy :: 15;
ProcessRedirectionTrustPolicy :: 16;
MaxProcessMitigationPolicy :: 17;

PROCESS_NAME_FORMAT :: enum u32
{
    PROCESS_NAME_WIN32 :: 0;
    PROCESS_NAME_NATIVE :: 1;
}

PROCESS_NAME_WIN32 :: 0;
PROCESS_NAME_NATIVE :: 1;

PROCESS_POWER_THROTTLING_STATE :: struct
{
    Version : u32;
    ControlMask : u32;
    StateMask : u32;
}

PROCESS_PROTECTION_LEVEL :: enum u32
{
    PROTECTION_LEVEL_WINTCB_LIGHT :: 0;
    PROTECTION_LEVEL_WINDOWS :: 1;
    PROTECTION_LEVEL_WINDOWS_LIGHT :: 2;
    PROTECTION_LEVEL_ANTIMALWARE_LIGHT :: 3;
    PROTECTION_LEVEL_LSA_LIGHT :: 4;
    PROTECTION_LEVEL_WINTCB :: 5;
    PROTECTION_LEVEL_CODEGEN_LIGHT :: 6;
    PROTECTION_LEVEL_AUTHENTICODE :: 7;
    PROTECTION_LEVEL_PPL_APP :: 8;
    PROTECTION_LEVEL_NONE :: 4294967294;
}

PROTECTION_LEVEL_WINTCB_LIGHT :: 0;
PROTECTION_LEVEL_WINDOWS :: 1;
PROTECTION_LEVEL_WINDOWS_LIGHT :: 2;
PROTECTION_LEVEL_ANTIMALWARE_LIGHT :: 3;
PROTECTION_LEVEL_LSA_LIGHT :: 4;
PROTECTION_LEVEL_WINTCB :: 5;
PROTECTION_LEVEL_CODEGEN_LIGHT :: 6;
PROTECTION_LEVEL_AUTHENTICODE :: 7;
PROTECTION_LEVEL_PPL_APP :: 8;
PROTECTION_LEVEL_NONE :: 4294967294;

PROCESS_PROTECTION_LEVEL_INFORMATION :: struct
{
    ProtectionLevel : PROCESS_PROTECTION_LEVEL;
}

PRTL_UMS_SCHEDULER_ENTRY_POINT :: #type (Reason : RTL_UMS_SCHEDULER_REASON, ActivationPayload : u64, SchedulerParam : *void) -> void #c_call;

PTIMERAPCROUTINE :: #type (lpArgToCompletionRoutine : *void, dwTimerLowValue : u32, dwTimerHighValue : u32) -> void #c_call;

PTP_CLEANUP_GROUP_CANCEL_CALLBACK :: #type (ObjectContext : *void, CleanupContext : *void) -> void #c_call;

PTP_POOL :: s64;

PTP_SIMPLE_CALLBACK :: #type (Instance : *TP_CALLBACK_INSTANCE, Context : *void) -> void #c_call;

PTP_TIMER_CALLBACK :: #type (Instance : *TP_CALLBACK_INSTANCE, Context : *void, Timer : *TP_TIMER) -> void #c_call;

PTP_WAIT_CALLBACK :: #type (Instance : *TP_CALLBACK_INSTANCE, Context : *void, Wait : *TP_WAIT, WaitResult : u32) -> void #c_call;

PTP_WIN32_IO_CALLBACK :: #type (
    Instance : *TP_CALLBACK_INSTANCE,
    Context : *void,
    Overlapped : *void,
    IoResult : u32,
    NumberOfBytesTransferred : u64,
    Io : *TP_IO
) -> void #c_call;

PTP_WORK_CALLBACK :: #type (Instance : *TP_CALLBACK_INSTANCE, Context : *void, Work : *TP_WORK) -> void #c_call;

QUEUE_USER_APC_FLAGS :: enum s32
{
    NONE :: 0;
    SPECIAL_USER_APC :: 1;
}

QUEUE_USER_APC_FLAGS_NONE :: 0;
QUEUE_USER_APC_FLAGS_SPECIAL_USER_APC :: 1;

REASON_CONTEXT :: struct
{
    Version : u32;
    Flags : POWER_REQUEST_CONTEXT_FLAGS;
    Reason : _Reason_e__Union;

    _Reason_e__Union :: union
    {
        Detailed : _Detailed_e__Struct;
        SimpleReasonString : PWSTR;

        _Detailed_e__Struct :: struct
        {
            LocalizedReasonModule : HINSTANCE;
            LocalizedReasonId : u32;
            ReasonStringCount : u32;
            ReasonStrings : *PWSTR;
        }
    }
}

RTL_BARRIER :: struct
{
    Reserved1 : u32;
    Reserved2 : u32;
    Reserved3 : [2]u64;
    Reserved4 : u32;
    Reserved5 : u32;
}

RTL_CONDITION_VARIABLE :: struct
{
    Ptr : *void;
}

RTL_CRITICAL_SECTION :: struct
{
    DebugInfo : *RTL_CRITICAL_SECTION_DEBUG;
    LockCount : s32;
    RecursionCount : s32;
    OwningThread : HANDLE;
    LockSemaphore : HANDLE;
    SpinCount : u64;
}

RTL_CRITICAL_SECTION_DEBUG :: struct
{
    _Type : u16;
    CreatorBackTraceIndex : u16;
    CriticalSection : *RTL_CRITICAL_SECTION;
    ProcessLocksList : LIST_ENTRY;
    EntryCount : u32;
    ContentionCount : u32;
    Flags : u32;
    CreatorBackTraceIndexHigh : u16;
    SpareWORD : u16;
}

RTL_RUN_ONCE :: union
{
    Ptr : *void;
}

RTL_SRWLOCK :: struct
{
    Ptr : *void;
}

RTL_UMS_THREAD_INFO_CLASS :: enum s32
{
    UmsThreadInvalidInfoClass :: 0;
    UmsThreadUserContext :: 1;
    UmsThreadPriority :: 2;
    UmsThreadAffinity :: 3;
    UmsThreadTeb :: 4;
    UmsThreadIsSuspended :: 5;
    UmsThreadIsTerminated :: 6;
    UmsThreadMaxInfoClass :: 7;
}

UmsThreadInvalidInfoClass :: 0;
UmsThreadUserContext :: 1;
UmsThreadPriority :: 2;
UmsThreadAffinity :: 3;
UmsThreadTeb :: 4;
UmsThreadIsSuspended :: 5;
UmsThreadIsTerminated :: 6;
UmsThreadMaxInfoClass :: 7;

RTL_USER_PROCESS_PARAMETERS :: struct
{
    Reserved1 : [16]u8;
    Reserved2 : [10]*void;
    ImagePathName : UNICODE_STRING;
    CommandLine : UNICODE_STRING;
}

STARTUPINFOA :: struct
{
    cb : u32;
    lpReserved : PSTR;
    lpDesktop : PSTR;
    lpTitle : PSTR;
    dwX : u32;
    dwY : u32;
    dwXSize : u32;
    dwYSize : u32;
    dwXCountChars : u32;
    dwYCountChars : u32;
    dwFillAttribute : u32;
    dwFlags : STARTUPINFOW_FLAGS;
    wShowWindow : u16;
    cbReserved2 : u16;
    lpReserved2 : *u8;
    hStdInput : HANDLE;
    hStdOutput : HANDLE;
    hStdError : HANDLE;
}

STARTUPINFOEXA :: struct
{
    StartupInfo : STARTUPINFOA;
    lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST;
}

STARTUPINFOEXW :: struct
{
    StartupInfo : STARTUPINFOW;
    lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST;
}

STARTUPINFOW :: struct
{
    cb : u32;
    lpReserved : PWSTR;
    lpDesktop : PWSTR;
    lpTitle : PWSTR;
    dwX : u32;
    dwY : u32;
    dwXSize : u32;
    dwYSize : u32;
    dwXCountChars : u32;
    dwYCountChars : u32;
    dwFillAttribute : u32;
    dwFlags : STARTUPINFOW_FLAGS;
    wShowWindow : u16;
    cbReserved2 : u16;
    lpReserved2 : *u8;
    hStdInput : HANDLE;
    hStdOutput : HANDLE;
    hStdError : HANDLE;
}

STARTUPINFOW_FLAGS :: enum_flags u32
{
    STARTF_FORCEONFEEDBACK :: 64;
    STARTF_FORCEOFFFEEDBACK :: 128;
    STARTF_PREVENTPINNING :: 8192;
    STARTF_RUNFULLSCREEN :: 32;
    STARTF_TITLEISAPPID :: 4096;
    STARTF_TITLEISLINKNAME :: 2048;
    STARTF_UNTRUSTEDSOURCE :: 32768;
    STARTF_USECOUNTCHARS :: 8;
    STARTF_USEFILLATTRIBUTE :: 16;
    STARTF_USEHOTKEY :: 512;
    STARTF_USEPOSITION :: 4;
    STARTF_USESHOWWINDOW :: 1;
    STARTF_USESIZE :: 2;
    STARTF_USESTDHANDLES :: 256;
}

STARTF_FORCEONFEEDBACK :: 64;
STARTF_FORCEOFFFEEDBACK :: 128;
STARTF_PREVENTPINNING :: 8192;
STARTF_RUNFULLSCREEN :: 32;
STARTF_TITLEISAPPID :: 4096;
STARTF_TITLEISLINKNAME :: 2048;
STARTF_UNTRUSTEDSOURCE :: 32768;
STARTF_USECOUNTCHARS :: 8;
STARTF_USEFILLATTRIBUTE :: 16;
STARTF_USEHOTKEY :: 512;
STARTF_USEPOSITION :: 4;
STARTF_USESHOWWINDOW :: 1;
STARTF_USESIZE :: 2;
STARTF_USESTDHANDLES :: 256;

THREADINFOCLASS :: enum s32
{
    ThreadIsIoPending :: 16;
    ThreadNameInformation :: 38;
}

ThreadIsIoPending :: 16;
ThreadNameInformation :: 38;

THREAD_ACCESS_RIGHTS :: enum_flags u32
{
    THREAD_TERMINATE :: 1;
    THREAD_SUSPEND_RESUME :: 2;
    THREAD_GET_CONTEXT :: 8;
    THREAD_SET_CONTEXT :: 16;
    THREAD_SET_INFORMATION :: 32;
    THREAD_QUERY_INFORMATION :: 64;
    THREAD_SET_THREAD_TOKEN :: 128;
    THREAD_IMPERSONATE :: 256;
    THREAD_DIRECT_IMPERSONATION :: 512;
    THREAD_SET_LIMITED_INFORMATION :: 1024;
    THREAD_QUERY_LIMITED_INFORMATION :: 2048;
    THREAD_RESUME :: 4096;
    THREAD_ALL_ACCESS :: 2097151;
    THREAD_DELETE :: 65536;
    THREAD_READ_CONTROL :: 131072;
    THREAD_WRITE_DAC :: 262144;
    THREAD_WRITE_OWNER :: 524288;
    THREAD_SYNCHRONIZE :: 1048576;
    THREAD_STANDARD_RIGHTS_REQUIRED :: 983040;
}

THREAD_TERMINATE :: 1;
THREAD_SUSPEND_RESUME :: 2;
THREAD_GET_CONTEXT :: 8;
THREAD_SET_CONTEXT :: 16;
THREAD_SET_INFORMATION :: 32;
THREAD_QUERY_INFORMATION :: 64;
THREAD_SET_THREAD_TOKEN :: 128;
THREAD_IMPERSONATE :: 256;
THREAD_DIRECT_IMPERSONATION :: 512;
THREAD_SET_LIMITED_INFORMATION :: 1024;
THREAD_QUERY_LIMITED_INFORMATION :: 2048;
THREAD_RESUME :: 4096;
THREAD_ALL_ACCESS :: 2097151;
THREAD_DELETE :: 65536;
THREAD_READ_CONTROL :: 131072;
THREAD_WRITE_DAC :: 262144;
THREAD_WRITE_OWNER :: 524288;
THREAD_SYNCHRONIZE :: 1048576;
THREAD_STANDARD_RIGHTS_REQUIRED :: 983040;

THREAD_CREATION_FLAGS :: enum_flags u32
{
    THREAD_CREATE_RUN_IMMEDIATELY :: 0;
    THREAD_CREATE_SUSPENDED :: 4;
    STACK_SIZE_PARAM_IS_A_RESERVATION :: 65536;
}

THREAD_CREATE_RUN_IMMEDIATELY :: 0;
THREAD_CREATE_SUSPENDED :: 4;
STACK_SIZE_PARAM_IS_A_RESERVATION :: 65536;

THREAD_INFORMATION_CLASS :: enum s32
{
    ThreadMemoryPriority :: 0;
    ThreadAbsoluteCpuPriority :: 1;
    ThreadDynamicCodePolicy :: 2;
    ThreadPowerThrottling :: 3;
    ThreadInformationClassMax :: 4;
}

ThreadMemoryPriority :: 0;
ThreadAbsoluteCpuPriority :: 1;
ThreadDynamicCodePolicy :: 2;
ThreadPowerThrottling :: 3;
ThreadInformationClassMax :: 4;

THREAD_POWER_THROTTLING_STATE :: struct
{
    Version : u32;
    ControlMask : u32;
    StateMask : u32;
}

THREAD_PRIORITY :: enum s32
{
    THREAD_MODE_BACKGROUND_BEGIN :: 65536;
    THREAD_MODE_BACKGROUND_END :: 131072;
    ABOVE_NORMAL :: 1;
    BELOW_NORMAL :: -1;
    HIGHEST :: 2;
    IDLE :: -15;
    MIN :: -2;
    LOWEST :: -2;
    NORMAL :: 0;
    TIME_CRITICAL :: 15;
}

THREAD_MODE_BACKGROUND_BEGIN :: 65536;
THREAD_MODE_BACKGROUND_END :: 131072;
THREAD_PRIORITY_ABOVE_NORMAL :: 1;
THREAD_PRIORITY_BELOW_NORMAL :: -1;
THREAD_PRIORITY_HIGHEST :: 2;
THREAD_PRIORITY_IDLE :: -15;
THREAD_PRIORITY_MIN :: -2;
THREAD_PRIORITY_LOWEST :: -2;
THREAD_PRIORITY_NORMAL :: 0;
THREAD_PRIORITY_TIME_CRITICAL :: 15;

TP_CALLBACK_ENVIRON_V3 :: struct
{
    Version : u32;
    Pool : PTP_POOL;
    CleanupGroup : s64;
    CleanupGroupCancelCallback : PTP_CLEANUP_GROUP_CANCEL_CALLBACK;
    RaceDll : *void;
    ActivationContext : s64;
    FinalizationCallback : PTP_SIMPLE_CALLBACK;
    u : _u_e__Union;
    CallbackPriority : TP_CALLBACK_PRIORITY;
    Size : u32;

    _u_e__Union :: union
    {
        Flags : u32;
        s : _s_e__Struct;

        _s_e__Struct :: struct
        {
            _bitfield : u32;
        }
    }

    _ACTIVATION_CONTEXT :: struct
    {
    }
}

TP_CALLBACK_INSTANCE :: struct
{
}

TP_CALLBACK_PRIORITY :: enum s32
{
    HIGH :: 0;
    NORMAL :: 1;
    LOW :: 2;
    INVALID :: 3;
    COUNT :: 3;
}

TP_CALLBACK_PRIORITY_HIGH :: 0;
TP_CALLBACK_PRIORITY_NORMAL :: 1;
TP_CALLBACK_PRIORITY_LOW :: 2;
TP_CALLBACK_PRIORITY_INVALID :: 3;
TP_CALLBACK_PRIORITY_COUNT :: 3;

TP_IO :: struct
{
}

TP_POOL_STACK_INFORMATION :: struct
{
    StackReserve : u64;
    StackCommit : u64;
}

TP_TIMER :: struct
{
}

TP_WAIT :: struct
{
}

TP_WORK :: struct
{
}

TimerQueueHandle :: s64;

UMS_SCHEDULER_STARTUP_INFO :: struct
{
    UmsVersion : u32;
    CompletionList : *void;
    SchedulerProc : PRTL_UMS_SCHEDULER_ENTRY_POINT;
    SchedulerParam : *void;
}

UMS_SYSTEM_THREAD_INFORMATION :: struct
{
    UmsVersion : u32;
    union
    {
        struct
        {
            _bitfield : u32;
        }; // Anonymous
        ThreadUmsFlags : u32;
    }; // Anonymous
}

WAITORTIMERCALLBACK :: #type (param0 : *void, param1 : BOOLEAN) -> void #c_call;

WORKER_THREAD_FLAGS :: enum_flags u32
{
    WT_EXECUTEDEFAULT :: 0;
    WT_EXECUTEINIOTHREAD :: 1;
    WT_EXECUTEINPERSISTENTTHREAD :: 128;
    WT_EXECUTEINWAITTHREAD :: 4;
    WT_EXECUTELONGFUNCTION :: 16;
    WT_EXECUTEONLYONCE :: 8;
    WT_TRANSFER_IMPERSONATION :: 256;
    WT_EXECUTEINTIMERTHREAD :: 32;
}

WT_EXECUTEDEFAULT :: 0;
WT_EXECUTEINIOTHREAD :: 1;
WT_EXECUTEINPERSISTENTTHREAD :: 128;
WT_EXECUTEINWAITTHREAD :: 4;
WT_EXECUTELONGFUNCTION :: 16;
WT_EXECUTEONLYONCE :: 8;
WT_TRANSFER_IMPERSONATION :: 256;
WT_EXECUTEINTIMERTHREAD :: 32;

// Functions

AcquireSRWLockExclusive :: (SRWLock : *RTL_SRWLOCK)  #foreign KERNEL32;
AcquireSRWLockShared :: (SRWLock : *RTL_SRWLOCK)  #foreign KERNEL32;
AddIntegrityLabelToBoundaryDescriptor :: (BoundaryDescriptor : *HANDLE, IntegrityLabel : PSID) -> BOOL #foreign KERNEL32;
AddSIDToBoundaryDescriptor :: (BoundaryDescriptor : *HANDLE, RequiredSid : PSID) -> BOOL #foreign KERNEL32;
AttachThreadInput :: (idAttach : u32, idAttachTo : u32, fAttach : BOOL) -> BOOL #foreign USER32;
CallbackMayRunLong :: (pci : *TP_CALLBACK_INSTANCE) -> BOOL #foreign KERNEL32;
CancelThreadpoolIo :: (pio : *TP_IO)  #foreign KERNEL32;
CancelWaitableTimer :: (hTimer : HANDLE) -> BOOL #foreign KERNEL32;
ChangeTimerQueueTimer :: (TimerQueue : HANDLE, Timer : HANDLE, DueTime : u32, Period : u32) -> BOOL #foreign KERNEL32;
ClosePrivateNamespace :: (Handle : NamespaceHandle, Flags : u32) -> BOOLEAN #foreign KERNEL32;
CloseThreadpool :: (ptpp : PTP_POOL)  #foreign KERNEL32;
CloseThreadpoolCleanupGroup :: (ptpcg : s64)  #foreign KERNEL32;
CloseThreadpoolCleanupGroupMembers :: (ptpcg : s64, fCancelPendingCallbacks : BOOL, pvCleanupContext : *void)  #foreign KERNEL32;
CloseThreadpoolIo :: (pio : *TP_IO)  #foreign KERNEL32;
CloseThreadpoolTimer :: (pti : *TP_TIMER)  #foreign KERNEL32;
CloseThreadpoolWait :: (pwa : *TP_WAIT)  #foreign KERNEL32;
CloseThreadpoolWork :: (pwk : *TP_WORK)  #foreign KERNEL32;
ConvertFiberToThread :: () -> BOOL #foreign KERNEL32;
ConvertThreadToFiber :: (lpParameter : *void) -> *void #foreign KERNEL32;
ConvertThreadToFiberEx :: (lpParameter : *void, dwFlags : u32) -> *void #foreign KERNEL32;
CreateBoundaryDescriptorA :: (Name : PSTR, Flags : u32) -> BoundaryDescriptorHandle #foreign KERNEL32;
CreateBoundaryDescriptorW :: (Name : PWSTR, Flags : u32) -> BoundaryDescriptorHandle #foreign KERNEL32;
CreateEventA :: (lpEventAttributes : *SECURITY_ATTRIBUTES, bManualReset : BOOL, bInitialState : BOOL, lpName : PSTR) -> HANDLE #foreign KERNEL32;
CreateEventExA :: (lpEventAttributes : *SECURITY_ATTRIBUTES, lpName : PSTR, dwFlags : CREATE_EVENT, dwDesiredAccess : u32) -> HANDLE #foreign KERNEL32;
CreateEventExW :: (lpEventAttributes : *SECURITY_ATTRIBUTES, lpName : PWSTR, dwFlags : CREATE_EVENT, dwDesiredAccess : u32) -> HANDLE #foreign KERNEL32;
CreateEventW :: (lpEventAttributes : *SECURITY_ATTRIBUTES, bManualReset : BOOL, bInitialState : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
CreateFiber :: (dwStackSize : u64, lpStartAddress : LPFIBER_START_ROUTINE, lpParameter : *void) -> *void #foreign KERNEL32;
CreateFiberEx :: (
    dwStackCommitSize : u64,
    dwStackReserveSize : u64,
    dwFlags : u32,
    lpStartAddress : LPFIBER_START_ROUTINE,
    lpParameter : *void
) -> *void #foreign KERNEL32;

CreateMutexA :: (lpMutexAttributes : *SECURITY_ATTRIBUTES, bInitialOwner : BOOL, lpName : PSTR) -> HANDLE #foreign KERNEL32;
CreateMutexExA :: (lpMutexAttributes : *SECURITY_ATTRIBUTES, lpName : PSTR, dwFlags : u32, dwDesiredAccess : u32) -> HANDLE #foreign KERNEL32;
CreateMutexExW :: (lpMutexAttributes : *SECURITY_ATTRIBUTES, lpName : PWSTR, dwFlags : u32, dwDesiredAccess : u32) -> HANDLE #foreign KERNEL32;
CreateMutexW :: (lpMutexAttributes : *SECURITY_ATTRIBUTES, bInitialOwner : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
CreatePrivateNamespaceA :: (lpPrivateNamespaceAttributes : *SECURITY_ATTRIBUTES, lpBoundaryDescriptor : *void, lpAliasPrefix : PSTR) -> NamespaceHandle #foreign KERNEL32;
CreatePrivateNamespaceW :: (lpPrivateNamespaceAttributes : *SECURITY_ATTRIBUTES, lpBoundaryDescriptor : *void, lpAliasPrefix : PWSTR) -> NamespaceHandle #foreign KERNEL32;
CreateProcessA :: (
    lpApplicationName : PSTR,
    lpCommandLine : PSTR,
    lpProcessAttributes : *SECURITY_ATTRIBUTES,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    bInheritHandles : BOOL,
    dwCreationFlags : PROCESS_CREATION_FLAGS,
    lpEnvironment : *void,
    lpCurrentDirectory : PSTR,
    lpStartupInfo : *STARTUPINFOA,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign KERNEL32;

CreateProcessAsUserA :: (
    hToken : HANDLE,
    lpApplicationName : PSTR,
    lpCommandLine : PSTR,
    lpProcessAttributes : *SECURITY_ATTRIBUTES,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    bInheritHandles : BOOL,
    dwCreationFlags : u32,
    lpEnvironment : *void,
    lpCurrentDirectory : PSTR,
    lpStartupInfo : *STARTUPINFOA,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign ADVAPI32;

CreateProcessAsUserW :: (
    hToken : HANDLE,
    lpApplicationName : PWSTR,
    lpCommandLine : PWSTR,
    lpProcessAttributes : *SECURITY_ATTRIBUTES,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    bInheritHandles : BOOL,
    dwCreationFlags : u32,
    lpEnvironment : *void,
    lpCurrentDirectory : PWSTR,
    lpStartupInfo : *STARTUPINFOW,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign ADVAPI32;

CreateProcessW :: (
    lpApplicationName : PWSTR,
    lpCommandLine : PWSTR,
    lpProcessAttributes : *SECURITY_ATTRIBUTES,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    bInheritHandles : BOOL,
    dwCreationFlags : PROCESS_CREATION_FLAGS,
    lpEnvironment : *void,
    lpCurrentDirectory : PWSTR,
    lpStartupInfo : *STARTUPINFOW,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign KERNEL32;

CreateProcessWithLogonW :: (
    lpUsername : PWSTR,
    lpDomain : PWSTR,
    lpPassword : PWSTR,
    dwLogonFlags : CREATE_PROCESS_LOGON_FLAGS,
    lpApplicationName : PWSTR,
    lpCommandLine : PWSTR,
    dwCreationFlags : u32,
    lpEnvironment : *void,
    lpCurrentDirectory : PWSTR,
    lpStartupInfo : *STARTUPINFOW,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign ADVAPI32;

CreateProcessWithTokenW :: (
    hToken : HANDLE,
    dwLogonFlags : CREATE_PROCESS_LOGON_FLAGS,
    lpApplicationName : PWSTR,
    lpCommandLine : PWSTR,
    dwCreationFlags : u32,
    lpEnvironment : *void,
    lpCurrentDirectory : PWSTR,
    lpStartupInfo : *STARTUPINFOW,
    lpProcessInformation : *PROCESS_INFORMATION
) -> BOOL #foreign ADVAPI32;

CreateRemoteThread :: (
    hProcess : HANDLE,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    dwStackSize : u64,
    lpStartAddress : LPTHREAD_START_ROUTINE,
    lpParameter : *void,
    dwCreationFlags : u32,
    lpThreadId : *u32
) -> HANDLE #foreign KERNEL32;

CreateRemoteThreadEx :: (
    hProcess : HANDLE,
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    dwStackSize : u64,
    lpStartAddress : LPTHREAD_START_ROUTINE,
    lpParameter : *void,
    dwCreationFlags : u32,
    lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST,
    lpThreadId : *u32
) -> HANDLE #foreign KERNEL32;

CreateSemaphoreA :: (lpSemaphoreAttributes : *SECURITY_ATTRIBUTES, lInitialCount : s32, lMaximumCount : s32, lpName : PSTR) -> HANDLE #foreign KERNEL32;
CreateSemaphoreExA :: (
    lpSemaphoreAttributes : *SECURITY_ATTRIBUTES,
    lInitialCount : s32,
    lMaximumCount : s32,
    lpName : PSTR,
    dwFlags : u32,
    dwDesiredAccess : u32
) -> HANDLE #foreign KERNEL32;

CreateSemaphoreExW :: (
    lpSemaphoreAttributes : *SECURITY_ATTRIBUTES,
    lInitialCount : s32,
    lMaximumCount : s32,
    lpName : PWSTR,
    dwFlags : u32,
    dwDesiredAccess : u32
) -> HANDLE #foreign KERNEL32;

CreateSemaphoreW :: (lpSemaphoreAttributes : *SECURITY_ATTRIBUTES, lInitialCount : s32, lMaximumCount : s32, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
CreateThread :: (
    lpThreadAttributes : *SECURITY_ATTRIBUTES,
    dwStackSize : u64,
    lpStartAddress : LPTHREAD_START_ROUTINE,
    lpParameter : *void,
    dwCreationFlags : THREAD_CREATION_FLAGS,
    lpThreadId : *u32
) -> HANDLE #foreign KERNEL32;

CreateThreadpool :: (reserved : *void) -> PTP_POOL #foreign KERNEL32;
CreateThreadpoolCleanupGroup :: () -> s64 #foreign KERNEL32;
CreateThreadpoolIo :: (fl : HANDLE, pfnio : PTP_WIN32_IO_CALLBACK, pv : *void, pcbe : *TP_CALLBACK_ENVIRON_V3) -> *TP_IO #foreign KERNEL32;
CreateThreadpoolTimer :: (pfnti : PTP_TIMER_CALLBACK, pv : *void, pcbe : *TP_CALLBACK_ENVIRON_V3) -> *TP_TIMER #foreign KERNEL32;
CreateThreadpoolWait :: (pfnwa : PTP_WAIT_CALLBACK, pv : *void, pcbe : *TP_CALLBACK_ENVIRON_V3) -> *TP_WAIT #foreign KERNEL32;
CreateThreadpoolWork :: (pfnwk : PTP_WORK_CALLBACK, pv : *void, pcbe : *TP_CALLBACK_ENVIRON_V3) -> *TP_WORK #foreign KERNEL32;
CreateTimerQueue :: () -> HANDLE #foreign KERNEL32;
CreateTimerQueueTimer :: (
    phNewTimer : *HANDLE,
    TimerQueue : HANDLE,
    Callback : WAITORTIMERCALLBACK,
    Parameter : *void,
    DueTime : u32,
    Period : u32,
    Flags : WORKER_THREAD_FLAGS
) -> BOOL #foreign KERNEL32;

CreateUmsCompletionList :: (UmsCompletionList : **void) -> BOOL #foreign KERNEL32;
CreateUmsThreadContext :: (lpUmsThread : **void) -> BOOL #foreign KERNEL32;
CreateWaitableTimerExW :: (lpTimerAttributes : *SECURITY_ATTRIBUTES, lpTimerName : PWSTR, dwFlags : u32, dwDesiredAccess : u32) -> HANDLE #foreign KERNEL32;
CreateWaitableTimerW :: (lpTimerAttributes : *SECURITY_ATTRIBUTES, bManualReset : BOOL, lpTimerName : PWSTR) -> HANDLE #foreign KERNEL32;
DeleteBoundaryDescriptor :: (BoundaryDescriptor : BoundaryDescriptorHandle)  #foreign KERNEL32;
DeleteCriticalSection :: (lpCriticalSection : *RTL_CRITICAL_SECTION)  #foreign KERNEL32;
DeleteFiber :: (lpFiber : *void)  #foreign KERNEL32;
DeleteProcThreadAttributeList :: (lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST)  #foreign KERNEL32;
DeleteSynchronizationBarrier :: (lpBarrier : *RTL_BARRIER) -> BOOL #foreign KERNEL32;
DeleteTimerQueue :: (TimerQueue : HANDLE) -> BOOL #foreign KERNEL32;
DeleteTimerQueueEx :: (TimerQueue : HANDLE, CompletionEvent : HANDLE) -> BOOL #foreign KERNEL32;
DeleteTimerQueueTimer :: (TimerQueue : HANDLE, Timer : HANDLE, CompletionEvent : HANDLE) -> BOOL #foreign KERNEL32;
DeleteUmsCompletionList :: (UmsCompletionList : *void) -> BOOL #foreign KERNEL32;
DeleteUmsThreadContext :: (UmsThread : *void) -> BOOL #foreign KERNEL32;
DequeueUmsCompletionListItems :: (UmsCompletionList : *void, WaitTimeOut : u32, UmsThreadList : **void) -> BOOL #foreign KERNEL32;
DisassociateCurrentThreadFromCallback :: (pci : *TP_CALLBACK_INSTANCE)  #foreign KERNEL32;
EnterCriticalSection :: (lpCriticalSection : *RTL_CRITICAL_SECTION)  #foreign KERNEL32;
EnterSynchronizationBarrier :: (lpBarrier : *RTL_BARRIER, dwFlags : u32) -> BOOL #foreign KERNEL32;
EnterUmsSchedulingMode :: (SchedulerStartupInfo : *UMS_SCHEDULER_STARTUP_INFO) -> BOOL #foreign KERNEL32;
ExecuteUmsThread :: (UmsThread : *void) -> BOOL #foreign KERNEL32;
ExitProcess :: (uExitCode : u32)  #foreign KERNEL32;
ExitThread :: (dwExitCode : u32)  #foreign KERNEL32;
FlsAlloc :: (lpCallback : PFLS_CALLBACK_FUNCTION) -> u32 #foreign KERNEL32;
FlsFree :: (dwFlsIndex : u32) -> BOOL #foreign KERNEL32;
FlsGetValue :: (dwFlsIndex : u32) -> *void #foreign KERNEL32;
FlsSetValue :: (dwFlsIndex : u32, lpFlsData : *void) -> BOOL #foreign KERNEL32;
FlushProcessWriteBuffers :: ()  #foreign KERNEL32;
FreeLibraryWhenCallbackReturns :: (pci : *TP_CALLBACK_INSTANCE, mod : HINSTANCE)  #foreign KERNEL32;
GetActiveProcessorCount :: (GroupNumber : u16) -> u32 #foreign KERNEL32;
GetActiveProcessorGroupCount :: () -> u16 #foreign KERNEL32;
GetCurrentProcess :: () -> HANDLE #foreign KERNEL32;
GetCurrentProcessId :: () -> u32 #foreign KERNEL32;
GetCurrentProcessorNumber :: () -> u32 #foreign KERNEL32;
GetCurrentProcessorNumberEx :: (ProcNumber : *PROCESSOR_NUMBER)  #foreign KERNEL32;
GetCurrentThread :: () -> HANDLE #foreign KERNEL32;
GetCurrentThreadId :: () -> u32 #foreign KERNEL32;
GetCurrentThreadStackLimits :: (LowLimit : *u64, HighLimit : *u64)  #foreign KERNEL32;
GetCurrentUmsThread :: () -> *void #foreign KERNEL32;
GetExitCodeProcess :: (hProcess : HANDLE, lpExitCode : *u32) -> BOOL #foreign KERNEL32;
GetExitCodeThread :: (hThread : HANDLE, lpExitCode : *u32) -> BOOL #foreign KERNEL32;
GetGuiResources :: (hProcess : HANDLE, uiFlags : GET_GUI_RESOURCES_FLAGS) -> u32 #foreign USER32;
GetMaximumProcessorCount :: (GroupNumber : u16) -> u32 #foreign KERNEL32;
GetMaximumProcessorGroupCount :: () -> u16 #foreign KERNEL32;
GetNextUmsListItem :: (UmsContext : *void) -> *void #foreign KERNEL32;
GetNumaAvailableMemoryNode :: (Node : u8, AvailableBytes : *u64) -> BOOL #foreign KERNEL32;
GetNumaAvailableMemoryNodeEx :: (Node : u16, AvailableBytes : *u64) -> BOOL #foreign KERNEL32;
GetNumaHighestNodeNumber :: (HighestNodeNumber : *u32) -> BOOL #foreign KERNEL32;
GetNumaNodeNumberFromHandle :: (hFile : HANDLE, NodeNumber : *u16) -> BOOL #foreign KERNEL32;
GetNumaNodeProcessorMask :: (Node : u8, ProcessorMask : *u64) -> BOOL #foreign KERNEL32;
GetNumaNodeProcessorMaskEx :: (Node : u16, ProcessorMask : *GROUP_AFFINITY) -> BOOL #foreign KERNEL32;
GetNumaProcessorNode :: (Processor : u8, NodeNumber : *u8) -> BOOL #foreign KERNEL32;
GetNumaProcessorNodeEx :: (Processor : *PROCESSOR_NUMBER, NodeNumber : *u16) -> BOOL #foreign KERNEL32;
GetNumaProximityNode :: (ProximityId : u32, NodeNumber : *u8) -> BOOL #foreign KERNEL32;
GetNumaProximityNodeEx :: (ProximityId : u32, NodeNumber : *u16) -> BOOL #foreign KERNEL32;
GetPriorityClass :: (hProcess : HANDLE) -> u32 #foreign KERNEL32;
GetProcessAffinityMask :: (hProcess : HANDLE, lpProcessAffinityMask : *u64, lpSystemAffinityMask : *u64) -> BOOL #foreign KERNEL32;
GetProcessDEPPolicy :: (hProcess : HANDLE, lpFlags : *u32, lpPermanent : *BOOL) -> BOOL #foreign KERNEL32;
GetProcessDefaultCpuSets :: (Process : HANDLE, CpuSetIds : *u32, CpuSetIdCount : u32, RequiredIdCount : *u32) -> BOOL #foreign KERNEL32;
GetProcessGroupAffinity :: (hProcess : HANDLE, GroupCount : *u16, GroupArray : *u16) -> BOOL #foreign KERNEL32;
GetProcessHandleCount :: (hProcess : HANDLE, pdwHandleCount : *u32) -> BOOL #foreign KERNEL32;
GetProcessId :: (Process : HANDLE) -> u32 #foreign KERNEL32;
GetProcessIdOfThread :: (Thread : HANDLE) -> u32 #foreign KERNEL32;
GetProcessInformation :: (hProcess : HANDLE, ProcessInformationClass : PROCESS_INFORMATION_CLASS, ProcessInformation : *void, ProcessInformationSize : u32) -> BOOL #foreign KERNEL32;
GetProcessIoCounters :: (hProcess : HANDLE, lpIoCounters : *IO_COUNTERS) -> BOOL #foreign KERNEL32;
GetProcessMitigationPolicy :: (hProcess : HANDLE, MitigationPolicy : PROCESS_MITIGATION_POLICY, lpBuffer : *void, dwLength : u64) -> BOOL #foreign KERNEL32;
GetProcessPriorityBoost :: (hProcess : HANDLE, pDisablePriorityBoost : *BOOL) -> BOOL #foreign KERNEL32;
GetProcessShutdownParameters :: (lpdwLevel : *u32, lpdwFlags : *u32) -> BOOL #foreign KERNEL32;
GetProcessTimes :: (
    hProcess : HANDLE,
    lpCreationTime : *FILETIME,
    lpExitTime : *FILETIME,
    lpKernelTime : *FILETIME,
    lpUserTime : *FILETIME
) -> BOOL #foreign KERNEL32;

GetProcessVersion :: (ProcessId : u32) -> u32 #foreign KERNEL32;
GetProcessWorkingSetSize :: (hProcess : HANDLE, lpMinimumWorkingSetSize : *u64, lpMaximumWorkingSetSize : *u64) -> BOOL #foreign KERNEL32;
GetStartupInfoA :: (lpStartupInfo : *STARTUPINFOA)  #foreign KERNEL32;
GetStartupInfoW :: (lpStartupInfo : *STARTUPINFOW)  #foreign KERNEL32;
GetSystemTimes :: (lpIdleTime : *FILETIME, lpKernelTime : *FILETIME, lpUserTime : *FILETIME) -> BOOL #foreign KERNEL32;
GetThreadDescription :: (hThread : HANDLE, ppszThreadDescription : *PWSTR) -> HRESULT #foreign KERNEL32;
GetThreadGroupAffinity :: (hThread : HANDLE, GroupAffinity : *GROUP_AFFINITY) -> BOOL #foreign KERNEL32;
GetThreadIOPendingFlag :: (hThread : HANDLE, lpIOIsPending : *BOOL) -> BOOL #foreign KERNEL32;
GetThreadId :: (Thread : HANDLE) -> u32 #foreign KERNEL32;
GetThreadIdealProcessorEx :: (hThread : HANDLE, lpIdealProcessor : *PROCESSOR_NUMBER) -> BOOL #foreign KERNEL32;
GetThreadInformation :: (hThread : HANDLE, ThreadInformationClass : THREAD_INFORMATION_CLASS, ThreadInformation : *void, ThreadInformationSize : u32) -> BOOL #foreign KERNEL32;
GetThreadPriority :: (hThread : HANDLE) -> s32 #foreign KERNEL32;
GetThreadPriorityBoost :: (hThread : HANDLE, pDisablePriorityBoost : *BOOL) -> BOOL #foreign KERNEL32;
GetThreadSelectedCpuSets :: (Thread : HANDLE, CpuSetIds : *u32, CpuSetIdCount : u32, RequiredIdCount : *u32) -> BOOL #foreign KERNEL32;
GetThreadTimes :: (
    hThread : HANDLE,
    lpCreationTime : *FILETIME,
    lpExitTime : *FILETIME,
    lpKernelTime : *FILETIME,
    lpUserTime : *FILETIME
) -> BOOL #foreign KERNEL32;

GetUmsCompletionListEvent :: (UmsCompletionList : *void, UmsCompletionEvent : *HANDLE) -> BOOL #foreign KERNEL32;
GetUmsSystemThreadInformation :: (ThreadHandle : HANDLE, SystemThreadInfo : *UMS_SYSTEM_THREAD_INFORMATION) -> BOOL #foreign KERNEL32;
InitOnceBeginInitialize :: (lpInitOnce : *RTL_RUN_ONCE, dwFlags : u32, fPending : *BOOL, lpContext : **void) -> BOOL #foreign KERNEL32;
InitOnceComplete :: (lpInitOnce : *RTL_RUN_ONCE, dwFlags : u32, lpContext : *void) -> BOOL #foreign KERNEL32;
InitOnceExecuteOnce :: (InitOnce : *RTL_RUN_ONCE, InitFn : PINIT_ONCE_FN, Parameter : *void, Context : **void) -> BOOL #foreign KERNEL32;
InitOnceInitialize :: (InitOnce : *RTL_RUN_ONCE)  #foreign KERNEL32;
InitializeConditionVariable :: (ConditionVariable : *RTL_CONDITION_VARIABLE)  #foreign KERNEL32;
InitializeCriticalSection :: (lpCriticalSection : *RTL_CRITICAL_SECTION)  #foreign KERNEL32;
InitializeCriticalSectionAndSpinCount :: (lpCriticalSection : *RTL_CRITICAL_SECTION, dwSpinCount : u32) -> BOOL #foreign KERNEL32;
InitializeCriticalSectionEx :: (lpCriticalSection : *RTL_CRITICAL_SECTION, dwSpinCount : u32, Flags : u32) -> BOOL #foreign KERNEL32;
InitializeProcThreadAttributeList :: (lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST, dwAttributeCount : u32, dwFlags : u32, lpSize : *u64) -> BOOL #foreign KERNEL32;
InitializeSListHead :: (ListHead : *SLIST_HEADER)  #foreign KERNEL32;
InitializeSRWLock :: (SRWLock : *RTL_SRWLOCK)  #foreign KERNEL32;
InitializeSynchronizationBarrier :: (lpBarrier : *RTL_BARRIER, lTotalThreads : s32, lSpinCount : s32) -> BOOL #foreign KERNEL32;
InterlockedFlushSList :: (ListHead : *SLIST_HEADER) -> *SLIST_ENTRY #foreign KERNEL32;
InterlockedPopEntrySList :: (ListHead : *SLIST_HEADER) -> *SLIST_ENTRY #foreign KERNEL32;
InterlockedPushEntrySList :: (ListHead : *SLIST_HEADER, ListEntry : *SLIST_ENTRY) -> *SLIST_ENTRY #foreign KERNEL32;
InterlockedPushListSListEx :: (ListHead : *SLIST_HEADER, List : *SLIST_ENTRY, ListEnd : *SLIST_ENTRY, Count : u32) -> *SLIST_ENTRY #foreign KERNEL32;
IsImmersiveProcess :: (hProcess : HANDLE) -> BOOL #foreign USER32;
IsProcessCritical :: (hProcess : HANDLE, Critical : *BOOL) -> BOOL #foreign KERNEL32;
IsProcessorFeaturePresent :: (ProcessorFeature : PROCESSOR_FEATURE_ID) -> BOOL #foreign KERNEL32;
IsThreadAFiber :: () -> BOOL #foreign KERNEL32;
IsThreadpoolTimerSet :: (pti : *TP_TIMER) -> BOOL #foreign KERNEL32;
IsWow64Process :: (hProcess : HANDLE, Wow64Process : *BOOL) -> BOOL #foreign KERNEL32;
IsWow64Process2 :: (hProcess : HANDLE, pProcessMachine : *u16, pNativeMachine : *u16) -> BOOL #foreign KERNEL32;
LeaveCriticalSection :: (lpCriticalSection : *RTL_CRITICAL_SECTION)  #foreign KERNEL32;
LeaveCriticalSectionWhenCallbackReturns :: (pci : *TP_CALLBACK_INSTANCE, pcs : *RTL_CRITICAL_SECTION)  #foreign KERNEL32;
NtQueryInformationProcess :: (
    ProcessHandle : HANDLE,
    ProcessInformationClass : PROCESSINFOCLASS,
    ProcessInformation : *void,
    ProcessInformationLength : u32,
    ReturnLength : *u32
) -> NTSTATUS #foreign ntdll;

NtQueryInformationThread :: (
    ThreadHandle : HANDLE,
    ThreadInformationClass : THREADINFOCLASS,
    ThreadInformation : *void,
    ThreadInformationLength : u32,
    ReturnLength : *u32
) -> NTSTATUS #foreign ntdll;

NtSetInformationThread :: (ThreadHandle : HANDLE, ThreadInformationClass : THREADINFOCLASS, ThreadInformation : *void, ThreadInformationLength : u32) -> NTSTATUS #foreign ntdll;
OpenEventA :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PSTR) -> HANDLE #foreign KERNEL32;
OpenEventW :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
OpenMutexW :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
OpenPrivateNamespaceA :: (lpBoundaryDescriptor : *void, lpAliasPrefix : PSTR) -> NamespaceHandle #foreign KERNEL32;
OpenPrivateNamespaceW :: (lpBoundaryDescriptor : *void, lpAliasPrefix : PWSTR) -> NamespaceHandle #foreign KERNEL32;
OpenProcess :: (dwDesiredAccess : PROCESS_ACCESS_RIGHTS, bInheritHandle : BOOL, dwProcessId : u32) -> HANDLE #foreign KERNEL32;
OpenProcessToken :: (ProcessHandle : HANDLE, DesiredAccess : TOKEN_ACCESS_MASK, TokenHandle : *HANDLE) -> BOOL #foreign ADVAPI32;
OpenSemaphoreW :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpName : PWSTR) -> HANDLE #foreign KERNEL32;
OpenThread :: (dwDesiredAccess : THREAD_ACCESS_RIGHTS, bInheritHandle : BOOL, dwThreadId : u32) -> HANDLE #foreign KERNEL32;
OpenThreadToken :: (ThreadHandle : HANDLE, DesiredAccess : TOKEN_ACCESS_MASK, OpenAsSelf : BOOL, TokenHandle : *HANDLE) -> BOOL #foreign ADVAPI32;
OpenWaitableTimerW :: (dwDesiredAccess : u32, bInheritHandle : BOOL, lpTimerName : PWSTR) -> HANDLE #foreign KERNEL32;
PulseEvent :: (hEvent : HANDLE) -> BOOL #foreign KERNEL32;
QueryDepthSList :: (ListHead : *SLIST_HEADER) -> u16 #foreign KERNEL32;
QueryFullProcessImageNameA :: (hProcess : HANDLE, dwFlags : PROCESS_NAME_FORMAT, lpExeName : *u8, lpdwSize : *u32) -> BOOL #foreign KERNEL32;
QueryFullProcessImageNameW :: (hProcess : HANDLE, dwFlags : PROCESS_NAME_FORMAT, lpExeName : *u16, lpdwSize : *u32) -> BOOL #foreign KERNEL32;
QueryProcessAffinityUpdateMode :: (hProcess : HANDLE, lpdwFlags : *PROCESS_AFFINITY_AUTO_UPDATE_FLAGS) -> BOOL #foreign KERNEL32;
QueryProtectedPolicy :: (PolicyGuid : *GUID, PolicyValue : *u64) -> BOOL #foreign KERNEL32;
QueryThreadpoolStackInformation :: (ptpp : PTP_POOL, ptpsi : *TP_POOL_STACK_INFORMATION) -> BOOL #foreign KERNEL32;
QueryUmsThreadInformation :: (
    UmsThread : *void,
    UmsThreadInfoClass : RTL_UMS_THREAD_INFO_CLASS,
    UmsThreadInformation : *void,
    UmsThreadInformationLength : u32,
    ReturnLength : *u32
) -> BOOL #foreign KERNEL32;

QueueUserAPC :: (pfnAPC : PAPCFUNC, hThread : HANDLE, dwData : u64) -> u32 #foreign KERNEL32;
QueueUserAPC2 :: (ApcRoutine : PAPCFUNC, Thread : HANDLE, Data : u64, Flags : QUEUE_USER_APC_FLAGS) -> BOOL #foreign KERNEL32;
QueueUserWorkItem :: (Function : LPTHREAD_START_ROUTINE, Context : *void, Flags : WORKER_THREAD_FLAGS) -> BOOL #foreign KERNEL32;
RegisterWaitForSingleObject :: (
    phNewWaitObject : *HANDLE,
    hObject : HANDLE,
    Callback : WAITORTIMERCALLBACK,
    Context : *void,
    dwMilliseconds : u32,
    dwFlags : WORKER_THREAD_FLAGS
) -> BOOL #foreign KERNEL32;

ReleaseMutex :: (hMutex : HANDLE) -> BOOL #foreign KERNEL32;
ReleaseMutexWhenCallbackReturns :: (pci : *TP_CALLBACK_INSTANCE, mut : HANDLE)  #foreign KERNEL32;
ReleaseSRWLockExclusive :: (SRWLock : *RTL_SRWLOCK)  #foreign KERNEL32;
ReleaseSRWLockShared :: (SRWLock : *RTL_SRWLOCK)  #foreign KERNEL32;
ReleaseSemaphore :: (hSemaphore : HANDLE, lReleaseCount : s32, lpPreviousCount : *s32) -> BOOL #foreign KERNEL32;
ReleaseSemaphoreWhenCallbackReturns :: (pci : *TP_CALLBACK_INSTANCE, sem : HANDLE, crel : u32)  #foreign KERNEL32;
ResetEvent :: (hEvent : HANDLE) -> BOOL #foreign KERNEL32;
ResumeThread :: (hThread : HANDLE) -> u32 #foreign KERNEL32;
SetCriticalSectionSpinCount :: (lpCriticalSection : *RTL_CRITICAL_SECTION, dwSpinCount : u32) -> u32 #foreign KERNEL32;
SetEvent :: (hEvent : HANDLE) -> BOOL #foreign KERNEL32;
SetEventWhenCallbackReturns :: (pci : *TP_CALLBACK_INSTANCE, evt : HANDLE)  #foreign KERNEL32;
SetPriorityClass :: (hProcess : HANDLE, dwPriorityClass : PROCESS_CREATION_FLAGS) -> BOOL #foreign KERNEL32;
SetProcessAffinityMask :: (hProcess : HANDLE, dwProcessAffinityMask : u64) -> BOOL #foreign KERNEL32;
SetProcessAffinityUpdateMode :: (hProcess : HANDLE, dwFlags : PROCESS_AFFINITY_AUTO_UPDATE_FLAGS) -> BOOL #foreign KERNEL32;
SetProcessDEPPolicy :: (dwFlags : PROCESS_DEP_FLAGS) -> BOOL #foreign KERNEL32;
SetProcessDefaultCpuSets :: (Process : HANDLE, CpuSetIds : *u32, CpuSetIdCount : u32) -> BOOL #foreign KERNEL32;
SetProcessDynamicEHContinuationTargets :: (Process : HANDLE, NumberOfTargets : u16, Targets : *PROCESS_DYNAMIC_EH_CONTINUATION_TARGET) -> BOOL #foreign KERNEL32;
SetProcessDynamicEnforcedCetCompatibleRanges :: (Process : HANDLE, NumberOfRanges : u16, Ranges : *PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE) -> BOOL #foreign KERNEL32;
SetProcessInformation :: (hProcess : HANDLE, ProcessInformationClass : PROCESS_INFORMATION_CLASS, ProcessInformation : *void, ProcessInformationSize : u32) -> BOOL #foreign KERNEL32;
SetProcessMitigationPolicy :: (MitigationPolicy : PROCESS_MITIGATION_POLICY, lpBuffer : *void, dwLength : u64) -> BOOL #foreign KERNEL32;
SetProcessPriorityBoost :: (hProcess : HANDLE, bDisablePriorityBoost : BOOL) -> BOOL #foreign KERNEL32;
SetProcessRestrictionExemption :: (fEnableExemption : BOOL) -> BOOL #foreign USER32;
SetProcessShutdownParameters :: (dwLevel : u32, dwFlags : u32) -> BOOL #foreign KERNEL32;
SetProcessWorkingSetSize :: (hProcess : HANDLE, dwMinimumWorkingSetSize : u64, dwMaximumWorkingSetSize : u64) -> BOOL #foreign KERNEL32;
SetProtectedPolicy :: (PolicyGuid : *GUID, PolicyValue : u64, OldPolicyValue : *u64) -> BOOL #foreign KERNEL32;
SetThreadAffinityMask :: (hThread : HANDLE, dwThreadAffinityMask : u64) -> u64 #foreign KERNEL32;
SetThreadDescription :: (hThread : HANDLE, lpThreadDescription : PWSTR) -> HRESULT #foreign KERNEL32;
SetThreadGroupAffinity :: (hThread : HANDLE, GroupAffinity : *GROUP_AFFINITY, PreviousGroupAffinity : *GROUP_AFFINITY) -> BOOL #foreign KERNEL32;
SetThreadIdealProcessor :: (hThread : HANDLE, dwIdealProcessor : u32) -> u32 #foreign KERNEL32;
SetThreadIdealProcessorEx :: (hThread : HANDLE, lpIdealProcessor : *PROCESSOR_NUMBER, lpPreviousIdealProcessor : *PROCESSOR_NUMBER) -> BOOL #foreign KERNEL32;
SetThreadInformation :: (hThread : HANDLE, ThreadInformationClass : THREAD_INFORMATION_CLASS, ThreadInformation : *void, ThreadInformationSize : u32) -> BOOL #foreign KERNEL32;
SetThreadPriority :: (hThread : HANDLE, nPriority : THREAD_PRIORITY) -> BOOL #foreign KERNEL32;
SetThreadPriorityBoost :: (hThread : HANDLE, bDisablePriorityBoost : BOOL) -> BOOL #foreign KERNEL32;
SetThreadSelectedCpuSets :: (Thread : HANDLE, CpuSetIds : *u32, CpuSetIdCount : u32) -> BOOL #foreign KERNEL32;
SetThreadStackGuarantee :: (StackSizeInBytes : *u32) -> BOOL #foreign KERNEL32;
SetThreadToken :: (Thread : *HANDLE, Token : HANDLE) -> BOOL #foreign ADVAPI32;
SetThreadpoolStackInformation :: (ptpp : PTP_POOL, ptpsi : *TP_POOL_STACK_INFORMATION) -> BOOL #foreign KERNEL32;
SetThreadpoolThreadMaximum :: (ptpp : PTP_POOL, cthrdMost : u32)  #foreign KERNEL32;
SetThreadpoolThreadMinimum :: (ptpp : PTP_POOL, cthrdMic : u32) -> BOOL #foreign KERNEL32;
SetThreadpoolTimer :: (pti : *TP_TIMER, pftDueTime : *FILETIME, msPeriod : u32, msWindowLength : u32)  #foreign KERNEL32;
SetThreadpoolTimerEx :: (pti : *TP_TIMER, pftDueTime : *FILETIME, msPeriod : u32, msWindowLength : u32) -> BOOL #foreign KERNEL32;
SetThreadpoolWait :: (pwa : *TP_WAIT, h : HANDLE, pftTimeout : *FILETIME)  #foreign KERNEL32;
SetThreadpoolWaitEx :: (pwa : *TP_WAIT, h : HANDLE, pftTimeout : *FILETIME, Reserved : *void) -> BOOL #foreign KERNEL32;
SetTimerQueueTimer :: (
    TimerQueue : HANDLE,
    Callback : WAITORTIMERCALLBACK,
    Parameter : *void,
    DueTime : u32,
    Period : u32,
    PreferIo : BOOL
) -> HANDLE #foreign KERNEL32;

SetUmsThreadInformation :: (UmsThread : *void, UmsThreadInfoClass : RTL_UMS_THREAD_INFO_CLASS, UmsThreadInformation : *void, UmsThreadInformationLength : u32) -> BOOL #foreign KERNEL32;
SetWaitableTimer :: (
    hTimer : HANDLE,
    lpDueTime : *LARGE_INTEGER,
    lPeriod : s32,
    pfnCompletionRoutine : PTIMERAPCROUTINE,
    lpArgToCompletionRoutine : *void,
    fResume : BOOL
) -> BOOL #foreign KERNEL32;

SetWaitableTimerEx :: (
    hTimer : HANDLE,
    lpDueTime : *LARGE_INTEGER,
    lPeriod : s32,
    pfnCompletionRoutine : PTIMERAPCROUTINE,
    lpArgToCompletionRoutine : *void,
    WakeContext : *REASON_CONTEXT,
    TolerableDelay : u32
) -> BOOL #foreign KERNEL32;

Sleep :: (dwMilliseconds : u32)  #foreign KERNEL32;
SleepConditionVariableCS :: (ConditionVariable : *RTL_CONDITION_VARIABLE, CriticalSection : *RTL_CRITICAL_SECTION, dwMilliseconds : u32) -> BOOL #foreign KERNEL32;
SleepConditionVariableSRW :: (ConditionVariable : *RTL_CONDITION_VARIABLE, SRWLock : *RTL_SRWLOCK, dwMilliseconds : u32, Flags : u32) -> BOOL #foreign KERNEL32;
SleepEx :: (dwMilliseconds : u32, bAlertable : BOOL) -> u32 #foreign KERNEL32;
StartThreadpoolIo :: (pio : *TP_IO)  #foreign KERNEL32;
SubmitThreadpoolWork :: (pwk : *TP_WORK)  #foreign KERNEL32;
SuspendThread :: (hThread : HANDLE) -> u32 #foreign KERNEL32;
SwitchToFiber :: (lpFiber : *void)  #foreign KERNEL32;
SwitchToThread :: () -> BOOL #foreign KERNEL32;
TerminateProcess :: (hProcess : HANDLE, uExitCode : u32) -> BOOL #foreign KERNEL32;
TerminateThread :: (hThread : HANDLE, dwExitCode : u32) -> BOOL #foreign KERNEL32;
TlsAlloc :: () -> u32 #foreign KERNEL32;
TlsFree :: (dwTlsIndex : u32) -> BOOL #foreign KERNEL32;
TlsGetValue :: (dwTlsIndex : u32) -> *void #foreign KERNEL32;
TlsSetValue :: (dwTlsIndex : u32, lpTlsValue : *void) -> BOOL #foreign KERNEL32;
TryAcquireSRWLockExclusive :: (SRWLock : *RTL_SRWLOCK) -> BOOLEAN #foreign KERNEL32;
TryAcquireSRWLockShared :: (SRWLock : *RTL_SRWLOCK) -> BOOLEAN #foreign KERNEL32;
TryEnterCriticalSection :: (lpCriticalSection : *RTL_CRITICAL_SECTION) -> BOOL #foreign KERNEL32;
TrySubmitThreadpoolCallback :: (pfns : PTP_SIMPLE_CALLBACK, pv : *void, pcbe : *TP_CALLBACK_ENVIRON_V3) -> BOOL #foreign KERNEL32;
UmsThreadYield :: (SchedulerParam : *void) -> BOOL #foreign KERNEL32;
UnregisterWait :: (WaitHandle : HANDLE) -> BOOL #foreign KERNEL32;
UnregisterWaitEx :: (WaitHandle : HANDLE, CompletionEvent : HANDLE) -> BOOL #foreign KERNEL32;
UpdateProcThreadAttribute :: (
    lpAttributeList : LPPROC_THREAD_ATTRIBUTE_LIST,
    dwFlags : u32,
    Attribute : u64,
    lpValue : *void,
    cbSize : u64,
    lpPreviousValue : *void,
    lpReturnSize : *u64
) -> BOOL #foreign KERNEL32;

WaitForInputIdle :: (hProcess : HANDLE, dwMilliseconds : u32) -> u32 #foreign USER32;
WaitForMultipleObjects :: (nCount : u32, lpHandles : *HANDLE, bWaitAll : BOOL, dwMilliseconds : u32) -> u32 #foreign KERNEL32;
WaitForMultipleObjectsEx :: (
    nCount : u32,
    lpHandles : *HANDLE,
    bWaitAll : BOOL,
    dwMilliseconds : u32,
    bAlertable : BOOL
) -> u32 #foreign KERNEL32;

WaitForSingleObject :: (hHandle : HANDLE, dwMilliseconds : u32) -> u32 #foreign KERNEL32;
WaitForSingleObjectEx :: (hHandle : HANDLE, dwMilliseconds : u32, bAlertable : BOOL) -> u32 #foreign KERNEL32;
WaitForThreadpoolIoCallbacks :: (pio : *TP_IO, fCancelPendingCallbacks : BOOL)  #foreign KERNEL32;
WaitForThreadpoolTimerCallbacks :: (pti : *TP_TIMER, fCancelPendingCallbacks : BOOL)  #foreign KERNEL32;
WaitForThreadpoolWaitCallbacks :: (pwa : *TP_WAIT, fCancelPendingCallbacks : BOOL)  #foreign KERNEL32;
WaitForThreadpoolWorkCallbacks :: (pwk : *TP_WORK, fCancelPendingCallbacks : BOOL)  #foreign KERNEL32;
WaitOnAddress :: (Address : *void, CompareAddress : *void, AddressSize : u64, dwMilliseconds : u32) -> BOOL #foreign vertdll;
WakeAllConditionVariable :: (ConditionVariable : *RTL_CONDITION_VARIABLE)  #foreign KERNEL32;
WakeByAddressAll :: (Address : *void)  #foreign vertdll;
WakeByAddressSingle :: (Address : *void)  #foreign vertdll;
WakeConditionVariable :: (ConditionVariable : *RTL_CONDITION_VARIABLE)  #foreign KERNEL32;
WinExec :: (lpCmdLine : PSTR, uCmdShow : u32) -> u32 #foreign KERNEL32;
Wow64SuspendThread :: (hThread : HANDLE) -> u32 #foreign KERNEL32;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";
USER32 :: #system_library "USER32";
ADVAPI32 :: #system_library "ADVAPI32";
ntdll :: #system_library "ntdll";
vertdll :: #system_library "vertdll";

