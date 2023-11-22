// This file was auto generated for module System.Performance

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants


// Types


// Functions

QueryPerformanceCounter :: (lpPerformanceCount : *LARGE_INTEGER) -> BOOL #foreign KERNEL32;
QueryPerformanceFrequency :: (lpFrequency : *LARGE_INTEGER) -> BOOL #foreign KERNEL32;

// Unicode aliases


// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";
