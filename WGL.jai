// This file was auto generated

#module_parameters (UNICODE := true);

#import "Win32/Basics" (UNICODE);
#import "Win32/GDI_Basics" (UNICODE);

// Constants

WGL_FONT_LINES :: 0;
WGL_FONT_POLYGONS :: 1;
WGL_SWAPMULTIPLE_MAX :: 16;
WGL_SWAP_MAIN_PLANE :: 1;
WGL_SWAP_OVERLAY1 :: 2;
WGL_SWAP_OVERLAY10 :: 1024;
WGL_SWAP_OVERLAY11 :: 2048;
WGL_SWAP_OVERLAY12 :: 4096;
WGL_SWAP_OVERLAY13 :: 8192;
WGL_SWAP_OVERLAY14 :: 16384;
WGL_SWAP_OVERLAY15 :: 32768;
WGL_SWAP_OVERLAY2 :: 4;
WGL_SWAP_OVERLAY3 :: 8;
WGL_SWAP_OVERLAY4 :: 16;
WGL_SWAP_OVERLAY5 :: 32;
WGL_SWAP_OVERLAY6 :: 64;
WGL_SWAP_OVERLAY7 :: 128;
WGL_SWAP_OVERLAY8 :: 256;
WGL_SWAP_OVERLAY9 :: 512;
WGL_SWAP_UNDERLAY1 :: 65536;
WGL_SWAP_UNDERLAY10 :: 33554432;
WGL_SWAP_UNDERLAY11 :: 67108864;
WGL_SWAP_UNDERLAY12 :: 134217728;
WGL_SWAP_UNDERLAY13 :: 268435456;
WGL_SWAP_UNDERLAY14 :: 536870912;
WGL_SWAP_UNDERLAY15 :: 1073741824;
WGL_SWAP_UNDERLAY2 :: 131072;
WGL_SWAP_UNDERLAY3 :: 262144;
WGL_SWAP_UNDERLAY4 :: 524288;
WGL_SWAP_UNDERLAY5 :: 1048576;
WGL_SWAP_UNDERLAY6 :: 2097152;
WGL_SWAP_UNDERLAY7 :: 4194304;
WGL_SWAP_UNDERLAY8 :: 8388608;
WGL_SWAP_UNDERLAY9 :: 16777216;

// Types

GLYPHMETRICSFLOAT :: struct
{
    gmfBlackBoxX : float;
    gmfBlackBoxY : float;
    gmfptGlyphOrigin : POINTFLOAT;
    gmfCellIncX : float;
    gmfCellIncY : float;
}

HGLRC :: *void;

POINTFLOAT :: struct
{
    x : float;
    y : float;
}

WGLSWAP :: struct
{
    hdc : HDC;
    uiFlags : u32;
}

// Functions

wglCopyContext :: (param0 : HGLRC, param1 : HGLRC, param2 : u32) -> BOOL #foreign OPENGL32;
wglCreateContext :: (param0 : HDC) -> HGLRC #foreign OPENGL32;
wglCreateLayerContext :: (param0 : HDC, param1 : s32) -> HGLRC #foreign OPENGL32;
wglDeleteContext :: (param0 : HGLRC) -> BOOL #foreign OPENGL32;
wglDescribeLayerPlane :: (param0 : HDC, param1 : s32, param2 : s32, param3 : u32, param4 : *LAYERPLANEDESCRIPTOR) -> BOOL #foreign OPENGL32;
wglGetCurrentContext :: () -> HGLRC #foreign OPENGL32;
wglGetCurrentDC :: () -> HDC #foreign OPENGL32;
wglGetLayerPaletteEntries :: (param0 : HDC, param1 : s32, param2 : s32, param3 : s32, param4 : *u32) -> s32 #foreign OPENGL32;
wglGetProcAddress :: (param0 : PSTR) -> *void #foreign OPENGL32;
wglMakeCurrent :: (param0 : HDC, param1 : HGLRC) -> BOOL #foreign OPENGL32;
wglRealizeLayerPalette :: (param0 : HDC, param1 : s32, param2 : BOOL) -> BOOL #foreign OPENGL32;
wglSetLayerPaletteEntries :: (param0 : HDC, param1 : s32, param2 : s32, param3 : s32, param4 : *u32) -> s32 #foreign OPENGL32;
wglShareLists :: (param0 : HGLRC, param1 : HGLRC) -> BOOL #foreign OPENGL32;
wglSwapLayerBuffers :: (param0 : HDC, param1 : u32) -> BOOL #foreign OPENGL32;
wglSwapMultipleBuffers :: (param0 : u32, param1 : *WGLSWAP) -> u32 #foreign OPENGL32;
wglUseFontBitmapsA :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32) -> BOOL #foreign OPENGL32;
wglUseFontBitmapsW :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32) -> BOOL #foreign OPENGL32;
wglUseFontOutlinesA :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32, param4 : float, param5 : float, param6 : s32, param7 : *GLYPHMETRICSFLOAT) -> BOOL #foreign OPENGL32;
wglUseFontOutlinesW :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32, param4 : float, param5 : float, param6 : s32, param7 : *GLYPHMETRICSFLOAT) -> BOOL #foreign OPENGL32;

// Unicode aliases

#if UNICODE then wglUseFontBitmaps :: wglUseFontBitmapsW;
else             wglUseFontBitmaps :: wglUseFontBitmapsA;
#if UNICODE then wglUseFontOutlines :: wglUseFontOutlinesW;
else             wglUseFontOutlines :: wglUseFontOutlinesA;

// System libraries

#scope_file

OPENGL32 :: #system_library "OPENGL32";

