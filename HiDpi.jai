// This file was auto generated

#import "Win32/Basics";
#import "Win32/GDI_Basics";

// Constants

DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE :: cast, no_check (DPI_AWARENESS_CONTEXT) -3;
DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 :: cast, no_check (DPI_AWARENESS_CONTEXT) -4;
DPI_AWARENESS_CONTEXT_SYSTEM_AWARE :: cast, no_check (DPI_AWARENESS_CONTEXT) -2;
DPI_AWARENESS_CONTEXT_UNAWARE :: cast, no_check (DPI_AWARENESS_CONTEXT) -1;
DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED :: cast, no_check (DPI_AWARENESS_CONTEXT) -5;

// Types

DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS :: enum_flags u32
{
    DCDC_DEFAULT :: 0;
    DCDC_DISABLE_FONT_UPDATE :: 1;
    DCDC_DISABLE_RELAYOUT :: 2;
}

DCDC_DEFAULT :: 0;
DCDC_DISABLE_FONT_UPDATE :: 1;
DCDC_DISABLE_RELAYOUT :: 2;

DIALOG_DPI_CHANGE_BEHAVIORS :: enum_flags u32
{
    DDC_DEFAULT :: 0;
    DDC_DISABLE_ALL :: 1;
    DDC_DISABLE_RESIZE :: 2;
    DDC_DISABLE_CONTROL_RELAYOUT :: 4;
}

DDC_DEFAULT :: 0;
DDC_DISABLE_ALL :: 1;
DDC_DISABLE_RESIZE :: 2;
DDC_DISABLE_CONTROL_RELAYOUT :: 4;

DPI_AWARENESS :: enum s32
{
    INVALID :: -1;
    UNAWARE :: 0;
    SYSTEM_AWARE :: 1;
    PER_MONITOR_AWARE :: 2;
}

DPI_AWARENESS_INVALID :: -1;
DPI_AWARENESS_UNAWARE :: 0;
DPI_AWARENESS_SYSTEM_AWARE :: 1;
DPI_AWARENESS_PER_MONITOR_AWARE :: 2;

DPI_AWARENESS_CONTEXT :: s64;

DPI_HOSTING_BEHAVIOR :: enum s32
{
    INVALID :: -1;
    DEFAULT :: 0;
    MIXED :: 1;
}

DPI_HOSTING_BEHAVIOR_INVALID :: -1;
DPI_HOSTING_BEHAVIOR_DEFAULT :: 0;
DPI_HOSTING_BEHAVIOR_MIXED :: 1;

MONITOR_DPI_TYPE :: enum s32
{
    MDT_EFFECTIVE_DPI :: 0;
    MDT_ANGULAR_DPI :: 1;
    MDT_RAW_DPI :: 2;
    MDT_DEFAULT :: 0;
}

MDT_EFFECTIVE_DPI :: 0;
MDT_ANGULAR_DPI :: 1;
MDT_RAW_DPI :: 2;
MDT_DEFAULT :: 0;

PROCESS_DPI_AWARENESS :: enum s32
{
    PROCESS_DPI_UNAWARE :: 0;
    PROCESS_SYSTEM_DPI_AWARE :: 1;
    PROCESS_PER_MONITOR_DPI_AWARE :: 2;
}

PROCESS_DPI_UNAWARE :: 0;
PROCESS_SYSTEM_DPI_AWARE :: 1;
PROCESS_PER_MONITOR_DPI_AWARE :: 2;

// Functions

AdjustWindowRectExForDpi :: (
    lpRect : *RECT,
    dwStyle : u32,
    bMenu : BOOL,
    dwExStyle : u32,
    dpi : u32
) -> BOOL #foreign USER32;

AreDpiAwarenessContextsEqual :: (dpiContextA : DPI_AWARENESS_CONTEXT, dpiContextB : DPI_AWARENESS_CONTEXT) -> BOOL #foreign USER32;
EnableNonClientDpiScaling :: (hwnd : HWND) -> BOOL #foreign USER32;
GetAwarenessFromDpiAwarenessContext :: (value : DPI_AWARENESS_CONTEXT) -> DPI_AWARENESS #foreign USER32;
GetDialogControlDpiChangeBehavior :: (hWnd : HWND) -> DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS #foreign USER32;
GetDialogDpiChangeBehavior :: (hDlg : HWND) -> DIALOG_DPI_CHANGE_BEHAVIORS #foreign USER32;
GetDpiAwarenessContextForProcess :: (hProcess : HANDLE) -> DPI_AWARENESS_CONTEXT #foreign USER32;
GetDpiForMonitor :: (hmonitor : HMONITOR, dpiType : MONITOR_DPI_TYPE, dpiX : *u32, dpiY : *u32) -> HRESULT #foreign Shcore;
GetDpiForSystem :: () -> u32 #foreign USER32;
GetDpiForWindow :: (hwnd : HWND) -> u32 #foreign USER32;
GetDpiFromDpiAwarenessContext :: (value : DPI_AWARENESS_CONTEXT) -> u32 #foreign USER32;
GetProcessDpiAwareness :: (hprocess : HANDLE, value : *PROCESS_DPI_AWARENESS) -> HRESULT #foreign Shcore;
GetSystemDpiForProcess :: (hProcess : HANDLE) -> u32 #foreign USER32;
GetSystemMetricsForDpi :: (nIndex : s32, dpi : u32) -> s32 #foreign USER32;
GetThreadDpiAwarenessContext :: () -> DPI_AWARENESS_CONTEXT #foreign USER32;
GetThreadDpiHostingBehavior :: () -> DPI_HOSTING_BEHAVIOR #foreign USER32;
GetWindowDpiAwarenessContext :: (hwnd : HWND) -> DPI_AWARENESS_CONTEXT #foreign USER32;
GetWindowDpiHostingBehavior :: (hwnd : HWND) -> DPI_HOSTING_BEHAVIOR #foreign USER32;
IsValidDpiAwarenessContext :: (value : DPI_AWARENESS_CONTEXT) -> BOOL #foreign USER32;
LogicalToPhysicalPointForPerMonitorDPI :: (hWnd : HWND, lpPoint : *POINT) -> BOOL #foreign USER32;
OpenThemeDataForDpi :: (hwnd : HWND, pszClassList : PWSTR, dpi : u32) -> s64 #foreign UxTheme;
PhysicalToLogicalPointForPerMonitorDPI :: (hWnd : HWND, lpPoint : *POINT) -> BOOL #foreign USER32;
SetDialogControlDpiChangeBehavior :: (hWnd : HWND, mask : DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS, values : DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS) -> BOOL #foreign USER32;
SetDialogDpiChangeBehavior :: (hDlg : HWND, mask : DIALOG_DPI_CHANGE_BEHAVIORS, values : DIALOG_DPI_CHANGE_BEHAVIORS) -> BOOL #foreign USER32;
SetProcessDpiAwareness :: (value : PROCESS_DPI_AWARENESS) -> HRESULT #foreign Shcore;
SetProcessDpiAwarenessContext :: (value : DPI_AWARENESS_CONTEXT) -> BOOL #foreign USER32;
SetThreadDpiAwarenessContext :: (dpiContext : DPI_AWARENESS_CONTEXT) -> DPI_AWARENESS_CONTEXT #foreign USER32;
SetThreadDpiHostingBehavior :: (value : DPI_HOSTING_BEHAVIOR) -> DPI_HOSTING_BEHAVIOR #foreign USER32;
SystemParametersInfoForDpi :: (
    uiAction : u32,
    uiParam : u32,
    pvParam : *void,
    fWinIni : u32,
    dpi : u32
) -> BOOL #foreign USER32;


// System libraries

#scope_file

USER32 :: #system_library "USER32";
Shcore :: #system_library "Shcore";
UxTheme :: #system_library "UxTheme";

