#import "Basic";

Win32 :: #import "Win32" (
    GDI_Basics = true,
    WGL = true,
    Windows_And_Messaging = true,
);

#import "GL";

g_quit := false;

main :: ()
{
    WndProc :: (
        hwnd : Win32.HWND,
        msg : u32,
        wparam : Win32.WPARAM,
        lparam : Win32.LPARAM
    ) -> Win32.LRESULT #c_call
    {
        if msg == Win32.WM_CLOSE
            g_quit = true;

        return Win32.DefWindowProcW (hwnd, msg, wparam, lparam);
    }

    wndclass : Win32.WNDCLASSEXW;
    wndclass.cbSize = size_of (Win32.WNDCLASSEXW);
    wndclass.style = .CS_DBLCLKS | .CS_OWNDC;
    wndclass.lpfnWndProc = WndProc;
    wndclass.hInstance = Win32.GetModuleHandleW (null);
    wndclass.lpszClassName = Utf8ToWide ("WindowClass");
    Win32.RegisterClassExW (*wndclass);

    hwnd := Win32.CreateWindowExW (
        9,
        wndclass.lpszClassName,
        Utf8ToWide ("Window"),
        .WS_OVERLAPPEDWINDOW | .WS_VISIBLE,
        Win32.CW_USEDEFAULT,
        Win32.CW_USEDEFAULT,
        1280,
        720,
        null,
        null,
        Win32.GetModuleHandleW (null),
        null
    );

    defer Win32.DestroyWindow (hwnd);

    hdc := Win32.GetDC (hwnd);

    pfd : Win32.PIXELFORMATDESCRIPTOR;
    pfd.nSize = size_of (Win32.PIXELFORMATDESCRIPTOR);
    pfd.nVersion = 1;
    pfd.dwFlags = Win32.PFD_DRAW_TO_WINDOW | Win32.PFD_SUPPORT_OPENGL | Win32.PFD_DOUBLEBUFFER;
    pfd.iPixelType = Win32.PFD_TYPE_RGBA;
    pfd.cColorBits = 32;
    pfd.cDepthBits = 24;
    pfd.cStencilBits = 8;

    pixel_format := Win32.ChoosePixelFormat (hdc, *pfd);
    Win32.SetPixelFormat (hdc, pixel_format, *pfd);

    hglrc := Win32.wglCreateContext (hdc);
    defer Win32.wglDeleteContext (hglrc);

    Win32.wglMakeCurrent (hdc, hglrc);

    gl_load (*gl, Win32.wglGetProcAddress);

    assert (glGenVertexArrays != null, "Could not load GL functions");

    while !g_quit
    {
        msg : Win32.MSG;
        while Win32.PeekMessageW (*msg, null, 0, 0, .PM_REMOVE)
        {
            Win32.TranslateMessage (*msg);
            Win32.DispatchMessageW (*msg);
        }

        glClearColor (0.2, 0.4, 0.8, 1.0);
        glClear (GL_COLOR_BUFFER_BIT);

        Win32.SwapBuffers (hdc);
    }
}

// The result is null terminated even though a Jai string is returned
WideToUtf8 :: (data : *u16, allocator := context.allocator) -> string #must, success : bool
{
    result_length := Win32.WideCharToMultiByte (Win32.CP_UTF8, 0, data, -1, null, 0, null, null);
    if result_length <= 0
        return "", false;

    utf8_data := cast (*u8) alloc (result_length, allocator);

    written := Win32.WideCharToMultiByte (Win32.CP_UTF8, 0, data, -1, utf8_data, result_length, null, null);
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
Utf8ToWide :: (utf8_str : string, allocator := context.allocator) -> wide_str : *u16 #must, length : s32
{
    if !utf8_str
    {
        wide_str := cast (*u16) alloc (size_of (u16), allocator);
        wide_str[0] = 0;

        return wide_str, 0;
    }

    result_length := Win32.MultiByteToWideChar (Win32.CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, null, 0);
    if result_length <= 0
        return null, 0;

    wide_str := cast (*u16) alloc ((result_length + 1) * size_of (u16), allocator);
    written := Win32.MultiByteToWideChar (Win32.CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, wide_str, result_length);
    if written > 0
    {
        wide_str[written] = 0;

        return wide_str, written;
    }

    return null, 0;
}
