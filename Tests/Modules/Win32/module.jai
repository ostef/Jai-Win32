#module_parameters (UNICODE := true);

// This is a convenient module that imports basic stuff like file IO, time and memory

#scope_file

Foundation  :: #import "Win32/Foundation" (UNICODE);
SystemIO    :: #import "Win32/System.IO" (UNICODE);
Performance :: #import "Win32/System.Performance" (UNICODE);
LibraryLoader :: #import "Win32/System.LibraryLoader" (UNICODE);
SystemInfo  :: #import "Win32/System.SystemInformation" (UNICODE);
Time        :: #import "Win32/System.Time" (UNICODE);
WindowsProgramming :: #import "Win32/System.WindowsProgramming" (UNICODE);
Security    :: #import "Win32/Security" (UNICODE);
FileSystem  :: #import "Win32/Storage.FileSystem" (UNICODE);
Memory      :: #import "Win32/System.Memory" (UNICODE);

#scope_export

// Export names from all these modules
using Foundation;
using SystemIO;
using Performance;
using LibraryLoader;
using SystemInfo;
using Time;
using Security;
using WindowsProgramming;
using FileSystem;
using Memory;

OS_Error_Code :: u32;
