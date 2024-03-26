// This file was auto generated

#import "Win32/Basics";

// Constants

PFD_DEPTH_DONTCARE :: 536870912;
PFD_DIRECT3D_ACCELERATED :: 16384;
PFD_DOUBLEBUFFER :: 1;
PFD_DOUBLEBUFFER_DONTCARE :: 1073741824;
PFD_DRAW_TO_BITMAP :: 8;
PFD_DRAW_TO_WINDOW :: 4;
PFD_GENERIC_ACCELERATED :: 4096;
PFD_GENERIC_FORMAT :: 64;
PFD_MAIN_PLANE :: 0;
PFD_NEED_PALETTE :: 128;
PFD_NEED_SYSTEM_PALETTE :: 256;
PFD_OVERLAY_PLANE :: 1;
PFD_STEREO :: 2;
PFD_STEREO_DONTCARE :: 2147483648;
PFD_SUPPORT_COMPOSITION :: 32768;
PFD_SUPPORT_DIRECTDRAW :: 8192;
PFD_SUPPORT_GDI :: 16;
PFD_SUPPORT_OPENGL :: 32;
PFD_SWAP_COPY :: 1024;
PFD_SWAP_EXCHANGE :: 512;
PFD_SWAP_LAYER_BUFFERS :: 2048;
PFD_TYPE_COLORINDEX :: 1;
PFD_TYPE_RGBA :: 0;
PFD_UNDERLAY_PLANE :: -1;

// Types

BLENDFUNCTION :: struct
{
    BlendOp : u8;
    BlendFlags : u8;
    SourceConstantAlpha : u8;
    AlphaFormat : u8;
}

CreatedHDC :: *void;

DEVMODEA :: struct
{
    dmDeviceName : [32]u8;
    dmSpecVersion : u16;
    dmDriverVersion : u16;
    dmSize : u16;
    dmDriverExtra : u16;
    dmFields : u32;
    union
    {
        struct
        {
            dmOrientation : s16;
            dmPaperSize : s16;
            dmPaperLength : s16;
            dmPaperWidth : s16;
            dmScale : s16;
            dmCopies : s16;
            dmDefaultSource : s16;
            dmPrintQuality : s16;
        }; // Anonymous
        struct
        {
            dmPosition : POINTL;
            dmDisplayOrientation : u32;
            dmDisplayFixedOutput : u32;
        }; // Anonymous
    }; // Anonymous
    dmColor : s16;
    dmDuplex : s16;
    dmYResolution : s16;
    dmTTOption : s16;
    dmCollate : s16;
    dmFormName : [32]u8;
    dmLogPixels : u16;
    dmBitsPerPel : u32;
    dmPelsWidth : u32;
    dmPelsHeight : u32;
    union
    {
        dmDisplayFlags : u32;
        dmNup : u32;
    }; // Anonymous
    dmDisplayFrequency : u32;
    dmICMMethod : u32;
    dmICMIntent : u32;
    dmMediaType : u32;
    dmDitherType : u32;
    dmReserved1 : u32;
    dmReserved2 : u32;
    dmPanningWidth : u32;
    dmPanningHeight : u32;
}

DEVMODEW :: struct
{
    dmDeviceName : [32]u16;
    dmSpecVersion : u16;
    dmDriverVersion : u16;
    dmSize : u16;
    dmDriverExtra : u16;
    dmFields : u32;
    union
    {
        struct
        {
            dmOrientation : s16;
            dmPaperSize : s16;
            dmPaperLength : s16;
            dmPaperWidth : s16;
            dmScale : s16;
            dmCopies : s16;
            dmDefaultSource : s16;
            dmPrintQuality : s16;
        }; // Anonymous
        struct
        {
            dmPosition : POINTL;
            dmDisplayOrientation : u32;
            dmDisplayFixedOutput : u32;
        }; // Anonymous
    }; // Anonymous
    dmColor : s16;
    dmDuplex : s16;
    dmYResolution : s16;
    dmTTOption : s16;
    dmCollate : s16;
    dmFormName : [32]u16;
    dmLogPixels : u16;
    dmBitsPerPel : u32;
    dmPelsWidth : u32;
    dmPelsHeight : u32;
    union
    {
        dmDisplayFlags : u32;
        dmNup : u32;
    }; // Anonymous
    dmDisplayFrequency : u32;
    dmICMMethod : u32;
    dmICMIntent : u32;
    dmMediaType : u32;
    dmDitherType : u32;
    dmReserved1 : u32;
    dmReserved2 : u32;
    dmPanningWidth : u32;
    dmPanningHeight : u32;
}

DISPLAY_DEVICEA :: struct
{
    cb : u32;
    DeviceName : [32]CHAR;
    DeviceString : [128]CHAR;
    StateFlags : u32;
    DeviceID : [128]CHAR;
    DeviceKey : [128]CHAR;
}

DISPLAY_DEVICEW :: struct
{
    cb : u32;
    DeviceName : [32]u16;
    DeviceString : [128]u16;
    StateFlags : u32;
    DeviceID : [128]u16;
    DeviceKey : [128]u16;
}

EMR :: struct
{
    iType : u32;
    nSize : u32;
}

ENUM_DISPLAY_SETTINGS_MODE :: enum u32
{
    ENUM_CURRENT_SETTINGS :: 4294967295;
    ENUM_REGISTRY_SETTINGS :: 4294967294;
}

ENUM_CURRENT_SETTINGS :: 4294967295;
ENUM_REGISTRY_SETTINGS :: 4294967294;

GET_DCX_FLAGS :: enum_flags u32
{
    DCX_WINDOW :: 1;
    DCX_CACHE :: 2;
    DCX_PARENTCLIP :: 32;
    DCX_CLIPSIBLINGS :: 16;
    DCX_CLIPCHILDREN :: 8;
    DCX_NORESETATTRS :: 4;
    DCX_LOCKWINDOWUPDATE :: 1024;
    DCX_EXCLUDERGN :: 64;
    DCX_INTERSECTRGN :: 128;
    DCX_INTERSECTUPDATE :: 512;
    DCX_VALIDATE :: 2097152;
}

DCX_WINDOW :: 1;
DCX_CACHE :: 2;
DCX_PARENTCLIP :: 32;
DCX_CLIPSIBLINGS :: 16;
DCX_CLIPCHILDREN :: 8;
DCX_NORESETATTRS :: 4;
DCX_LOCKWINDOWUPDATE :: 1024;
DCX_EXCLUDERGN :: 64;
DCX_INTERSECTRGN :: 128;
DCX_INTERSECTUPDATE :: 512;
DCX_VALIDATE :: 2097152;

HBITMAP :: *void;

HBRUSH :: *void;

HDC :: *void;

HENHMETAFILE :: *void;

HMONITOR :: *void;

HRGN :: *void;

LAYERPLANEDESCRIPTOR :: struct
{
    nSize : u16;
    nVersion : u16;
    dwFlags : u32;
    iPixelType : u8;
    cColorBits : u8;
    cRedBits : u8;
    cRedShift : u8;
    cGreenBits : u8;
    cGreenShift : u8;
    cBlueBits : u8;
    cBlueShift : u8;
    cAlphaBits : u8;
    cAlphaShift : u8;
    cAccumBits : u8;
    cAccumRedBits : u8;
    cAccumGreenBits : u8;
    cAccumBlueBits : u8;
    cAccumAlphaBits : u8;
    cDepthBits : u8;
    cStencilBits : u8;
    cAuxBuffers : u8;
    iLayerPlane : u8;
    bReserved : u8;
    crTransparent : u32;
}

LOGFONTA :: struct
{
    lfHeight : s32;
    lfWidth : s32;
    lfEscapement : s32;
    lfOrientation : s32;
    lfWeight : s32;
    lfItalic : u8;
    lfUnderline : u8;
    lfStrikeOut : u8;
    lfCharSet : u8;
    lfOutPrecision : u8;
    lfClipPrecision : u8;
    lfQuality : u8;
    lfPitchAndFamily : u8;
    lfFaceName : [32]CHAR;
}

LOGFONTW :: struct
{
    lfHeight : s32;
    lfWidth : s32;
    lfEscapement : s32;
    lfOrientation : s32;
    lfWeight : s32;
    lfItalic : u8;
    lfUnderline : u8;
    lfStrikeOut : u8;
    lfCharSet : u8;
    lfOutPrecision : u8;
    lfClipPrecision : u8;
    lfQuality : u8;
    lfPitchAndFamily : u8;
    lfFaceName : [32]u16;
}

MONITORENUMPROC :: #type (param0 : HMONITOR, param1 : HDC, param2 : *RECT, param3 : LPARAM) -> BOOL #c_call;

MONITORINFO :: struct
{
    cbSize : u32;
    rcMonitor : RECT;
    rcWork : RECT;
    dwFlags : u32;
}

MONITORINFOEXA :: struct
{
    __AnonymousBase_winuser_L13567_C43 : MONITORINFO;
    szDevice : [32]CHAR;
}

MONITORINFOEXW :: struct
{
    __AnonymousBase_winuser_L13571_C43 : MONITORINFO;
    szDevice : [32]u16;
}

MONITOR_FROM_FLAGS :: enum u32
{
    MONITOR_DEFAULTTONEAREST :: 2;
    MONITOR_DEFAULTTONULL :: 0;
    MONITOR_DEFAULTTOPRIMARY :: 1;
}

MONITOR_DEFAULTTONEAREST :: 2;
MONITOR_DEFAULTTONULL :: 0;
MONITOR_DEFAULTTOPRIMARY :: 1;

PIXELFORMATDESCRIPTOR :: struct
{
    nSize : u16;
    nVersion : u16;
    dwFlags : u32;
    iPixelType : u8;
    cColorBits : u8;
    cRedBits : u8;
    cRedShift : u8;
    cGreenBits : u8;
    cGreenShift : u8;
    cBlueBits : u8;
    cBlueShift : u8;
    cAlphaBits : u8;
    cAlphaShift : u8;
    cAccumBits : u8;
    cAccumRedBits : u8;
    cAccumGreenBits : u8;
    cAccumBlueBits : u8;
    cAccumAlphaBits : u8;
    cDepthBits : u8;
    cStencilBits : u8;
    cAuxBuffers : u8;
    iLayerType : u8;
    bReserved : u8;
    dwLayerMask : u32;
    dwVisibleMask : u32;
    dwDamageMask : u32;
}

ROP_CODE :: enum u32
{
    SRCCOPY :: 13369376;
    SRCPAINT :: 15597702;
    SRCAND :: 8913094;
    SRCINVERT :: 6684742;
    SRCERASE :: 4457256;
    NOTSRCCOPY :: 3342344;
    NOTSRCERASE :: 1114278;
    MERGECOPY :: 12583114;
    MERGEPAINT :: 12255782;
    PATCOPY :: 15728673;
    PATPAINT :: 16452105;
    PATINVERT :: 5898313;
    DSTINVERT :: 5570569;
    BLACKNESS :: 66;
    WHITENESS :: 16711778;
    NOMIRRORBITMAP :: 2147483648;
    CAPTUREBLT :: 1073741824;
}

SRCCOPY :: 13369376;
SRCPAINT :: 15597702;
SRCAND :: 8913094;
SRCINVERT :: 6684742;
SRCERASE :: 4457256;
NOTSRCCOPY :: 3342344;
NOTSRCERASE :: 1114278;
MERGECOPY :: 12583114;
MERGEPAINT :: 12255782;
PATCOPY :: 15728673;
PATPAINT :: 16452105;
PATINVERT :: 5898313;
DSTINVERT :: 5570569;
BLACKNESS :: 66;
WHITENESS :: 16711778;
NOMIRRORBITMAP :: 2147483648;
CAPTUREBLT :: 1073741824;

// Functions

BitBlt :: (hdc : HDC, x : s32, y : s32, cx : s32, cy : s32, hdcSrc : HDC, x1 : s32, y1 : s32, rop : ROP_CODE) -> BOOL #foreign GDI32;
CancelDC :: (hdc : HDC) -> BOOL #foreign GDI32;
ChoosePixelFormat :: (hdc : HDC, ppfd : *PIXELFORMATDESCRIPTOR) -> s32 #foreign GDI32;
ClientToScreen :: (hWnd : HWND, lpPoint : *POINT) -> BOOL #foreign USER32;
CreateDCA :: (pwszDriver : PSTR, pwszDevice : PSTR, pszPort : PSTR, pdm : *DEVMODEA) -> CreatedHDC #foreign GDI32;
CreateDCW :: (pwszDriver : PWSTR, pwszDevice : PWSTR, pszPort : PWSTR, pdm : *DEVMODEW) -> CreatedHDC #foreign GDI32;
DeleteDC :: (hdc : CreatedHDC) -> BOOL #foreign GDI32;
DescribePixelFormat :: (hdc : HDC, iPixelFormat : s32, nBytes : u32, ppfd : *PIXELFORMATDESCRIPTOR) -> s32 #foreign GDI32;
EnumDisplayDevicesA :: (lpDevice : PSTR, iDevNum : u32, lpDisplayDevice : *DISPLAY_DEVICEA, dwFlags : u32) -> BOOL #foreign USER32;
EnumDisplayDevicesW :: (lpDevice : PWSTR, iDevNum : u32, lpDisplayDevice : *DISPLAY_DEVICEW, dwFlags : u32) -> BOOL #foreign USER32;
EnumDisplayMonitors :: (hdc : HDC, lprcClip : *RECT, lpfnEnum : MONITORENUMPROC, dwData : LPARAM) -> BOOL #foreign USER32;
EnumDisplaySettingsA :: (lpszDeviceName : PSTR, iModeNum : ENUM_DISPLAY_SETTINGS_MODE, lpDevMode : *DEVMODEA) -> BOOL #foreign USER32;
EnumDisplaySettingsExA :: (lpszDeviceName : PSTR, iModeNum : ENUM_DISPLAY_SETTINGS_MODE, lpDevMode : *DEVMODEA, dwFlags : u32) -> BOOL #foreign USER32;
EnumDisplaySettingsExW :: (lpszDeviceName : PWSTR, iModeNum : ENUM_DISPLAY_SETTINGS_MODE, lpDevMode : *DEVMODEW, dwFlags : u32) -> BOOL #foreign USER32;
EnumDisplaySettingsW :: (lpszDeviceName : PWSTR, iModeNum : ENUM_DISPLAY_SETTINGS_MODE, lpDevMode : *DEVMODEW) -> BOOL #foreign USER32;
GetDC :: (hWnd : HWND) -> HDC #foreign USER32;
GetDCEx :: (hWnd : HWND, hrgnClip : HRGN, flags : GET_DCX_FLAGS) -> HDC #foreign USER32;
GetMonitorInfoA :: (hMonitor : HMONITOR, lpmi : *MONITORINFO) -> BOOL #foreign USER32;
GetMonitorInfoW :: (hMonitor : HMONITOR, lpmi : *MONITORINFO) -> BOOL #foreign USER32;
GetPixelFormat :: (hdc : HDC) -> s32 #foreign GDI32;
MonitorFromPoint :: (pt : POINT, dwFlags : MONITOR_FROM_FLAGS) -> HMONITOR #foreign USER32;
MonitorFromRect :: (lprc : *RECT, dwFlags : MONITOR_FROM_FLAGS) -> HMONITOR #foreign USER32;
ReleaseDC :: (hWnd : HWND, hDC : HDC) -> s32 #foreign USER32;
SaveDC :: (hdc : HDC) -> s32 #foreign GDI32;
ScreenToClient :: (hWnd : HWND, lpPoint : *POINT) -> BOOL #foreign USER32;
SetPixelFormat :: (hdc : HDC, format : s32, ppfd : *PIXELFORMATDESCRIPTOR) -> BOOL #foreign GDI32;
SwapBuffers :: (param0 : HDC) -> BOOL #foreign GDI32;
UpdateWindow :: (hWnd : HWND) -> BOOL #foreign USER32;
WindowFromDC :: (hDC : HDC) -> HWND #foreign USER32;

// System libraries

#scope_file

GDI32 :: #system_library "GDI32";
USER32 :: #system_library "USER32";

