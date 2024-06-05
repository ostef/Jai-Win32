// This example program generates bindings for basic Win32 stuff

#import "Basic";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Hash_Table";
#import "String";
#import "Sort";

#import, dir "Generator";

// Modules that have 'Basics' in their name are modules that we don't
// output fully and that exists mostly because they have dependencies
// of other modules in them.

// Redirects stuff from input module redir[0] to output module redir[1]
Module_Redirection_Table :: [2]string.[
    .["Foundation", "%/Basics"],
    .["System.Threading", "%/Threads"],
    .["System.Time", "%/Time"],
    .["System.IO", "%/File_System"],
    .["Storage.FileSystem", "%/File_System"],
    .["System.Memory", "%/Memory"],
    .["System.Console", "%/Console"],
    .["UI.WindowsAndMessaging", "%/Windows_And_Messaging"],
    .["System.LibraryLoader", "%/Library_Loader"],
    .["UI.Input", "%/Input"],
    .["UI.Input.KeyboardAndMouse", "%/Input"],
    .["UI.HiDpi", "%/HiDpi"],
    .["Graphics.Dxgi", "%/DXGI"],
    .["Graphics.Dxgi.Common", "%/DXGI"],
    .["Graphics.Direct3D.Dxc", "%/DXC"],
    .["Graphics.Direct3D", "%/Direct3D"],
    .["Graphics.Direct3D12", "%/Direct3D12"],
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
    case "S_OK"; #through;
    case "E_ABORT"; #through;
    case "E_ACCESSDENIED"; #through;
    case "E_FAIL"; #through;
    case "E_HANDLE"; #through;
    case "E_INVALIDARG"; #through;
    case "E_NOINTERFACE"; #through;
    case "E_NOTIMPL"; #through;
    case "E_OUTOFMEMORY"; #through;
    case "E_POINTER"; #through;
    case "E_UNEXPECTE"; #through;
    case "INVALID_HANDLE_VALUE"; #through;
    case "MAX_PATH"; #through;
    case "STRICT";
        return sprint ("%/Basics", output_dir);

    case;
        return "";
    }
}

HandleDirectXSymbol :: (sym : *$T) -> bool #must
{
    if sym.module ==
    {
    case "Graphics.Hlsl"; #through;
    case "Graphics.Direct3D.Fxc"; #through;
    case "Graphics.Direct3D11"; #through;
    case "Graphics.Direct3D11on12"; #through;
    case "Graphics.Direct3D10"; #through;
    case "Graphics.Direct3D9";
        return true;
    }

    if starts_with (sym.name, "D3D12") || starts_with (sym.name, "ID3D12")
    {
        SetOutputModule (sym, sprint ("%/Direct3D12", output_dir));
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

    if starts_with (sym.name, "Dxc") || starts_with (sym.name, "DXC") || starts_with (sym.name, "IDxc")
    {
        SetOutputModule (sym, sprint ("%/DXC", output_dir));

        return true;
    }

    if starts_with (sym.name, "D3D") || starts_with (sym.name, "ID3D")
    {
        SetOutputModule (sym, sprint ("%/Direct3D", output_dir));

        return true;
    }

    if starts_with (sym.name, "DXGI") || starts_with (sym.name, "IDXGI")
    {
        SetOutputModule (sym, sprint ("%/DXGI", output_dir));
        return true;
    }

    return false;
}

output_dir : string;

main :: ()
{
    context.allocator = temp;

    start_time := current_time_monotonic ();

    start_parse_time := start_time;

    output_dir = get_working_directory ();
    output_dir = path_filename (output_dir);

    InitWin32Database ("Generator/win32json/api");

    end_parse_time := current_time_monotonic ();
    total_parse_time := end_parse_time - start_parse_time;

    start_user_time := current_time_monotonic ();

    CreateOutputModule (sprint ("%/Basics", output_dir));
    CreateOutputModule (sprint ("%/Threads", output_dir));
    CreateOutputModule (sprint ("%/Time", output_dir));
    CreateOutputModule (sprint ("%/File_System", output_dir));
    CreateOutputModule (sprint ("%/Memory", output_dir));
    CreateOutputModule (sprint ("%/Console", output_dir));
    CreateOutputModule (sprint ("%/GDI_Basics", output_dir));
    CreateOutputModule (sprint ("%/Windows_And_Messaging", output_dir));
    CreateOutputModule (sprint ("%/WGL", output_dir));
    CreateOutputModule (sprint ("%/Library_Loader", output_dir));
    CreateOutputModule (sprint ("%/Input", output_dir));
    CreateOutputModule (sprint ("%/HiDpi", output_dir));
    CreateOutputModule (sprint ("%/DXGI", output_dir));
    CreateOutputModule (sprint ("%/DXC", output_dir));
    CreateOutputModule (sprint ("%/Direct3D", output_dir));
    CreateOutputModule (sprint ("%/Direct3D12", output_dir));

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

        if it.name ==
        {
        case "INFINITE"; #through;
        case "IGNORE";
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;
        }

        if starts_with (it.name, "FORMAT_MESSAGE_")
        {
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;
        }

        if starts_with (it.name, "WM_")
        {
            SetOutputModule (it, sprint ("%/Windows_And_Messaging", output_dir));
            continue;
        }

        if starts_with (it.name, "WGL")
        {
            SetOutputModule (it, sprint ("%/WGL", output_dir));
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
            SetOutputModule (it, sprint ("%/Input", output_dir));
            continue;
        }

        if starts_with (it.name, "PFD_")
        {
            SetOutputModule (it, sprint ("%/GDI_Basics", output_dir));
            continue;
        }

        if starts_with (it.name, "CP_")
        {
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, sprint (redir[1], output_dir));
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
            SetOutputModule (it, sprint ("%/WGL", output_dir));
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

            SetOutputModule (it, sprint ("%/Basics", output_dir));
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
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;

        case "IMalloc"; #through;
        case "IStream"; #through;
        case "ISequentialStream"; #through;
        case "STREAM_SEEK"; #through;
        case "STATSTG"; #through;
        case "IUnknown"; #through;
        case "IEnumConnectionPoints"; #through;
        case "IEnumConnections"; #through;
        case "IConnectionPoint"; #through;
        case "IConnectionPointContainer"; #through;
        case "CONNECTDATA";
            SetOutputModule (it, sprint ("%/Basics", output_dir));
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
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;

        case "IO_STATUS_BLOCK"; #through;
        case "OBJECT_ATTRIBUTES";
            SetOutputModule (it, sprint ("%/File_System", output_dir));
            continue;

        case "CLIPBOARD_FORMATS"; #through;
        case "POWER_SETTING_REGISTER_NOTIFICATION_FLAGS"; #through;
        case "HELPINFO";
            SetOutputModule (it, sprint ("%/Windows_And_Messaging", output_dir));
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
            SetOutputModule (it, sprint ("%/GDI_Basics", output_dir));
            continue;

        case "HMONITOR"; #through;
        case "HBITMAP"; #through;
        case "HBRUSH"; #through;
        case "HDC"; #through;
        case "PIXELFORMATDESCRIPTOR"; #through;
        case "LAYERPLANEDESCRIPTOR";
            SetOutputModule (it, sprint ("%/GDI_Basics", output_dir));
            continue;

        case "HRGN"; #through;
        case "BLENDFUNCTION"; #through;
        case "EMR"; #through;
        case "HENHMETAFILE"; #through;
        case "LOGFONTA"; #through;
        case "LOGFONTW";
           SetOutputModule (it, sprint ("%/GDI_Basics", output_dir));
           continue;

        case "HGLRC"; #through;
        case "GLYPHMETRICSFLOAT"; #through;
        case "POINTFLOAT";
            SetOutputModule (it, sprint ("%/WGL", output_dir));
            continue;

        case "HKL";
            SetOutputModule (it, sprint ("%/Input", output_dir));
            continue;
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, sprint (redir[1], output_dir));
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
        case "SetConsoleNumberOfCommandsW"; #through;
        case "GetMachineTypeAttributes"; #through;
        case "GetNumaNodeProcessorMask2"; #through;
        case "GetProcessDefaultCpuSetMasks"; #through;
        case "SetProcessDefaultCpuSetMasks"; #through;
        case "GetThreadSelectedCpuSetMasks"; #through;
        case "SetThreadSelectedCpuSetMasks";
            continue;
        }

        // Make GetProcAddress and wglGetProcAddress return a *void instead of a procedure type
        if it.name == "wglGetProcAddress" || it.name == "GetProcAddress"
        {
            it.return_type = void_pointer_type;
        }

        if it.module == "System.DataExchange" && contains (it.name, "Clipboard")
        {
            SetOutputModule (it, sprint ("%/Windows_And_Messaging", output_dir));
            continue;
        }

        if starts_with (it.name, "wgl")
        {
            SetOutputModule (it, sprint ("%/WGL", output_dir));
            continue;
        }

        if it.name ==
        {
        case "timeBeginPeriod"; #through;
        case "timeEndPeriod";
            SetOutputModule (it, sprint ("%/Time", output_dir));
            continue;

        case "IsValidCodePage"; #through;
        case "MultiByteToWideChar"; #through;
        case "WideCharToMultiByte";
            SetOutputModule (it, sprint ("%/Basics", output_dir));
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
            SetOutputModule (it, sprint ("%/GDI_Basics", output_dir));
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
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;

        case "FormatMessageW"; #through;
        case "FormatMessageA";
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;

        case "QueryPerformanceCounter"; #through;
        case "QueryPerformanceFrequency";
            SetOutputModule (it, sprint ("%/Basics", output_dir));
            continue;

        case "GetSystemTimePreciseAsFileTime";
            SetOutputModule (it, sprint ("%/Time", output_dir));
            continue;
        }

        for redir : Module_Redirection_Table
        {
            if it.module == redir[0]
            {
                SetOutputModule (it, sprint (redir[1], output_dir));
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

    total_lines_of_code_generated := 0;
    for context.generator.output_modules
    {
        additional_code : string;
        if it.name == sprint ("%/Basics", output_dir)
            additional_code = Additional_Basics_Code;
        else if it.name == sprint ("%/DXC", output_dir)
            additional_code = Additional_DXC_Code;
        else if it.name == sprint ("%/Direct3D12", output_dir)
            additional_code = Additional_Direct3D12_Code;

        code := GenerateModuleSourceCodeToFile (it, additional_code, output_directory="..");
        for i : 0..code.count - 1 #no_abc
        {
            if code[i] == #char "\n"
                total_lines_of_code_generated += 1;
        }

        total_lines_of_code_generated += 1;
    }

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

Additional_Basics_Code :: #string JAI
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

operator == :: inline (a : GUID, b : GUID) -> bool #must #no_context
{
    return a.Data1 == b.Data1 && a.Data2 == b.Data2 && a.Data3 == b.Data3
        && a.Data4[0] == b.Data4[0] && a.Data4[1] == b.Data4[1]
        && a.Data4[2] == b.Data4[2] && a.Data4[3] == b.Data4[3];
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
JAI

Additional_DXC_Code :: #run -> string
{
    builder : String_Builder;
    append (*builder, "CLSID_DxcUtils :: ");
    AppendStringAsGUIDStruct (*builder, "6245d6af-66e0-48fd-80b4-4d271796748c");
    append (*builder, ";\n");

    return builder_to_string (*builder);
};

Additional_Direct3D12_Code :: #string JAI
SetName :: inline (obj : *ID3D12Object, name : string) -> HRESULT
{
    wide_str := Utf8ToWide (name);
    defer context.allocator.proc (.FREE, 0, 0, wide_str, context.allocator.data);

    return obj.SetName (obj, wide_str);
}

D3D12_ENCODE_SHADER_4_COMPONENT_MAPPING :: inline (Src0 : s32, Src1 : s32, Src2 : s32, Src3 : s32) -> D3D12_SHADER_COMPONENT_MAPPING #must
{
    return cast (D3D12_SHADER_COMPONENT_MAPPING) ((Src0 & D3D12_SHADER_COMPONENT_MAPPING_MASK)
        | ((Src1 & D3D12_SHADER_COMPONENT_MAPPING_MASK) << D3D12_SHADER_COMPONENT_MAPPING_SHIFT)
        | ((Src2 & D3D12_SHADER_COMPONENT_MAPPING_MASK) << (D3D12_SHADER_COMPONENT_MAPPING_SHIFT * 2))
        | ((Src3 & D3D12_SHADER_COMPONENT_MAPPING_MASK) << (D3D12_SHADER_COMPONENT_MAPPING_SHIFT * 3))
        | D3D12_SHADER_COMPONENT_MAPPING_ALWAYS_SET_BIT_AVOIDING_ZEROMEM_MISTAKES);
}

D3D12_DECODE_SHADER_4_COMPONENT_MAPPING :: inline (ComponentToExtract : s32, Mapping : s32) -> D3D12_SHADER_COMPONENT_MAPPING #must
{
    return (cast (D3D12_SHADER_COMPONENT_MAPPING) (Mapping >> (D3D12_SHADER_COMPONENT_MAPPING_SHIFT * ComponentToExtract) & D3D12_SHADER_COMPONENT_MAPPING_MASK));
}

D3D12_ENCODE_BASIC_FILTER :: inline (min: D3D12_FILTER_TYPE, mag: D3D12_FILTER_TYPE, mip: D3D12_FILTER_TYPE, reduction: D3D12_FILTER_REDUCTION_TYPE) -> D3D12_FILTER #must
{
    return cast (D3D12_FILTER) (
        ((xx min & D3D12_FILTER_TYPE_MASK) << D3D12_MIN_FILTER_SHIFT)
        | ((xx mag & D3D12_FILTER_TYPE_MASK) << D3D12_MAG_FILTER_SHIFT)
        | ((xx mip & D3D12_FILTER_TYPE_MASK) << D3D12_MIP_FILTER_SHIFT)
        | ((xx reduction & D3D12_FILTER_REDUCTION_TYPE_MASK) << D3D12_FILTER_REDUCTION_TYPE_SHIFT));
}

D3D12_ENCODE_ANISOTROPIC_FILTER :: inline (reduction: D3D12_FILTER_REDUCTION_TYPE) -> D3D12_FILTER #must
{
    return cast (D3D12_FILTER) (D3D12_ANISOTROPIC_FILTERING_BIT | xx D3D12_ENCODE_BASIC_FILTER (.LINEAR, .LINEAR, .LINEAR, reduction));
}

D3D12_DECODE_MIN_FILTER :: inline (D3D12Filter: D3D12_FILTER) -> D3D12_FILTER_TYPE #must
{
    return cast (D3D12_FILTER_TYPE) ((cast (s64) D3D12Filter >> D3D12_MIN_FILTER_SHIFT) & D3D12_FILTER_TYPE_MASK);
}

D3D12_DECODE_MAG_FILTER :: inline (D3D12Filter: D3D12_FILTER) -> D3D12_FILTER_TYPE #must
{
    return cast (D3D12_FILTER_TYPE) ((cast (s64) D3D12Filter >> D3D12_MAG_FILTER_SHIFT) & D3D12_FILTER_TYPE_MASK);
}

D3D12_DECODE_MIP_FILTER :: inline (D3D12Filter: D3D12_FILTER) -> D3D12_FILTER_TYPE #must
{
    return cast (D3D12_FILTER_TYPE) ((cast (s64) D3D12Filter >> D3D12_MIP_FILTER_SHIFT) & D3D12_FILTER_TYPE_MASK);
}

D3D12_DECODE_FILTER_REDUCTION :: inline (D3D12Filter: D3D12_FILTER) -> D3D12_FILTER_REDUCTION_TYPE #must
{
     return cast (D3D12_FILTER_REDUCTION_TYPE) ((cast(s64) D3D12Filter >> D3D12_FILTER_REDUCTION_TYPE_SHIFT) & D3D12_FILTER_REDUCTION_TYPE_MASK);
}

D3D12_DECODE_IS_COMPARISON_FILTER :: inline (D3D12Filter: D3D12_FILTER) -> bool #must
{
    return D3D12_DECODE_FILTER_REDUCTION (D3D12Filter) == D3D12_FILTER_REDUCTION_TYPE.COMPARISON;
}

D3D12_DECODE_IS_ANISOTROPIC_FILTER :: inline (D3D12Filter: D3D12_FILTER) -> bool #must
{
    return (xx D3D12Filter & D3D12_ANISOTROPIC_FILTERING_BIT)
        && D3D12_DECODE_MIN_FILTER (D3D12Filter) == D3D12_FILTER_TYPE.LINEAR
        && D3D12_DECODE_MAG_FILTER (D3D12Filter) == D3D12_FILTER_TYPE.LINEAR
        && D3D12_DECODE_MIP_FILTER (D3D12Filter) == D3D12_FILTER_TYPE.LINEAR;
}
JAI
