// This example program generates bindings for basic Win32 stuff

#import "Basic";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Hash_Table";
#import "String";
#import "Sort";

#import, file "../module.jai";

// Modules that have 'Basics' in their name are modules that we don't
// output fully and that exists mostly because they have dependencies
// of other modules in them.

// Redirects stuff from input module redir[0] to output module redir[1]
Module_Redirection_Table :: [2]string.[
    .["Foundation","Win32/Basics"],
    .["System.Threading","Win32/Threads"],
    .["System.Time","Win32/Time"],
    .["System.IO","Win32/File_System"],
    .["Storage.FileSystem","Win32/File_System"],
    .["System.Memory","Win32/Memory"],
    .["System.Console","Win32/Console"],
    .["UI.WindowsAndMessaging","Win32/Windows_And_Messaging"],
    .["System.LibraryLoader","Win32/Library_Loader"],
    .["UI.Input","Win32/Input"],
    .["UI.Input.KeyboardAndMouse","Win32/Input"],
    .["UI.HiDpi","Win32/HiDpi"],
    .["Graphics.Dxgi","DirectX/DXGI"],
    .["Graphics.Dxgi.Common","DirectX/DXGI"],
    //.["Graphics.Hlsl","Win32/Direct3D"],
    .["Graphics.Direct3D","DirectX/Direct3D"],
    .["Graphics.Direct3D12","DirectX/Direct3D12"],
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
    "MrmSupport",
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

HandleDirectXSymbol :: (sym : *$T) -> bool #must
{
    if sym.module ==
    {
    case "Graphics.Direct3D.Fxc"; #through;
    case "Graphics.Direct3D11"; #through;
    case "Graphics.Direct3D11on12"; #through;
    case "Graphics.Direct3D10"; #through;
    case "Graphics.Direct3D9";
        return true;
    }

    if starts_with (sym.name, "D3D12") || starts_with (sym.name, "ID3D12")
    {
        SetOutputModule (sym, "DirectX/Direct3D12");
        return true;
    }

    // Ignore dx11 stuff
    if starts_with (sym.name, "D3DX11") || starts_with (sym.name, "ID3DX11")
    || starts_with (sym.name, "D3D11") || starts_with (sym.name, "ID3D11")
    {
        return true;
    }

    // Ignore dx10 stuff
    if starts_with (sym.name, "D3DX10") || starts_with (sym.name, "ID3DX10")
    || starts_with (sym.name, "D3D10") || starts_with (sym.name, "ID3D10")
    {
        return true;
    }

    // Ignore dx9 stuff
    if starts_with (sym.name, "D3DX9") || starts_with (sym.name, "ID3DX9")
    || starts_with (sym.name, "D3D9") || starts_with (sym.name, "ID3D9")
    {
        return true;
    }

    if starts_with (sym.name, "D3D") || starts_with (sym.name, "ID3D")
    {
        SetOutputModule (sym, "DirectX/Direct3D");
        return true;
    }

    if starts_with (sym.name, "DXGI") || starts_with (sym.name, "IDXGI")
    {
        SetOutputModule (sym, "DirectX/DXGI");
        return true;
    }

    return false;
}

main :: ()
{
    context.allocator = temp;

    start_time := current_time_monotonic ();

    start_parse_time := start_time;

    InitWin32Database ("../win32json/api");

    end_parse_time := current_time_monotonic ();
    total_parse_time := end_parse_time - start_parse_time;

    start_user_time := current_time_monotonic ();

    CreateOutputModule ("Win32/Basics");
    CreateOutputModule ("Win32/Threads");
    CreateOutputModule ("Win32/Time");
    CreateOutputModule ("Win32/File_System");
    CreateOutputModule ("Win32/Memory");
    CreateOutputModule ("Win32/Console");
    CreateOutputModule ("Win32/GDI_Basics");
    CreateOutputModule ("Win32/Windows_And_Messaging");
    CreateOutputModule ("Win32/WGL");
    CreateOutputModule ("Win32/Library_Loader");
    CreateOutputModule ("Win32/Input");
    CreateOutputModule ("Win32/HiDpi");
    CreateOutputModule ("DirectX/DXGI");
    CreateOutputModule ("DirectX/Direct3D");
    CreateOutputModule ("DirectX/Direct3D12");

    void_type : Win32Type;
    void_type.kind = .Native;
    void_type.native_type = .Void;

    void_pointer_type : Win32Type;
    void_pointer_type.kind = .PointerTo;
    void_pointer_type.child = *void_type;

    total_symbol_count := 0;

    for :AllInputConstants context.generator
    {
        total_symbol_count += 1;

        if HandleDirectXSymbol (it)
            continue;

        if starts_with (it.name, "FORMAT_MESSAGE_")
        {
            SetOutputModule (it, "Win32/Basics");
            continue;
        }

        if starts_with (it.name, "WM_")
        {
            SetOutputModule (it, "Win32/Windows_And_Messaging");
            continue;
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

            continue;
        }

        if it.module == "Devices.HumanInterfaceDevice" && starts_with (it.name, "MOUSE_")
        {
            SetOutputModule (it, "Win32/Input");
            continue;
        }

        if starts_with (it.name, "PFD_")
        {
            SetOutputModule (it, "Win32/GDI_Basics");
            continue;
        }

        if starts_with (it.name, "CP_")
        {
            SetOutputModule (it, "Win32/Basics");
            continue;
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
        total_symbol_count += 1;

        if HandleDirectXSymbol (it)
            continue;

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
            continue;

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
            continue;

        case "IUnknown"; #through;
        case "IEnumConnectionPoints"; #through;
        case "IEnumConnections"; #through;
        case "IConnectionPoint"; #through;
        case "IConnectionPointContainer"; #through;
        case "CONNECTDATA";
            SetOutputModule (it, "Win32/Basics");
            continue;

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
            continue;

        case "IO_STATUS_BLOCK"; #through;
        case "OBJECT_ATTRIBUTES";
            SetOutputModule (it, "Win32/File_System");
            continue;

        case "CLIPBOARD_FORMATS"; #through;
        case "POWER_SETTING_REGISTER_NOTIFICATION_FLAGS"; #through;
        case "HELPINFO";
            SetOutputModule (it, "Win32/Windows_And_Messaging");
            continue;

        case "ROP_CODE"; #through;
        case "CreatedHDC"; #through;
        case "DEVMODEA"; #through;
        case "DEVMODEW"; #through;
        case "GET_DCX_FLAGS"; #through;
        case "ENUM_DISPLAY_SETTINGS_MODE"; #through;
        case "MONITOR_FROM_FLAGS"; #through;
        case "MONITORENUMPROC"; #through;
        case "DISPLAY_DEVICEA"; #through;
        case "DISPLAY_DEVICEW"; #through;
        case "MONITORINFO"; #through;
        case "MONITORINFOEXA"; #through;
        case "MONITORINFOEXW";
            SetOutputModule (it, "Win32/GDI_Basics");
            continue;

        case "HMONITOR"; #through;
        case "HBITMAP"; #through;
        case "HBRUSH"; #through;
        case "HDC"; #through;
        case "PIXELFORMATDESCRIPTOR"; #through;
        case "LAYERPLANEDESCRIPTOR";
            SetOutputModule (it, "Win32/GDI_Basics");
            continue;

        case "HRGN"; #through;
        case "BLENDFUNCTION"; #through;
        case "EMR"; #through;
        case "HENHMETAFILE"; #through;
        case "LOGFONTA"; #through;
        case "LOGFONTW";
           SetOutputModule (it, "Win32/GDI_Basics");
           continue;

        case "HGLRC"; #through;
        case "GLYPHMETRICSFLOAT"; #through;
        case "POINTFLOAT";
            SetOutputModule (it, "Win32/WGL");
            continue;

        case "HKL";
            SetOutputModule (it, "Win32/Input");
            continue;
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
        total_symbol_count += 1;

        if HandleDirectXSymbol (it)
            continue;

        // What the hell?
        if it.dll_import == "api-ms-win-shcore-scaling-l1-1-1"
        {
            it.dll_import = "Shcore";
        }

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

        if it.name ==
        {
        case "ExpungeConsoleCommandHistoryA"; #through;
        case "ExpungeConsoleCommandHistoryW"; #through;
        case "GetConsoleCommandHistoryA"; #through;
        case "GetConsoleCommandHistoryW"; #through;
        case "GetConsoleCommandHistoryLengthA"; #through;
        case "GetConsoleCommandHistoryLengthW"; #through;
        case "SetConsoleNumberOfCommandsA"; #through;
        case "SetConsoleNumberOfCommandsW";
            continue;
        }

        // Make GetProcAddress and wglGetProcAddress return a *void instead of a procedure type
        if it.name == "wglGetProcAddress" || it.name == "GetProcAddress"
        {
            it.return_type = void_pointer_type;
        }

        if it.module == "System.DataExchange" && contains (it.name, "Clipboard")
        {
            SetOutputModule (it, "Win32/Windows_And_Messaging");
            continue;
        }

        if starts_with (it.name, "wgl")
        {
            SetOutputModule (it, "Win32/WGL");
            continue;
        }

        if it.name ==
        {
        case "timeBeginPeriod"; #through;
        case "timeEndPeriod";
            SetOutputModule (it, "Win32/Time");
            continue;

        case "IsValidCodePage"; #through;
        case "MultiByteToWideChar"; #through;
        case "WideCharToMultiByte";
            SetOutputModule (it, "Win32/Basics");
            continue;

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
        case "MonitorFromPoint"; #through;
        case "MonitorFromRect"; #through;
        case "GetMonitorInfoA"; #through;
        case "GetMonitorInfoW"; #through;
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
            continue;

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
            continue;

        case "FormatMessageW"; #through;
        case "FormatMessageA";
            SetOutputModule (it, "Win32/Basics");
            continue;

        case "QueryPerformanceCounter"; #through;
        case "QueryPerformanceFrequency";
            SetOutputModule (it, "Win32/Basics");
            continue;

        case "GetSystemTimePreciseAsFileTime";
            SetOutputModule (it, "Win32/Time");
            continue;
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
    {
        ResolveModuleDependencies (it);

        quick_sort (it.constants, (a, b) => compare_strings (a.name, b.name));
        quick_sort (it.types, (a, b) => compare_strings (a.name, b.name));
        quick_sort (it.functions, (a, b) => compare_strings (a.name, b.name));
    }

    end_user_time := current_time_monotonic ();
    total_user_time := end_user_time - start_user_time;

    if context.generator.has_errors
        exit (1);

    make_directory_if_it_does_not_exist ("Generated/Win32", recursive = true);
    make_directory_if_it_does_not_exist ("Generated/DirectX", recursive = true);

    make_directory_if_it_does_not_exist ("Generated/Win32/Examples", recursive = true);
    make_directory_if_it_does_not_exist ("Generated/DirectX/Examples", recursive = true);

    copy_file ("window_and_gl.jai", "Generated/Win32/Examples/window_and_gl.jai");
    copy_file ("direct3d12.jai", "Generated/DirectX/Examples/direct3d12.jai");

    total_lines_of_code_generated := 0;
    for context.generator.output_modules
    {
        additional_code : string;
        if it.name == "Win32/Basics"
            additional_code = Additional_Basics_Code;

        code := GenerateModuleSourceCodeToFile (it, additional_code);
        for i : 0..code.count - 1 #no_abc
        {
            if code[i] == #char "\n"
                total_lines_of_code_generated += 1;
        }

        total_lines_of_code_generated += 1;
    }

    ok := write_entire_file ("Generated/Win32/module.jai", Win32_Module_Code);
    if !ok
        log_error ("Error: Could not write file Generated/Win32/module.jai");

    ok = write_entire_file ("Generated/Win32/README.md", Readme);
    if !ok
        log_error ("Error: Could not write file Generated/Win32/README.md");

    end_time := current_time_monotonic ();
    total_time := end_time - start_time;

    log (

#string END
Traversed % different symbols across % input modules
Outputted % modules, generated % lines of code
Timing information:
  Parsing:   % seconds
  Traversal: % seconds
  Total:     % seconds
END,
        total_symbol_count, context.generator.input_modules.count,
        context.generator.output_modules.count, total_lines_of_code_generated,
        to_float64_seconds (total_parse_time),
        to_float64_seconds (total_user_time),
        to_float64_seconds (total_time)
    );

}

Win32_Module_Code :: #string JAI
#module_parameters (
    UNICODE := true,
    Threads := false,
    Time := false,
    Console := false,
    File_System := false,
    Memory := false,
    GDI_Basics := false,
    Windows_And_Messaging := false,
    WGL := false,
    Library_Loader := false,
    Input := false,
    HiDpi := false
);

#scope_file

_Basics     :: #import "Win32/Basics" (UNICODE);

#if Threads
    _Threads    :: #import "Win32/Threads" (UNICODE);
#if Time
    _Time       :: #import "Win32/Time" (UNICODE);
#if Console
    _Console    :: #import "Win32/Console" (UNICODE);
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
#if Library_Loader
    _Library_Loader :: #import "Win32/Library_Loader" (UNICODE);
#if Input
    _Input :: #import "Win32/Input" (UNICODE);
#if HiDpi
    _HiDpi :: #import "Win32/HiDpi" (UNICODE);

#scope_export

using _Basics;

#if Threads
    using _Threads;
#if Time
    using _Time;
#if Console
    using _Console;
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
#if Library_Loader
    using _Library_Loader;
#if Input
    using _Input;
#if HiDpi
    using _HiDpi;
JAI

Additional_Basics_Code :: #string JAI
// The following stuff was hand-written to be automatically
// copy-pasted here, because it is not present in the metadata

HIWORD :: (wparam: WPARAM) -> s16 #must #expand
{
    return cast, no_check (s16) ((cast, no_check (s32) (wparam) >> 16) & 0xffff);
}

LOWORD :: (wparam: WPARAM) -> s16 #must #expand
{
    return cast, no_check (s16) (wparam);
}

HIWORD :: (lparam: LPARAM) -> s16 #must #expand
{
    return cast, no_check (s16) ((cast, no_check (s32) (lparam) >> 16) & 0xffff);
}

LOWORD :: (lparam: LPARAM) -> s16 #must #expand
{
    return cast, no_check (s16) (lparam);
}

MAKELANGID :: (p : u16, s : u16) -> u16 #must #expand
{
    return (s << 10) | p;
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
JAI

Readme :: #string END
This module was generated using `Examples/generate_basics.jai` from [Jai-Win32-Generator](https://github.com/ostef/Jai-Win32-Generator)

## How to use
This module is divided into different submodules, but importing these individually is inconvenient because you would not be able to namespace them with the same name.

For ease of use there is a base sentinel module that you import with the name "Win32", and you select what parts of the Win32 API you want using module parameters. See module.jai and other example files in [the repository](https://github.com/ostef/Jai-Win32-Generator) for more information.

The sentinel module #imports the other modules instead of #loading them to prevent different instantiations of Win32 to create duplicate symbols.
END
