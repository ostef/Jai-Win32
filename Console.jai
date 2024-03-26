// This file was auto generated

#import "Win32/Basics";

// Constants

ALTNUMPAD_BIT :: 67108864;
ATTACH_PARENT_PROCESS :: 4294967295;
BACKGROUND_BLUE :: 16;
BACKGROUND_GREEN :: 32;
BACKGROUND_INTENSITY :: 128;
BACKGROUND_RED :: 64;
CAPSLOCK_ON :: 128;
COMMON_LVB_GRID_HORIZONTAL :: 1024;
COMMON_LVB_GRID_LVERTICAL :: 2048;
COMMON_LVB_GRID_RVERTICAL :: 4096;
COMMON_LVB_LEADING_BYTE :: 256;
COMMON_LVB_REVERSE_VIDEO :: 16384;
COMMON_LVB_SBCSDBCS :: 768;
COMMON_LVB_TRAILING_BYTE :: 512;
COMMON_LVB_UNDERSCORE :: 32768;
CONSOLE_FULLSCREEN :: 1;
CONSOLE_FULLSCREEN_HARDWARE :: 2;
CONSOLE_FULLSCREEN_MODE :: 1;
CONSOLE_MOUSE_DOWN :: 8;
CONSOLE_MOUSE_SELECTION :: 4;
CONSOLE_NO_SELECTION :: 0;
CONSOLE_SELECTION_IN_PROGRESS :: 1;
CONSOLE_SELECTION_NOT_EMPTY :: 2;
CONSOLE_TEXTMODE_BUFFER :: 1;
CONSOLE_WINDOWED_MODE :: 2;
CTRL_BREAK_EVENT :: 1;
CTRL_CLOSE_EVENT :: 2;
CTRL_C_EVENT :: 0;
CTRL_LOGOFF_EVENT :: 5;
CTRL_SHUTDOWN_EVENT :: 6;
DOUBLE_CLICK :: 2;
ENHANCED_KEY :: 256;
FOCUS_EVENT :: 16;
FOREGROUND_BLUE :: 1;
FOREGROUND_GREEN :: 2;
FOREGROUND_INTENSITY :: 8;
FOREGROUND_RED :: 4;
FROM_LEFT_1ST_BUTTON_PRESSED :: 1;
FROM_LEFT_2ND_BUTTON_PRESSED :: 4;
FROM_LEFT_3RD_BUTTON_PRESSED :: 8;
FROM_LEFT_4TH_BUTTON_PRESSED :: 16;
HISTORY_NO_DUP_FLAG :: 1;
KEY_EVENT :: 1;
LEFT_ALT_PRESSED :: 2;
LEFT_CTRL_PRESSED :: 8;
MENU_EVENT :: 8;
MOUSE_EVENT :: 2;
MOUSE_HWHEELED :: 8;
MOUSE_MOVED :: 1;
MOUSE_WHEELED :: 4;
NLS_ALPHANUMERIC :: 0;
NLS_DBCSCHAR :: 65536;
NLS_HIRAGANA :: 262144;
NLS_IME_CONVERSION :: 8388608;
NLS_IME_DISABLE :: 536870912;
NLS_KATAKANA :: 131072;
NLS_ROMAN :: 4194304;
NUMLOCK_ON :: 32;
PSEUDOCONSOLE_INHERIT_CURSOR :: 1;
RIGHTMOST_BUTTON_PRESSED :: 2;
RIGHT_ALT_PRESSED :: 1;
RIGHT_CTRL_PRESSED :: 4;
SCROLLLOCK_ON :: 64;
SHIFT_PRESSED :: 16;
WINDOW_BUFFER_SIZE_EVENT :: 4;

// Types

CHAR_INFO :: struct
{
    Char : _Char_e__Union;
    Attributes : u16;

    _Char_e__Union :: union
    {
        UnicodeChar : u16;
        AsciiChar : CHAR;
    }
}

CONSOLE_CURSOR_INFO :: struct
{
    dwSize : u32;
    bVisible : BOOL;
}

CONSOLE_FONT_INFO :: struct
{
    nFont : u32;
    dwFontSize : COORD;
}

CONSOLE_FONT_INFOEX :: struct
{
    cbSize : u32;
    nFont : u32;
    dwFontSize : COORD;
    FontFamily : u32;
    FontWeight : u32;
    FaceName : [32]u16;
}

CONSOLE_HISTORY_INFO :: struct
{
    cbSize : u32;
    HistoryBufferSize : u32;
    NumberOfHistoryBuffers : u32;
    dwFlags : u32;
}

CONSOLE_MODE :: enum_flags u32
{
    ENABLE_PROCESSED_INPUT :: 1;
    ENABLE_LINE_INPUT :: 2;
    ENABLE_ECHO_INPUT :: 4;
    ENABLE_WINDOW_INPUT :: 8;
    ENABLE_MOUSE_INPUT :: 16;
    ENABLE_INSERT_MODE :: 32;
    ENABLE_QUICK_EDIT_MODE :: 64;
    ENABLE_EXTENDED_FLAGS :: 128;
    ENABLE_AUTO_POSITION :: 256;
    ENABLE_VIRTUAL_TERMINAL_INPUT :: 512;
    ENABLE_PROCESSED_OUTPUT :: 1;
    ENABLE_WRAP_AT_EOL_OUTPUT :: 2;
    ENABLE_VIRTUAL_TERMINAL_PROCESSING :: 4;
    DISABLE_NEWLINE_AUTO_RETURN :: 8;
    ENABLE_LVB_GRID_WORLDWIDE :: 16;
}

ENABLE_PROCESSED_INPUT :: 1;
ENABLE_LINE_INPUT :: 2;
ENABLE_ECHO_INPUT :: 4;
ENABLE_WINDOW_INPUT :: 8;
ENABLE_MOUSE_INPUT :: 16;
ENABLE_INSERT_MODE :: 32;
ENABLE_QUICK_EDIT_MODE :: 64;
ENABLE_EXTENDED_FLAGS :: 128;
ENABLE_AUTO_POSITION :: 256;
ENABLE_VIRTUAL_TERMINAL_INPUT :: 512;
ENABLE_PROCESSED_OUTPUT :: 1;
ENABLE_WRAP_AT_EOL_OUTPUT :: 2;
ENABLE_VIRTUAL_TERMINAL_PROCESSING :: 4;
DISABLE_NEWLINE_AUTO_RETURN :: 8;
ENABLE_LVB_GRID_WORLDWIDE :: 16;

CONSOLE_READCONSOLE_CONTROL :: struct
{
    nLength : u32;
    nInitialChars : u32;
    dwCtrlWakeupMask : u32;
    dwControlKeyState : u32;
}

CONSOLE_SCREEN_BUFFER_INFO :: struct
{
    dwSize : COORD;
    dwCursorPosition : COORD;
    wAttributes : u16;
    srWindow : SMALL_RECT;
    dwMaximumWindowSize : COORD;
}

CONSOLE_SCREEN_BUFFER_INFOEX :: struct
{
    cbSize : u32;
    dwSize : COORD;
    dwCursorPosition : COORD;
    wAttributes : u16;
    srWindow : SMALL_RECT;
    dwMaximumWindowSize : COORD;
    wPopupAttributes : u16;
    bFullscreenSupported : BOOL;
    ColorTable : [16]u32;
}

CONSOLE_SELECTION_INFO :: struct
{
    dwFlags : u32;
    dwSelectionAnchor : COORD;
    srSelection : SMALL_RECT;
}

COORD :: struct
{
    X : s16;
    Y : s16;
}

FOCUS_EVENT_RECORD :: struct
{
    bSetFocus : BOOL;
}

HPCON :: *void;

INPUT_RECORD :: struct
{
    EventType : u16;
    Event : _Event_e__Union;

    _Event_e__Union :: union
    {
        KeyEvent : KEY_EVENT_RECORD;
        MouseEvent : MOUSE_EVENT_RECORD;
        WindowBufferSizeEvent : WINDOW_BUFFER_SIZE_RECORD;
        MenuEvent : MENU_EVENT_RECORD;
        FocusEvent : FOCUS_EVENT_RECORD;
    }
}

KEY_EVENT_RECORD :: struct
{
    bKeyDown : BOOL;
    wRepeatCount : u16;
    wVirtualKeyCode : u16;
    wVirtualScanCode : u16;
    uChar : _uChar_e__Union;
    dwControlKeyState : u32;

    _uChar_e__Union :: union
    {
        UnicodeChar : u16;
        AsciiChar : CHAR;
    }
}

MENU_EVENT_RECORD :: struct
{
    dwCommandId : u32;
}

MOUSE_EVENT_RECORD :: struct
{
    dwMousePosition : COORD;
    dwButtonState : u32;
    dwControlKeyState : u32;
    dwEventFlags : u32;
}

PHANDLER_ROUTINE :: #type (CtrlType : u32) -> BOOL #c_call;

SMALL_RECT :: struct
{
    Left : s16;
    Top : s16;
    Right : s16;
    Bottom : s16;
}

WINDOW_BUFFER_SIZE_RECORD :: struct
{
    dwSize : COORD;
}

// Functions

AddConsoleAliasA :: (Source : PSTR, Target : PSTR, ExeName : PSTR) -> BOOL #foreign KERNEL32;
AddConsoleAliasW :: (Source : PWSTR, Target : PWSTR, ExeName : PWSTR) -> BOOL #foreign KERNEL32;
AllocConsole :: () -> BOOL #foreign KERNEL32;
AttachConsole :: (dwProcessId : u32) -> BOOL #foreign KERNEL32;
ClosePseudoConsole :: (hPC : HPCON)  #foreign KERNEL32;
CreateConsoleScreenBuffer :: (dwDesiredAccess : u32, dwShareMode : u32, lpSecurityAttributes : *SECURITY_ATTRIBUTES, dwFlags : u32, lpScreenBufferData : *void) -> HANDLE #foreign KERNEL32;
CreatePseudoConsole :: (size : COORD, hInput : HANDLE, hOutput : HANDLE, dwFlags : u32, phPC : *HPCON) -> HRESULT #foreign KERNEL32;
FillConsoleOutputAttribute :: (hConsoleOutput : HANDLE, wAttribute : u16, nLength : u32, dwWriteCoord : COORD, lpNumberOfAttrsWritten : *u32) -> BOOL #foreign KERNEL32;
FillConsoleOutputCharacterA :: (hConsoleOutput : HANDLE, cCharacter : CHAR, nLength : u32, dwWriteCoord : COORD, lpNumberOfCharsWritten : *u32) -> BOOL #foreign KERNEL32;
FillConsoleOutputCharacterW :: (hConsoleOutput : HANDLE, cCharacter : u16, nLength : u32, dwWriteCoord : COORD, lpNumberOfCharsWritten : *u32) -> BOOL #foreign KERNEL32;
FlushConsoleInputBuffer :: (hConsoleInput : HANDLE) -> BOOL #foreign KERNEL32;
FreeConsole :: () -> BOOL #foreign KERNEL32;
GenerateConsoleCtrlEvent :: (dwCtrlEvent : u32, dwProcessGroupId : u32) -> BOOL #foreign KERNEL32;
GetConsoleAliasA :: (Source : PSTR, TargetBuffer : *u8, TargetBufferLength : u32, ExeName : PSTR) -> u32 #foreign KERNEL32;
GetConsoleAliasExesA :: (ExeNameBuffer : *u8, ExeNameBufferLength : u32) -> u32 #foreign KERNEL32;
GetConsoleAliasExesLengthA :: () -> u32 #foreign KERNEL32;
GetConsoleAliasExesLengthW :: () -> u32 #foreign KERNEL32;
GetConsoleAliasExesW :: (ExeNameBuffer : *u16, ExeNameBufferLength : u32) -> u32 #foreign KERNEL32;
GetConsoleAliasW :: (Source : PWSTR, TargetBuffer : *u16, TargetBufferLength : u32, ExeName : PWSTR) -> u32 #foreign KERNEL32;
GetConsoleAliasesA :: (AliasBuffer : *u8, AliasBufferLength : u32, ExeName : PSTR) -> u32 #foreign KERNEL32;
GetConsoleAliasesLengthA :: (ExeName : PSTR) -> u32 #foreign KERNEL32;
GetConsoleAliasesLengthW :: (ExeName : PWSTR) -> u32 #foreign KERNEL32;
GetConsoleAliasesW :: (AliasBuffer : *u16, AliasBufferLength : u32, ExeName : PWSTR) -> u32 #foreign KERNEL32;
GetConsoleCP :: () -> u32 #foreign KERNEL32;
GetConsoleCursorInfo :: (hConsoleOutput : HANDLE, lpConsoleCursorInfo : *CONSOLE_CURSOR_INFO) -> BOOL #foreign KERNEL32;
GetConsoleDisplayMode :: (lpModeFlags : *u32) -> BOOL #foreign KERNEL32;
GetConsoleFontSize :: (hConsoleOutput : HANDLE, nFont : u32) -> COORD #foreign KERNEL32;
GetConsoleHistoryInfo :: (lpConsoleHistoryInfo : *CONSOLE_HISTORY_INFO) -> BOOL #foreign KERNEL32;
GetConsoleMode :: (hConsoleHandle : HANDLE, lpMode : *CONSOLE_MODE) -> BOOL #foreign KERNEL32;
GetConsoleOriginalTitleA :: (lpConsoleTitle : *u8, nSize : u32) -> u32 #foreign KERNEL32;
GetConsoleOriginalTitleW :: (lpConsoleTitle : *u16, nSize : u32) -> u32 #foreign KERNEL32;
GetConsoleOutputCP :: () -> u32 #foreign KERNEL32;
GetConsoleProcessList :: (lpdwProcessList : *u32, dwProcessCount : u32) -> u32 #foreign KERNEL32;
GetConsoleScreenBufferInfo :: (hConsoleOutput : HANDLE, lpConsoleScreenBufferInfo : *CONSOLE_SCREEN_BUFFER_INFO) -> BOOL #foreign KERNEL32;
GetConsoleScreenBufferInfoEx :: (hConsoleOutput : HANDLE, lpConsoleScreenBufferInfoEx : *CONSOLE_SCREEN_BUFFER_INFOEX) -> BOOL #foreign KERNEL32;
GetConsoleSelectionInfo :: (lpConsoleSelectionInfo : *CONSOLE_SELECTION_INFO) -> BOOL #foreign KERNEL32;
GetConsoleTitleA :: (lpConsoleTitle : *u8, nSize : u32) -> u32 #foreign KERNEL32;
GetConsoleTitleW :: (lpConsoleTitle : *u16, nSize : u32) -> u32 #foreign KERNEL32;
GetConsoleWindow :: () -> HWND #foreign KERNEL32;
GetCurrentConsoleFont :: (hConsoleOutput : HANDLE, bMaximumWindow : BOOL, lpConsoleCurrentFont : *CONSOLE_FONT_INFO) -> BOOL #foreign KERNEL32;
GetCurrentConsoleFontEx :: (hConsoleOutput : HANDLE, bMaximumWindow : BOOL, lpConsoleCurrentFontEx : *CONSOLE_FONT_INFOEX) -> BOOL #foreign KERNEL32;
GetLargestConsoleWindowSize :: (hConsoleOutput : HANDLE) -> COORD #foreign KERNEL32;
GetNumberOfConsoleInputEvents :: (hConsoleInput : HANDLE, lpNumberOfEvents : *u32) -> BOOL #foreign KERNEL32;
GetNumberOfConsoleMouseButtons :: (lpNumberOfMouseButtons : *u32) -> BOOL #foreign KERNEL32;
PeekConsoleInputA :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsRead : *u32) -> BOOL #foreign KERNEL32;
PeekConsoleInputW :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleA :: (hConsoleInput : HANDLE, lpBuffer : *void, nNumberOfCharsToRead : u32, lpNumberOfCharsRead : *u32, pInputControl : *CONSOLE_READCONSOLE_CONTROL) -> BOOL #foreign KERNEL32;
ReadConsoleInputA :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleInputW :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleOutputA :: (hConsoleOutput : HANDLE, lpBuffer : *CHAR_INFO, dwBufferSize : COORD, dwBufferCoord : COORD, lpReadRegion : *SMALL_RECT) -> BOOL #foreign KERNEL32;
ReadConsoleOutputAttribute :: (hConsoleOutput : HANDLE, lpAttribute : *u16, nLength : u32, dwReadCoord : COORD, lpNumberOfAttrsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleOutputCharacterA :: (hConsoleOutput : HANDLE, lpCharacter : *u8, nLength : u32, dwReadCoord : COORD, lpNumberOfCharsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleOutputCharacterW :: (hConsoleOutput : HANDLE, lpCharacter : *u16, nLength : u32, dwReadCoord : COORD, lpNumberOfCharsRead : *u32) -> BOOL #foreign KERNEL32;
ReadConsoleOutputW :: (hConsoleOutput : HANDLE, lpBuffer : *CHAR_INFO, dwBufferSize : COORD, dwBufferCoord : COORD, lpReadRegion : *SMALL_RECT) -> BOOL #foreign KERNEL32;
ReadConsoleW :: (hConsoleInput : HANDLE, lpBuffer : *void, nNumberOfCharsToRead : u32, lpNumberOfCharsRead : *u32, pInputControl : *CONSOLE_READCONSOLE_CONTROL) -> BOOL #foreign KERNEL32;
ResizePseudoConsole :: (hPC : HPCON, size : COORD) -> HRESULT #foreign KERNEL32;
ScrollConsoleScreenBufferA :: (hConsoleOutput : HANDLE, lpScrollRectangle : *SMALL_RECT, lpClipRectangle : *SMALL_RECT, dwDestinationOrigin : COORD, lpFill : *CHAR_INFO) -> BOOL #foreign KERNEL32;
ScrollConsoleScreenBufferW :: (hConsoleOutput : HANDLE, lpScrollRectangle : *SMALL_RECT, lpClipRectangle : *SMALL_RECT, dwDestinationOrigin : COORD, lpFill : *CHAR_INFO) -> BOOL #foreign KERNEL32;
SetConsoleActiveScreenBuffer :: (hConsoleOutput : HANDLE) -> BOOL #foreign KERNEL32;
SetConsoleCP :: (wCodePageID : u32) -> BOOL #foreign KERNEL32;
SetConsoleCtrlHandler :: (HandlerRoutine : PHANDLER_ROUTINE, Add : BOOL) -> BOOL #foreign KERNEL32;
SetConsoleCursorInfo :: (hConsoleOutput : HANDLE, lpConsoleCursorInfo : *CONSOLE_CURSOR_INFO) -> BOOL #foreign KERNEL32;
SetConsoleCursorPosition :: (hConsoleOutput : HANDLE, dwCursorPosition : COORD) -> BOOL #foreign KERNEL32;
SetConsoleDisplayMode :: (hConsoleOutput : HANDLE, dwFlags : u32, lpNewScreenBufferDimensions : *COORD) -> BOOL #foreign KERNEL32;
SetConsoleHistoryInfo :: (lpConsoleHistoryInfo : *CONSOLE_HISTORY_INFO) -> BOOL #foreign KERNEL32;
SetConsoleMode :: (hConsoleHandle : HANDLE, dwMode : CONSOLE_MODE) -> BOOL #foreign KERNEL32;
SetConsoleOutputCP :: (wCodePageID : u32) -> BOOL #foreign KERNEL32;
SetConsoleScreenBufferInfoEx :: (hConsoleOutput : HANDLE, lpConsoleScreenBufferInfoEx : *CONSOLE_SCREEN_BUFFER_INFOEX) -> BOOL #foreign KERNEL32;
SetConsoleScreenBufferSize :: (hConsoleOutput : HANDLE, dwSize : COORD) -> BOOL #foreign KERNEL32;
SetConsoleTextAttribute :: (hConsoleOutput : HANDLE, wAttributes : u16) -> BOOL #foreign KERNEL32;
SetConsoleTitleA :: (lpConsoleTitle : PSTR) -> BOOL #foreign KERNEL32;
SetConsoleTitleW :: (lpConsoleTitle : PWSTR) -> BOOL #foreign KERNEL32;
SetConsoleWindowInfo :: (hConsoleOutput : HANDLE, bAbsolute : BOOL, lpConsoleWindow : *SMALL_RECT) -> BOOL #foreign KERNEL32;
SetCurrentConsoleFontEx :: (hConsoleOutput : HANDLE, bMaximumWindow : BOOL, lpConsoleCurrentFontEx : *CONSOLE_FONT_INFOEX) -> BOOL #foreign KERNEL32;
WriteConsoleA :: (hConsoleOutput : HANDLE, lpBuffer : *void, nNumberOfCharsToWrite : u32, lpNumberOfCharsWritten : *u32, lpReserved : *void) -> BOOL #foreign KERNEL32;
WriteConsoleInputA :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsWritten : *u32) -> BOOL #foreign KERNEL32;
WriteConsoleInputW :: (hConsoleInput : HANDLE, lpBuffer : *INPUT_RECORD, nLength : u32, lpNumberOfEventsWritten : *u32) -> BOOL #foreign KERNEL32;
WriteConsoleOutputA :: (hConsoleOutput : HANDLE, lpBuffer : *CHAR_INFO, dwBufferSize : COORD, dwBufferCoord : COORD, lpWriteRegion : *SMALL_RECT) -> BOOL #foreign KERNEL32;
WriteConsoleOutputAttribute :: (hConsoleOutput : HANDLE, lpAttribute : *u16, nLength : u32, dwWriteCoord : COORD, lpNumberOfAttrsWritten : *u32) -> BOOL #foreign KERNEL32;
WriteConsoleOutputCharacterA :: (hConsoleOutput : HANDLE, lpCharacter : *u8, nLength : u32, dwWriteCoord : COORD, lpNumberOfCharsWritten : *u32) -> BOOL #foreign KERNEL32;
WriteConsoleOutputCharacterW :: (hConsoleOutput : HANDLE, lpCharacter : *u16, nLength : u32, dwWriteCoord : COORD, lpNumberOfCharsWritten : *u32) -> BOOL #foreign KERNEL32;
WriteConsoleOutputW :: (hConsoleOutput : HANDLE, lpBuffer : *CHAR_INFO, dwBufferSize : COORD, dwBufferCoord : COORD, lpWriteRegion : *SMALL_RECT) -> BOOL #foreign KERNEL32;
WriteConsoleW :: (hConsoleOutput : HANDLE, lpBuffer : *void, nNumberOfCharsToWrite : u32, lpNumberOfCharsWritten : *u32, lpReserved : *void) -> BOOL #foreign KERNEL32;

// System libraries

#scope_file

KERNEL32 :: #system_library "KERNEL32";

