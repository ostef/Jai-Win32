// This example program generates bindings for basic Win32 stuff

#import "Basic";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Hash_Table";
#import "String";

#import, file "../module.jai";

// Modules that have 'Basics' in their name are modules that we don't
// output fully and that exists mostly because they have dependencies
// of other modules in them.

Module_Redirection_Table :: [2]string.[
    .["Foundation","Win32/Basics"],
    .["System.Threading","Win32/Threads"],
    .["System.Time","Win32/Time"],
    .["System.IO","Win32/File_System"],
    .["Storage.FileSystem","Win32/File_System"],
    .["System.Memory","Win32/Memory"],
    .["System.Console","Win32/Console"],
    .["UI.WindowsAndMessaging","Win32/Windows_And_Messaging"],
    //.["Graphics.OpenGL","Win32/OpenGL"],
    //.["Graphics.Dxgi.Common","Win32/DXGI_Basics"],
    //.["Graphics.Hlsl","Win32/Direct3D"],
    //.["Graphics.Direct3D","Win32/Direct3D"],
    //.["Graphics.Direct3D11","Win32/Direct3D11"],
    //.["Graphics.Direct3D12","Win32/Direct3D12"],
];

Handle_Type_Names :: string.[
    "HANDLE", "HINSTANCE", "SOCKET",
    "HICON", "HCURSOR", "HBRUSH", "HSYNTHETICPOINTERDEVICE", "HPROPSHEETPAGE",
    "HIMAGELIST", "HTREEITEM", "HCOLORSPACE", "HCRYPTASYNC", "HCERTCHAINENGINE",
    "HCOMDB", "HKEY", "HWINWATCH", "HWINSTA", "HDESK", "HSTRING", "HSZ", "HCONV",
    "HCONVLIST", "HDDEDATA", "HRASCONN", "HAMSICONTEXT", "HAMSISESSION",
    "HCMNOTIFICATION", "HKL", "HIFTIMESTAMPCHANGE", "HWSAEVENT", "HTASK",
    "HWINEVENTHOOK", "HUIANODE", "HUIAPATTERNOBJECT", "HUIATEXTRANGE",
    "HUIAEVENT", "HMIDI", "HMIDIIN", "HMIDIOUT", "HMIDISTRM", "HMIXER",
    "HMIXEROBJ", "HWAVE", "HWAVEOUT", "HWAVEIN", "HMMIO", "HDRVR",
    "HACMDRIVERID", "HACMDRIVER", "HACMSTREAM", "HACMOBJ", "HIC", "HVIDEO",
    "HSWDEVICE", "HINTERACTIONCONTEXT", "HRAWINPUT", "HRECOALT", "HRECOCONTEXT",
    "HRECOGNIZER", "HRECOLATTICE", "HRECOWORDLIST", "HIMC", "HIMCC",
    "HSAVEDUILANGUAGES", "HRSRC", "HSURF", "HPOWERNOTIFY", "HUMPD", "HSTR",
    "HSPRITE", "HSEMAPHORE", "HLSURF", "HFASTMUTEX", "HDRVOBJ", "HDEV", "HBM",
    "HPCON", "HMENU", "HACCEL", "HDROP", "HPSXA", "HDC", "HGDIOBJ", "HBITMAP",
    "HRGN", "HPEN", "HBRUSH", "HFONT", "HMETAFILE", "HENHMETAFILE", "HMONITOR",
    "HPALETTE", "HWND", "HHOOK", "HGESTUREINFO", "HTOUCHINPUT", "HGLRC",
    "HFILTER", "HPTPROVIDER", "HPSS", "HPSSWALK", "HSTRING_BUFFER", "JET_SESID",
    "PSID", "AUTHZ_AUDIT_EVENT_HANDLE", "HeapHandle", "HDPA", "HDSA", "CreatedHDC",
];

Libs_To_Ignore :: string.[
    "PeerDist",
    "NETSH",
    "icu",
    "WINSPOOL",
    "api-ms-win-core-*",
    "ntdllk",
    "d3dcsx",
];

GetFoundationConstantOutputModule :: (name : string) -> string #must
{
    if name ==
    {
    case "INVALID_HANDLE_VALUE"; #through;
    case "MAX_PATH"; #through;
    case "STRICT";
        return "Win32/Basics";

    case;
        return "";
    }
}

main :: ()
{
    context.allocator = temp;

    InitWin32Database ("../win32json/api");

    CreateOutputModule ("Win32/Basics");
    CreateOutputModule ("Win32/Threads");
    CreateOutputModule ("Win32/Time");
    CreateOutputModule ("Win32/File_System");
    CreateOutputModule ("Win32/Memory");
    CreateOutputModule ("Win32/Console");
    CreateOutputModule ("Win32/GDI_Basics");
    CreateOutputModule ("Win32/Windows_And_Messaging");
    CreateOutputModule ("Win32/WGL");
    /*
    CreateOutputModule ("Win32/OpenGL");
    CreateOutputModule ("Win32/DXGI_Basics");
    CreateOutputModule ("Win32/Direct3D");
    CreateOutputModule ("Win32/Direct3D11");
    CreateOutputModule ("Win32/Direct3D12");
    */

    void_type : Win32Type;
    void_type.kind = .Native;
    void_type.native_type = .Void;

    void_pointer_type : Win32Type;
    void_pointer_type.kind = .PointerTo;
    void_pointer_type.child = *void_type;

    for :AllInputConstants context.generator
    {
        if starts_with (it.name, "FORMAT_MESSAGE_")
        {
            SetOutputModule (it, "Win32/Basics");
            continue it;
        }

        if starts_with (it.name, "WGL")
        {
            SetOutputModule (it, "Win32/WGL");
            continue;
        }

        // Most constant in Foundation are error codes, which should be in different modules
        // (there is D3D stuff, GDI stuff...). We hand-pick what we actually want here.
        if it.module == "Foundation"
        {
            output_module := GetFoundationConstantOutputModule (it.name);
            if output_module
                SetOutputModule (it, output_module);

            continue it;
        }

        if starts_with (it.name, "PFD_")
        {
            SetOutputModule (it, "Win32/GDI_Basics");
            continue it;
        }

        if starts_with (it.name, "CP_")
        {
            SetOutputModule (it, "Win32/Basics");
            continue it;
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, redir[1]);
                continue it;
            }
        }
    }

    for :AllInputTypeDefinitions context.generator
    {
        if it.name == "NTSTATUS_FACILITY_CODE"
            continue;

        if array_find (Handle_Type_Names, it.name)
        {
            it.kind = .NativeTypedef;
            it.def = void_pointer_type;
        }

        if starts_with (it.name, "WGL")
        {
            SetOutputModule (it, "Win32/WGL");
            continue;
        }

        if it.name ==
        {
        case "WIN32_ERROR";
            it.kind = .NativeTypedef;
            it.def.kind = .Native;
            it.def.native_type = .UInt32;

            for val : it.values
            {
                output_module := GetFoundationConstantOutputModule (val.name);
                if !output_module
                    continue;

                const := New (Win32Constant);
                const.name = val.name;
                const.type = it.def;
                const.value_type = .UInt32;
                const.int_value = val.value;
                SetOutputModule (const, output_module);
            }

            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "STD_HANDLE"; #through;
        case "LIST_ENTRY"; #through;
        case "SLIST_HEADER"; #through;
        case "SLIST_ENTRY"; #through;
        case "PROCESSOR_NUMBER"; #through;
        case "GROUP_AFFINITY"; #through;
        case "RTL_UMS_SCHEDULER_REASON"; #through;
        case "FORMAT_MESSAGE_OPTIONS"; #through;
        case "MULTI_BYTE_TO_WIDE_CHAR_FLAGS";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "IUnknown"; #through;
        case "IEnumConnectionPoints"; #through;
        case "IEnumConnections"; #through;
        case "IConnectionPoint"; #through;
        case "IConnectionPointContainer"; #through;
        case "CONNECTDATA";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "GENERIC_MAPPING"; #through;
        case "PRIVILEGE_SET"; #through;
        case "SID"; #through;
        case "SID_IDENTIFIER_AUTHORITY"; #through;
        case "ACL"; #through;
        case "LUID_AND_ATTRIBUTES"; #through;
        case "TOKEN_PRIVILEGES_ATTRIBUTES"; #through;
        case "TOKEN_ACCESS_MASK"; #through;
        case "SECURITY_ATTRIBUTES"; #through;
        case "SECURITY_DESCRIPTOR";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "IO_STATUS_BLOCK"; #through;
        case "OBJECT_ATTRIBUTES";
            SetOutputModule (it, "Win32/File_System");
            continue it;

        case "POWER_SETTING_REGISTER_NOTIFICATION_FLAGS"; #through;
        case "HELPINFO";
            SetOutputModule (it, "Win32/Windows_And_Messaging");
            continue it;

        case "ROP_CODE"; #through;
        case "CreatedHDC"; #through;
        case "DEVMODEA"; #through;
        case "DEVMODEW"; #through;
        case "GET_DCX_FLAGS"; #through;
        case "ENUM_DISPLAY_SETTINGS_MODE"; #through;
        case "MONITORENUMPROC"; #through;
        case "DISPLAY_DEVICEA"; #through;
        case "DISPLAY_DEVICEW";
            SetOutputModule (it, "Win32/GDI_Basics");
            continue it;

        case "HMONITOR"; #through;
        case "HBITMAP"; #through;
        case "HBRUSH"; #through;
        case "HDC"; #through;
        case "PIXELFORMATDESCRIPTOR"; #through;
        case "LAYERPLANEDESCRIPTOR";
            SetOutputModule (it, "Win32/GDI_Basics");
            continue it;

        case "HRGN"; #through;
        case "BLENDFUNCTION"; #through;
        case "EMR"; #through;
        case "HENHMETAFILE"; #through;
        case "LOGFONTA"; #through;
        case "LOGFONTW";
           SetOutputModule (it, "Win32/GDI_Basics");
           continue it;

        case "HGLRC"; #through;
        case "GLYPHMETRICSFLOAT"; #through;
        case "POINTFLOAT";
            SetOutputModule (it, "Win32/WGL");
            continue it;

        /*
        case "IDXGISwapChain"; #through;
        case "IDXGIAdapter"; #through;
        case "IDXGIObject"; #through;
        case "IDXGIDeviceSubObject"; #through;
        case "IDXGIOutput"; #through;
        case "IDXGISurface"; #through;
        case "DXGI_FRAME_STATISTICS"; #through;
        case "DXGI_HDR_METADATA_TYPE"; #through;
        case "DXGI_SWAP_EFFECT"; #through;
        case "DXGI_SWAP_CHAIN_DESC"; #through;
        case "DXGI_MAPPED_RECT"; #through;
        case "DXGI_SURFACE_DESC"; #through;
        case "DXGI_OUTPUT_DESC"; #through;
        case "DXGI_ADAPTER_DESC";
            SetOutputModule (it, "Win32/DXGI_Basics");
            continue it;
        */
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, redir[1]);
                continue it;
            }
        }
    }

    for :AllInputFunctions context.generator
    {
        for lib : Libs_To_Ignore
        {
            if WildcardStarMatch (lib, it.dll_import)
                continue it;
        }

        if it.name == "AreShortNamesEnabled"
            continue;
        if starts_with (it.name, "GetTempPath2")
            continue;
        if starts_with (it.name, "GetSystemWow64Directory2")
            continue;
        if it.name == "GetSystemLeapSecondInformation"
            continue;

        if starts_with (it.name, "wgl")
        {
            SetOutputModule (it, "Win32/WGL");
            continue it;
        }

        if it.name ==
        {
        case "IsValidCodePage"; #through;
        case "MultiByteToWideChar"; #through;
        case "WideCharToMultiByte";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "BitBlt"; #through;
        case "CancelDC"; #through;
        case "CreateDCA"; #through;
        case "CreateDCW"; #through;
        case "DeleteDC"; #through;
        case "SaveDC"; #through;
        case "UpdateWindow"; #through;
        case "WindowFromDC"; #through;
        case "GetDC"; #through;
        case "GetDCEx"; #through;
        case "ReleaseDC"; #through;
        case "ClientToScreen"; #through;
        case "ScreenToClient"; #through;
        case "EnumDisplayMonitors"; #through;
        case "EnumDisplaySettingsA"; #through;
        case "EnumDisplaySettingsW"; #through;
        case "EnumDisplaySettingsExA"; #through;
        case "EnumDisplaySettingsExW"; #through;
        case "EnumDisplayDevicesA"; #through;
        case "EnumDisplayDevicesW"; #through;
        case "ChoosePixelFormat"; #through;
        case "DescribePixelFormat"; #through;
        case "GetPixelFormat"; #through;
        case "SetPixelFormat"; #through;
        case "SwapBuffers";
            SetOutputModule (it, "Win32/GDI_Basics");
            continue it;

        case "GetStdHandle"; #through;
        case "SetStdHandle"; #through;
        case "SetStdHandleEx"; #through;
        case "GetModuleHandleW"; #through;
        case "GetModuleHandleA"; #through;
        case "GetModuleFileNameW"; #through;
        case "GetModuleFileNameA"; #through;
        case "GetUserNameW"; #through;
        case "GetUserNameA"; #through;
        case "GetComputerNameW"; #through;
        case "GetComputerNameA";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "FormatMessageW"; #through;
        case "FormatMessageA";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "QueryPerformanceCounter"; #through;
        case "QueryPerformanceFrequency";
            SetOutputModule (it, "Win32/Basics");
            continue it;

        case "GetSystemTimePreciseAsFileTime";
            SetOutputModule (it, "Win32/Time");
            continue it;
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, redir[1]);
                continue it;
            }
        }
    }

    for context.generator.output_modules
        ResolveModuleDependencies (it);

    if context.generator.has_errors
        exit (1);

    make_directory_if_it_does_not_exist ("Generated/Win32", recursive = true);

    for context.generator.output_modules
        GenerateModuleSourceCodeToFile (it);

    ok := write_entire_file ("Generated/Win32/module.jai", Win32_Module_Code);
    if !ok
        log_error ("Error: Could not write file Generated/Win32/module.jai");
}

Win32_Module_Code :: #string JAI
#module_parameters (
    UNICODE := true,
    Threads := false,
    Time := false,
    File_System := false,
    Memory := false,
    GDI_Basics := false,
    Windows_And_Messaging := false,
    WGL := false
);

#scope_file

_Basics     :: #import "Win32/Basics" (UNICODE);

#if Threads
    _Threads    :: #import "Win32/Threads" (UNICODE);
#if Time
    _Time       :: #import "Win32/Time" (UNICODE);
#if File_System
    _File_System :: #import "Win32/File_System" (UNICODE);
#if Memory
    _Memory     :: #import "Win32/Memory" (UNICODE);
#if GDI_Basics
    _GDI_Basics :: #import "Win32/GDI_Basics" (UNICODE);
#if Windows_And_Messaging
    _Windows_And_Messaging :: #import "Win32/Windows_And_Messaging" (UNICODE);
#if WGL
    _WGL :: #import "Win32/WGL" (UNICODE);

#scope_export

using _Basics;

#if Threads
    using _Threads;
#if Time
    using _Time;
#if File_System
    using _File_System;
#if Memory
    using _Memory;
#if GDI_Basics
    using _GDI_Basics;
#if Windows_And_Messaging
    using _Windows_And_Messaging;
#if WGL
    using _WGL;

OS_Error_Code :: WIN32_ERROR;
JAI
