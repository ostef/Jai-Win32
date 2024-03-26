// This file was auto generated

#import "Win32/Basics";

// Constants

CURRENT_IMPORT_REDIRECTION_VERSION :: 1;
FIND_RESOURCE_DIRECTORY_LANGUAGES :: 1024;
FIND_RESOURCE_DIRECTORY_NAMES :: 512;
FIND_RESOURCE_DIRECTORY_TYPES :: 256;
GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS :: 4;
GET_MODULE_HANDLE_EX_FLAG_PIN :: 1;
GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT :: 2;
LOAD_LIBRARY_OS_INTEGRITY_CONTINUITY :: 32768;
RESOURCE_ENUM_LN :: 1;
RESOURCE_ENUM_MODULE_EXACT :: 16;
RESOURCE_ENUM_MUI :: 2;
RESOURCE_ENUM_MUI_SYSTEM :: 4;
RESOURCE_ENUM_VALIDATE :: 8;
SUPPORT_LANG_NUMBER :: 32;

// Types

ENUMRESLANGPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, wLanguage : u16, lParam : s64) -> BOOL #c_call;

ENUMRESLANGPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16, lParam : s64) -> BOOL #c_call;

ENUMRESNAMEPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lParam : s64) -> BOOL #c_call;

ENUMRESNAMEPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lParam : s64) -> BOOL #c_call;

ENUMRESTYPEPROCA :: #type (hModule : HINSTANCE, lpType : PSTR, lParam : s64) -> BOOL #c_call;

ENUMRESTYPEPROCW :: #type (hModule : HINSTANCE, lpType : PWSTR, lParam : s64) -> BOOL #c_call;

ENUMUILANG :: struct
{
    NumOfEnumUILang : u32;
    SizeOfEnumUIBuffer : u32;
    pEnumUIBuffer : *u16;
}

LOAD_LIBRARY_FLAGS :: enum_flags u32
{
    DONT_RESOLVE_DLL_REFERENCES :: 1;
    AS_DATAFILE :: 2;
    LOAD_WITH_ALTERED_SEARCH_PATH :: 8;
    LOAD_IGNORE_CODE_AUTHZ_LEVEL :: 16;
    AS_IMAGE_RESOURCE :: 32;
    AS_DATAFILE_EXCLUSIVE :: 64;
    REQUIRE_SIGNED_TARGET :: 128;
    SEARCH_DLL_LOAD_DIR :: 256;
    SEARCH_APPLICATION_DIR :: 512;
    SEARCH_USER_DIRS :: 1024;
    SEARCH_SYSTEM32 :: 2048;
    SEARCH_DEFAULT_DIRS :: 4096;
    SAFE_CURRENT_DIRS :: 8192;
    SEARCH_SYSTEM32_NO_FORWARDER :: 16384;
}

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

PGET_MODULE_HANDLE_EXA :: #type (dwFlags : u32, lpModuleName : PSTR, phModule : *HINSTANCE) -> BOOL #c_call;

PGET_MODULE_HANDLE_EXW :: #type (dwFlags : u32, lpModuleName : PWSTR, phModule : *HINSTANCE) -> BOOL #c_call;

REDIRECTION_DESCRIPTOR :: struct
{
    Version : u32;
    FunctionCount : u32;
    Redirections : *REDIRECTION_FUNCTION_DESCRIPTOR;
}

REDIRECTION_FUNCTION_DESCRIPTOR :: struct
{
    DllName : PSTR; // Const
    FunctionName : PSTR; // Const
    RedirectionTarget : *void;
}

// Functions

AddDllDirectory :: (NewDirectory : PWSTR) -> *void #foreign KERNEL32;
BeginUpdateResourceA :: (pFileName : PSTR, bDeleteExistingResources : BOOL) -> HANDLE #foreign KERNEL32;
BeginUpdateResourceW :: (pFileName : PWSTR, bDeleteExistingResources : BOOL) -> HANDLE #foreign KERNEL32;
DisableThreadLibraryCalls :: (hLibModule : HINSTANCE) -> BOOL #foreign KERNEL32;
EndUpdateResourceA :: (hUpdate : HANDLE, fDiscard : BOOL) -> BOOL #foreign KERNEL32;
EndUpdateResourceW :: (hUpdate : HANDLE, fDiscard : BOOL) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lpEnumFunc : ENUMRESLANGPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesExA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, lpEnumFunc : ENUMRESLANGPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesExW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lpEnumFunc : ENUMRESLANGPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceLanguagesW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, lpEnumFunc : ENUMRESLANGPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceNamesA :: (hModule : HINSTANCE, lpType : PSTR, lpEnumFunc : ENUMRESNAMEPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceNamesExA :: (hModule : HINSTANCE, lpType : PSTR, lpEnumFunc : ENUMRESNAMEPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceNamesExW :: (hModule : HINSTANCE, lpType : PWSTR, lpEnumFunc : ENUMRESNAMEPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceNamesW :: (hModule : HINSTANCE, lpType : PWSTR, lpEnumFunc : ENUMRESNAMEPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceTypesA :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCA, lParam : s64) -> BOOL #foreign KERNEL32;
EnumResourceTypesExA :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCA, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceTypesExW :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCW, lParam : s64, dwFlags : u32, LangId : u16) -> BOOL #foreign KERNEL32;
EnumResourceTypesW :: (hModule : HINSTANCE, lpEnumFunc : ENUMRESTYPEPROCW, lParam : s64) -> BOOL #foreign KERNEL32;
FindResourceA :: (hModule : HINSTANCE, lpName : PSTR, lpType : PSTR) -> HRSRC #foreign KERNEL32;
FindResourceExA :: (hModule : HINSTANCE, lpType : PSTR, lpName : PSTR, wLanguage : u16) -> HRSRC #foreign KERNEL32;
FindResourceExW :: (hModule : HINSTANCE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16) -> HRSRC #foreign KERNEL32;
FindResourceW :: (hModule : HINSTANCE, lpName : PWSTR, lpType : PWSTR) -> HRSRC #foreign KERNEL32;
FreeLibrary :: (hLibModule : HINSTANCE) -> BOOL #foreign KERNEL32;
FreeLibraryAndExitThread :: (hLibModule : HINSTANCE, dwExitCode : u32)  #foreign KERNEL32;
FreeResource :: (hResData : s64) -> BOOL #foreign KERNEL32;
GetDllDirectoryA :: (nBufferLength : u32, lpBuffer : *u8) -> u32 #foreign KERNEL32;
GetDllDirectoryW :: (nBufferLength : u32, lpBuffer : *u16) -> u32 #foreign KERNEL32;
GetModuleHandleExA :: (dwFlags : u32, lpModuleName : PSTR, phModule : *HINSTANCE) -> BOOL #foreign KERNEL32;
GetModuleHandleExW :: (dwFlags : u32, lpModuleName : PWSTR, phModule : *HINSTANCE) -> BOOL #foreign KERNEL32;
GetProcAddress :: (hModule : HINSTANCE, lpProcName : PSTR) -> *void #foreign KERNEL32;
LoadLibraryA :: (lpLibFileName : PSTR) -> HINSTANCE #foreign KERNEL32;
LoadLibraryExA :: (lpLibFileName : PSTR, hFile : HANDLE, dwFlags : LOAD_LIBRARY_FLAGS) -> HINSTANCE #foreign KERNEL32;
LoadLibraryExW :: (lpLibFileName : PWSTR, hFile : HANDLE, dwFlags : LOAD_LIBRARY_FLAGS) -> HINSTANCE #foreign KERNEL32;
LoadLibraryW :: (lpLibFileName : PWSTR) -> HINSTANCE #foreign KERNEL32;
LoadModule :: (lpModuleName : PSTR, lpParameterBlock : *void) -> u32 #foreign KERNEL32;
LoadPackagedLibrary :: (lpwLibFileName : PWSTR, Reserved : u32) -> HINSTANCE #foreign KERNEL32;
LoadResource :: (hModule : HINSTANCE, hResInfo : HRSRC) -> s64 #foreign KERNEL32;
LockResource :: (hResData : s64) -> *void #foreign KERNEL32;
RemoveDllDirectory :: (Cookie : *void) -> BOOL #foreign KERNEL32;
SetDefaultDllDirectories :: (DirectoryFlags : LOAD_LIBRARY_FLAGS) -> BOOL #foreign KERNEL32;
SetDllDirectoryA :: (lpPathName : PSTR) -> BOOL #foreign KERNEL32;
SetDllDirectoryW :: (lpPathName : PWSTR) -> BOOL #foreign KERNEL32;
SizeofResource :: (hModule : HINSTANCE, hResInfo : HRSRC) -> u32 #foreign KERNEL32;
UpdateResourceA :: (hUpdate : HANDLE, lpType : PSTR, lpName : PSTR, wLanguage : u16, lpData : *void, cb : u32) -> BOOL #foreign KERNEL32;
UpdateResourceW :: (hUpdate : HANDLE, lpType : PWSTR, lpName : PWSTR, wLanguage : u16, lpData : *void, cb : u32) -> BOOL #foreign KERNEL32;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";

