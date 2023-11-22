// This file was auto generated for module System.LibraryLoader

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants

FIND_RESOURCE_DIRECTORY_TYPES :: 256;
FIND_RESOURCE_DIRECTORY_NAMES :: 512;
FIND_RESOURCE_DIRECTORY_LANGUAGES :: 1024;
RESOURCE_ENUM_LN :: 1;
RESOURCE_ENUM_MUI :: 2;
RESOURCE_ENUM_MUI_SYSTEM :: 4;
RESOURCE_ENUM_VALIDATE :: 8;
RESOURCE_ENUM_MODULE_EXACT :: 16;
SUPPORT_LANG_NUMBER :: 32;
GET_MODULE_HANDLE_EX_FLAG_PIN :: 1;
GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT :: 2;
GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS :: 4;
CURRENT_IMPORT_REDIRECTION_VERSION :: 1;
LOAD_LIBRARY_OS_INTEGRITY_CONTINUITY :: 32768;

// Types

LOAD_LIBRARY_FLAGS :: enum_flags u32
{
    DONT_RESOLVE_DLL_REFERENCES :: 1;
    LOAD_LIBRARY_AS_DATAFILE :: 2;
    LOAD_WITH_ALTERED_SEARCH_PATH :: 8;
    LOAD_IGNORE_CODE_AUTHZ_LEVEL :: 16;
    LOAD_LIBRARY_AS_IMAGE_RESOURCE :: 32;
    LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE :: 64;
    LOAD_LIBRARY_REQUIRE_SIGNED_TARGET :: 128;
    LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR :: 256;
    LOAD_LIBRARY_SEARCH_APPLICATION_DIR :: 512;
    LOAD_LIBRARY_SEARCH_USER_DIRS :: 1024;
    LOAD_LIBRARY_SEARCH_SYSTEM32 :: 2048;
    LOAD_LIBRARY_SEARCH_DEFAULT_DIRS :: 4096;
    LOAD_LIBRARY_SAFE_CURRENT_DIRS :: 8192;
    LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER :: 16384;
}

ENUMUILANG :: struct
{
    NumOfEnumUILang : u32;
    SizeOfEnumUIBuffer : u32;
    pEnumUIBuffer : *u16;
}

ENUMRESLANGPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, wLanguage : u16, lParam : s64) -> BOOL #c_call;

ENUMRESLANGPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16, lParam : s64) -> BOOL #c_call;

ENUMRESNAMEPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lParam : s64) -> BOOL #c_call;

ENUMRESNAMEPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lParam : s64) -> BOOL #c_call;

ENUMRESTYPEPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lParam : s64) -> BOOL #c_call;

ENUMRESTYPEPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lParam : s64) -> BOOL #c_call;

PGET_MODULE_HANDLE_EXA :: #type (dwFlags : u32, lpModuleName : PSTR, phModule : *HINSTANCE) -> BOOL #c_call;

PGET_MODULE_HANDLE_EXW :: #type (dwFlags : u32, lpModuleName : PWSTR, phModule : *HINSTANCE) -> BOOL #c_call;

REDIRECTION_FUNCTION_DESCRIPTOR :: struct
{
    DllName : PSTR; // Const
    FunctionName : PSTR; // Const
    RedirectionTarget : *void;
}

REDIRECTION_DESCRIPTOR :: struct
{
    Version : u32;
    FunctionCount : u32;
    Redirections : *REDIRECTION_FUNCTION_DESCRIPTOR;
}

// Functions

DisableThreadLibraryCalls :: (hLibModule : HINSTANCE) -> BOOL #foreign KERNEL32;
FindResourceExW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16) -> HRSRC #foreign KERNEL32;
FreeLibrary :: (hLibModule : HINSTANCE) -> BOOL #foreign KERNEL32;
FreeLibraryAndExitThread :: (hLibModule : HINSTANCE, dwExitCode : u32)  #foreign KERNEL32;
FreeResource :: (hResData : s64) -> BOOL #foreign KERNEL32;
GetModuleFileNameA :: (hModule : HINSTANCE, lpFilename : *u8, nSize : u32) -> u32 #foreign KERNEL32;
GetModuleFileNameW :: (hModule : HINSTANCE, lpFilename : *u16, nSize : u32) -> u32 #foreign KERNEL32;
GetModuleHandleA :: (lpModuleName : PSTR) -> HINSTANCE #foreign KERNEL32;
GetModuleHandleW :: (lpModuleName : PWSTR) -> HINSTANCE #foreign KERNEL32;
GetModuleHandleExA :: (dwFlags : u32, lpModuleName : PSTR, phModule : *HINSTANCE) -> BOOL #foreign KERNEL32;
GetModuleHandleExW :: (dwFlags : u32, lpModuleName : PWSTR, phModule : *HINSTANCE) -> BOOL #foreign KERNEL32;
GetProcAddress :: (hModule : HINSTANCE, lpProcName : PSTR) -> FARPROC #foreign KERNEL32;
LoadLibraryExA :: (lpLibFileName : PSTR, hFile : HANDLE, dwFlags : LOAD_LIBRARY_FLAGS) -> HINSTANCE #foreign KERNEL32;
LoadLibraryExW :: (lpLibFileName : PWSTR, hFile : HANDLE, dwFlags : LOAD_LIBRARY_FLAGS) -> HINSTANCE #foreign KERNEL32;
LoadResource :: (hModule : HINSTANCE, hResInfo : HRSRC) -> s64 #foreign KERNEL32;
LockResource :: (hResData : s64) -> *void #foreign KERNEL32;
SizeofResource :: (hModule : HINSTANCE, hResInfo : HRSRC) -> u32 #foreign KERNEL32;
AddDllDirectory :: (NewDirectory : PWSTR) -> *void #foreign KERNEL32;
RemoveDllDirectory :: (Cookie : *void) -> BOOL #foreign KERNEL32;
SetDefaultDllDirectories :: (DirectoryFlags : LOAD_LIBRARY_FLAGS) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesExA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lpEnumFunc : ENUMRESLANGPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesExW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lpEnumFunc : ENUMRESLANGPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceNamesExA :: (hModule : HINSTANCE, lpType : PSTR, lpEnumFunc : ENUMRESNAMEPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceNamesExW :: (hModule : HINSTANCE, lpType : PWSTR, lpEnumFunc : ENUMRESNAMEPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceTypesExA :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceTypesExW :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
FindResourceW :: (hModule : HINSTANCE, lpName : PWSTR, lpType : PWSTR) -> HRSRC #foreign KERNEL32;
LoadLibraryA :: (lpLibFileName : PSTR) -> HINSTANCE #foreign KERNEL32;
LoadLibraryW :: (lpLibFileName : PWSTR) -> HINSTANCE #foreign KERNEL32;
EnumResourceNamesW :: (hModule : HINSTANCE, lpType : PWSTR, lpEnumFunc : ENUMRESNAMEPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceNamesA :: (hModule : HINSTANCE, lpType : PSTR, lpEnumFunc : ENUMRESNAMEPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
LoadModule :: (lpModuleName : PSTR, lpParameterBlock : *void) -> u32 #foreign KERNEL32;
LoadPackagedLibrary :: (lpwLibFileName : PWSTR, Reserved : u32) -> HINSTANCE #foreign KERNEL32;
FindResourceA :: (hModule : HINSTANCE, lpName : PSTR, lpType : PSTR) -> HRSRC #foreign KERNEL32;
FindResourceExA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, wLanguage : u16) -> HRSRC #foreign KERNEL32;
EnumResourceTypesA :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceTypesW :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lpEnumFunc : ENUMRESLANGPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lpEnumFunc : ENUMRESLANGPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
BeginUpdateResourceA :: (pFileName : PSTR, bDeleteExistingResources : BOOL) -> HANDLE #foreign KERNEL32;
BeginUpdateResourceW :: (pFileName : PWSTR, bDeleteExistingResources : BOOL) -> HANDLE #foreign KERNEL32;
UpdateResourceA :: (hUpdate : HANDLE, lpType : PSTR, lpName : PSTR, wLanguage : u16, lpData : *void, cb : u32) -> BOOL #foreign KERNEL32;
UpdateResourceW :: (hUpdate : HANDLE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16, lpData : *void, cb : u32) -> BOOL #foreign KERNEL32;
EndUpdateResourceA :: (hUpdate : HANDLE, fDiscard : BOOL) -> BOOL #foreign KERNEL32;
EndUpdateResourceW :: (hUpdate : HANDLE, fDiscard : BOOL) -> BOOL #foreign KERNEL32;
SetDllDirectoryA :: (lpPathName : PSTR) -> BOOL #foreign KERNEL32;
SetDllDirectoryW :: (lpPathName : PWSTR) -> BOOL #foreign KERNEL32;
GetDllDirectoryA :: (nBufferLength : u32, lpBuffer : *u8) -> u32 #foreign KERNEL32;
GetDllDirectoryW :: (nBufferLength : u32, lpBuffer : *u16) -> u32 #foreign KERNEL32;

// Unicode aliases

#if UNICODE then ENUMRESLANGPROC :: ENUMRESLANGPROCW;
else             ENUMRESLANGPROC :: ENUMRESLANGPROCA;
#if UNICODE then ENUMRESNAMEPROC :: ENUMRESNAMEPROCW;
else             ENUMRESNAMEPROC :: ENUMRESNAMEPROCA;
#if UNICODE then ENUMRESTYPEPROC :: ENUMRESTYPEPROCW;
else             ENUMRESTYPEPROC :: ENUMRESTYPEPROCA;
#if UNICODE then PGET_MODULE_HANDLE_EX :: PGET_MODULE_HANDLE_EXW;
else             PGET_MODULE_HANDLE_EX :: PGET_MODULE_HANDLE_EXA;
#if UNICODE then FindResourceEx :: FindResourceExW;
else             FindResourceEx :: FindResourceExA;
#if UNICODE then GetModuleFileName :: GetModuleFileNameW;
else             GetModuleFileName :: GetModuleFileNameA;
#if UNICODE then GetModuleHandle :: GetModuleHandleW;
else             GetModuleHandle :: GetModuleHandleA;
#if UNICODE then GetModuleHandleEx :: GetModuleHandleExW;
else             GetModuleHandleEx :: GetModuleHandleExA;
#if UNICODE then LoadLibraryEx :: LoadLibraryExW;
else             LoadLibraryEx :: LoadLibraryExA;
#if UNICODE then EnumResourceLanguagesEx :: EnumResourceLanguagesExW;
else             EnumResourceLanguagesEx :: EnumResourceLanguagesExA;
#if UNICODE then EnumResourceNamesEx :: EnumResourceNamesExW;
else             EnumResourceNamesEx :: EnumResourceNamesExA;
#if UNICODE then EnumResourceTypesEx :: EnumResourceTypesExW;
else             EnumResourceTypesEx :: EnumResourceTypesExA;
#if UNICODE then FindResource :: FindResourceW;
else             FindResource :: FindResourceA;
#if UNICODE then LoadLibrary :: LoadLibraryW;
else             LoadLibrary :: LoadLibraryA;
#if UNICODE then EnumResourceNames :: EnumResourceNamesW;
else             EnumResourceNames :: EnumResourceNamesA;
#if UNICODE then EnumResourceTypes :: EnumResourceTypesW;
else             EnumResourceTypes :: EnumResourceTypesA;
#if UNICODE then EnumResourceLanguages :: EnumResourceLanguagesW;
else             EnumResourceLanguages :: EnumResourceLanguagesA;
#if UNICODE then BeginUpdateResource :: BeginUpdateResourceW;
else             BeginUpdateResource :: BeginUpdateResourceA;
#if UNICODE then UpdateResource :: UpdateResourceW;
else             UpdateResource :: UpdateResourceA;
#if UNICODE then EndUpdateResource :: EndUpdateResourceW;
else             EndUpdateResource :: EndUpdateResourceA;
#if UNICODE then SetDllDirectory :: SetDllDirectoryW;
else             SetDllDirectory :: SetDllDirectoryA;
#if UNICODE then GetDllDirectory :: GetDllDirectoryW;
else             GetDllDirectory :: GetDllDirectoryA;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";
