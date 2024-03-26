// This file was auto generated

#import "Win32/Basics";

// Constants

TSF_Authenticated :: 2;
TSF_Hardware :: 1;
TSF_IPv6 :: 4;
TSF_SignatureAuthenticated :: 8;

// Types

DYNAMIC_TIME_ZONE_INFORMATION :: struct
{
    Bias : s32;
    StandardName : [32]u16;
    StandardDate : SYSTEMTIME;
    StandardBias : s32;
    DaylightName : [32]u16;
    DaylightDate : SYSTEMTIME;
    DaylightBias : s32;
    TimeZoneKeyName : [128]u16;
    DynamicDaylightTimeDisabled : BOOLEAN;
}

TIME_ZONE_INFORMATION :: struct
{
    Bias : s32;
    StandardName : [32]u16;
    StandardDate : SYSTEMTIME;
    StandardBias : s32;
    DaylightName : [32]u16;
    DaylightDate : SYSTEMTIME;
    DaylightBias : s32;
}

// Functions

EnumDynamicTimeZoneInformation :: (dwIndex : u32, lpTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION) -> u32 #foreign ADVAPI32;
FileTimeToSystemTime :: (lpFileTime : *FILETIME, lpSystemTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
GetDynamicTimeZoneInformation :: (pTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION) -> u32 #foreign KERNEL32;
GetDynamicTimeZoneInformationEffectiveYears :: (lpTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION, FirstYear : *u32, LastYear : *u32) -> u32 #foreign ADVAPI32;
GetSystemTimePreciseAsFileTime :: (lpSystemTimeAsFileTime : *FILETIME)  #foreign KERNEL32;
GetTimeZoneInformation :: (lpTimeZoneInformation : *TIME_ZONE_INFORMATION) -> u32 #foreign KERNEL32;
GetTimeZoneInformationForYear :: (wYear : u16, pdtzi : *DYNAMIC_TIME_ZONE_INFORMATION, ptzi : *TIME_ZONE_INFORMATION) -> BOOL #foreign KERNEL32;
LocalFileTimeToLocalSystemTime :: (timeZoneInformation : *TIME_ZONE_INFORMATION, localFileTime : *FILETIME, localSystemTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
LocalSystemTimeToLocalFileTime :: (timeZoneInformation : *TIME_ZONE_INFORMATION, localSystemTime : *SYSTEMTIME, localFileTime : *FILETIME) -> BOOL #foreign KERNEL32;
SetDynamicTimeZoneInformation :: (lpTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION) -> BOOL #foreign KERNEL32;
SetTimeZoneInformation :: (lpTimeZoneInformation : *TIME_ZONE_INFORMATION) -> BOOL #foreign KERNEL32;
SystemTimeToFileTime :: (lpSystemTime : *SYSTEMTIME, lpFileTime : *FILETIME) -> BOOL #foreign KERNEL32;
SystemTimeToTzSpecificLocalTime :: (lpTimeZoneInformation : *TIME_ZONE_INFORMATION, lpUniversalTime : *SYSTEMTIME, lpLocalTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
SystemTimeToTzSpecificLocalTimeEx :: (lpTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION, lpUniversalTime : *SYSTEMTIME, lpLocalTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
TzSpecificLocalTimeToSystemTime :: (lpTimeZoneInformation : *TIME_ZONE_INFORMATION, lpLocalTime : *SYSTEMTIME, lpUniversalTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
TzSpecificLocalTimeToSystemTimeEx :: (lpTimeZoneInformation : *DYNAMIC_TIME_ZONE_INFORMATION, lpLocalTime : *SYSTEMTIME, lpUniversalTime : *SYSTEMTIME) -> BOOL #foreign KERNEL32;
timeBeginPeriod :: (uPeriod : u32) -> u32 #foreign WINMM;
timeEndPeriod :: (uPeriod : u32) -> u32 #foreign WINMM;

// System libraries

#scope_file

ADVAPI32 :: #system_library "ADVAPI32";
KERNEL32 :: #system_library "KERNEL32";
WINMM :: #system_library "WINMM";

