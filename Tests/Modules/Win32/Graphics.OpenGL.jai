// This file was auto generated for module Graphics.OpenGL

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);
#import "Win32/Graphics.Gdi" (UNICODE);

// Constants

GLU_VERSION_1_1 :: 1;
GLU_VERSION_1_2 :: 1;
GLU_INVALID_ENUM :: 100900;
GLU_INVALID_VALUE :: 100901;
GLU_OUT_OF_MEMORY :: 100902;
GLU_INCOMPATIBLE_GL_VERSION :: 100903;
GLU_VERSION :: 100800;
GLU_EXTENSIONS :: 100801;
GLU_TRUE :: 1;
GLU_FALSE :: 0;
GLU_SMOOTH :: 100000;
GLU_FLAT :: 100001;
GLU_NONE :: 100002;
GLU_POINT :: 100010;
GLU_LINE :: 100011;
GLU_FILL :: 100012;
GLU_SILHOUETTE :: 100013;
GLU_OUTSIDE :: 100020;
GLU_INSIDE :: 100021;
GLU_TESS_WINDING_RULE :: 100140;
GLU_TESS_BOUNDARY_ONLY :: 100141;
GLU_TESS_TOLERANCE :: 100142;
GLU_TESS_WINDING_ODD :: 100130;
GLU_TESS_WINDING_NONZERO :: 100131;
GLU_TESS_WINDING_POSITIVE :: 100132;
GLU_TESS_WINDING_NEGATIVE :: 100133;
GLU_TESS_WINDING_ABS_GEQ_TWO :: 100134;
GLU_TESS_BEGIN :: 100100;
GLU_TESS_VERTEX :: 100101;
GLU_TESS_END :: 100102;
GLU_TESS_ERROR :: 100103;
GLU_TESS_EDGE_FLAG :: 100104;
GLU_TESS_COMBINE :: 100105;
GLU_TESS_BEGIN_DATA :: 100106;
GLU_TESS_VERTEX_DATA :: 100107;
GLU_TESS_END_DATA :: 100108;
GLU_TESS_ERROR_DATA :: 100109;
GLU_TESS_EDGE_FLAG_DATA :: 100110;
GLU_TESS_COMBINE_DATA :: 100111;
GLU_TESS_ERROR1 :: 100151;
GLU_TESS_ERROR2 :: 100152;
GLU_TESS_ERROR3 :: 100153;
GLU_TESS_ERROR4 :: 100154;
GLU_TESS_ERROR5 :: 100155;
GLU_TESS_ERROR6 :: 100156;
GLU_TESS_ERROR7 :: 100157;
GLU_TESS_ERROR8 :: 100158;
GLU_TESS_MISSING_BEGIN_POLYGON :: 100151;
GLU_TESS_MISSING_BEGIN_CONTOUR :: 100152;
GLU_TESS_MISSING_END_POLYGON :: 100153;
GLU_TESS_MISSING_END_CONTOUR :: 100154;
GLU_TESS_COORD_TOO_LARGE :: 100155;
GLU_TESS_NEED_COMBINE_CALLBACK :: 100156;
GLU_AUTO_LOAD_MATRIX :: 100200;
GLU_CULLING :: 100201;
GLU_SAMPLING_TOLERANCE :: 100203;
GLU_DISPLAY_MODE :: 100204;
GLU_PARAMETRIC_TOLERANCE :: 100202;
GLU_SAMPLING_METHOD :: 100205;
GLU_U_STEP :: 100206;
GLU_V_STEP :: 100207;
GLU_PATH_LENGTH :: 100215;
GLU_PARAMETRIC_ERROR :: 100216;
GLU_DOMAIN_DISTANCE :: 100217;
GLU_MAP1_TRIM_2 :: 100210;
GLU_MAP1_TRIM_3 :: 100211;
GLU_OUTLINE_POLYGON :: 100240;
GLU_OUTLINE_PATCH :: 100241;
GLU_NURBS_ERROR1 :: 100251;
GLU_NURBS_ERROR2 :: 100252;
GLU_NURBS_ERROR3 :: 100253;
GLU_NURBS_ERROR4 :: 100254;
GLU_NURBS_ERROR5 :: 100255;
GLU_NURBS_ERROR6 :: 100256;
GLU_NURBS_ERROR7 :: 100257;
GLU_NURBS_ERROR8 :: 100258;
GLU_NURBS_ERROR9 :: 100259;
GLU_NURBS_ERROR10 :: 100260;
GLU_NURBS_ERROR11 :: 100261;
GLU_NURBS_ERROR12 :: 100262;
GLU_NURBS_ERROR13 :: 100263;
GLU_NURBS_ERROR14 :: 100264;
GLU_NURBS_ERROR15 :: 100265;
GLU_NURBS_ERROR16 :: 100266;
GLU_NURBS_ERROR17 :: 100267;
GLU_NURBS_ERROR18 :: 100268;
GLU_NURBS_ERROR19 :: 100269;
GLU_NURBS_ERROR20 :: 100270;
GLU_NURBS_ERROR21 :: 100271;
GLU_NURBS_ERROR22 :: 100272;
GLU_NURBS_ERROR23 :: 100273;
GLU_NURBS_ERROR24 :: 100274;
GLU_NURBS_ERROR25 :: 100275;
GLU_NURBS_ERROR26 :: 100276;
GLU_NURBS_ERROR27 :: 100277;
GLU_NURBS_ERROR28 :: 100278;
GLU_NURBS_ERROR29 :: 100279;
GLU_NURBS_ERROR30 :: 100280;
GLU_NURBS_ERROR31 :: 100281;
GLU_NURBS_ERROR32 :: 100282;
GLU_NURBS_ERROR33 :: 100283;
GLU_NURBS_ERROR34 :: 100284;
GLU_NURBS_ERROR35 :: 100285;
GLU_NURBS_ERROR36 :: 100286;
GLU_NURBS_ERROR37 :: 100287;
GLU_CW :: 100120;
GLU_CCW :: 100121;
GLU_INTERIOR :: 100122;
GLU_EXTERIOR :: 100123;
GLU_UNKNOWN :: 100124;
GLU_BEGIN :: 100100;
GLU_VERTEX :: 100101;
GLU_END :: 100102;
GLU_ERROR :: 100103;
GLU_EDGE_FLAG :: 100104;

// Types

HGLRC :: *void;

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

EMRPIXELFORMAT :: struct
{
    emr : EMR;
    pfd : PIXELFORMATDESCRIPTOR;
}

POINTFLOAT :: struct
{
    x : float;
    y : float;
}

GLYPHMETRICSFLOAT :: struct
{
    gmfBlackBoxX : float;
    gmfBlackBoxY : float;
    gmfptGlyphOrigin : POINTFLOAT;
    gmfCellIncX : float;
    gmfCellIncY : float;
}

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

PFNGLARRAYELEMENTEXTPROC :: #type (i : s32) -> void #c_call;

PFNGLDRAWARRAYSEXTPROC :: #type (mode : u32, first : s32, count : s32) -> void #c_call;

PFNGLVERTEXPOINTEREXTPROC :: #type (size : s32, type : u32, stride : s32, count : s32, pointer : *void) -> void #c_call;

PFNGLNORMALPOINTEREXTPROC :: #type (type : u32, stride : s32, count : s32, pointer : *void) -> void #c_call;

PFNGLCOLORPOINTEREXTPROC :: #type (size : s32, type : u32, stride : s32, count : s32, pointer : *void) -> void #c_call;

PFNGLINDEXPOINTEREXTPROC :: #type (type : u32, stride : s32, count : s32, pointer : *void) -> void #c_call;

PFNGLTEXCOORDPOINTEREXTPROC :: #type (size : s32, type : u32, stride : s32, count : s32, pointer : *void) -> void #c_call;

PFNGLEDGEFLAGPOINTEREXTPROC :: #type (stride : s32, count : s32, pointer : *u8) -> void #c_call;

PFNGLGETPOINTERVEXTPROC :: #type (pname : u32, params : **void) -> void #c_call;

PFNGLARRAYELEMENTARRAYEXTPROC :: #type (mode : u32, count : s32, pi : *void) -> void #c_call;

PFNGLDRAWRANGEELEMENTSWINPROC :: #type (mode : u32, start : u32, end : u32, count : s32, type : u32, indices : *void) -> void #c_call;

PFNGLADDSWAPHINTRECTWINPROC :: #type (x : s32, y : s32, width : s32, height : s32) -> void #c_call;

PFNGLCOLORTABLEEXTPROC :: #type (target : u32, internalFormat : u32, width : s32, format : u32, type : u32, data : *void) -> void #c_call;

PFNGLCOLORSUBTABLEEXTPROC :: #type (target : u32, start : s32, count : s32, format : u32, type : u32, data : *void) -> void #c_call;

PFNGLGETCOLORTABLEEXTPROC :: #type (target : u32, format : u32, type : u32, data : *void) -> void #c_call;

PFNGLGETCOLORTABLEPARAMETERIVEXTPROC :: #type (target : u32, pname : u32, params : *s32) -> void #c_call;

PFNGLGETCOLORTABLEPARAMETERFVEXTPROC :: #type (target : u32, pname : u32, params : *float) -> void #c_call;

GLUnurbs :: struct
{
}

GLUquadric :: struct
{
}

GLUtesselator :: struct
{
}

GLUquadricErrorProc :: #type (param0 : u32) -> void #c_call;

GLUtessBeginProc :: #type (param0 : u32) -> void #c_call;

GLUtessEdgeFlagProc :: #type (param0 : u8) -> void #c_call;

GLUtessVertexProc :: #type (param0 : *void) -> void #c_call;

GLUtessEndProc :: #type () -> void #c_call;

GLUtessErrorProc :: #type (param0 : u32) -> void #c_call;

GLUtessCombineProc :: #type (param0 : *float64, param1 : **void, param2 : *float, param3 : **void) -> void #c_call;

GLUtessBeginDataProc :: #type (param0 : u32, param1 : *void) -> void #c_call;

GLUtessEdgeFlagDataProc :: #type (param0 : u8, param1 : *void) -> void #c_call;

GLUtessVertexDataProc :: #type (param0 : *void, param1 : *void) -> void #c_call;

GLUtessEndDataProc :: #type (param0 : *void) -> void #c_call;

GLUtessErrorDataProc :: #type (param0 : u32, param1 : *void) -> void #c_call;

GLUtessCombineDataProc :: #type (param0 : *float64, param1 : **void, param2 : *float, param3 : **void, param4 : *void) -> void #c_call;

GLUnurbsErrorProc :: #type (param0 : u32) -> void #c_call;

// Functions

ChoosePixelFormat :: (hdc : HDC, ppfd : *PIXELFORMATDESCRIPTOR) -> s32 #foreign GDI32;
DescribePixelFormat :: (hdc : HDC, iPixelFormat : s32, nBytes : u32, ppfd : *PIXELFORMATDESCRIPTOR) -> s32 #foreign GDI32;
GetPixelFormat :: (hdc : HDC) -> s32 #foreign GDI32;
SetPixelFormat :: (hdc : HDC, format : s32, ppfd : *PIXELFORMATDESCRIPTOR) -> BOOL #foreign GDI32;
GetEnhMetaFilePixelFormat :: (hemf : HENHMETAFILE, cbBuffer : u32, ppfd : *PIXELFORMATDESCRIPTOR) -> u32 #foreign GDI32;
wglCopyContext :: (param0 : HGLRC, param1 : HGLRC, param2 : u32) -> BOOL #foreign OPENGL32;
wglCreateContext :: (param0 : HDC) -> HGLRC #foreign OPENGL32;
wglCreateLayerContext :: (param0 : HDC, param1 : s32) -> HGLRC #foreign OPENGL32;
wglDeleteContext :: (param0 : HGLRC) -> BOOL #foreign OPENGL32;
wglGetCurrentContext :: () -> HGLRC #foreign OPENGL32;
wglGetCurrentDC :: () -> HDC #foreign OPENGL32;
wglGetProcAddress :: (param0 : PSTR) -> PROC #foreign OPENGL32;
wglMakeCurrent :: (param0 : HDC, param1 : HGLRC) -> BOOL #foreign OPENGL32;
wglShareLists :: (param0 : HGLRC, param1 : HGLRC) -> BOOL #foreign OPENGL32;
wglUseFontBitmapsA :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32) -> BOOL #foreign OPENGL32;
wglUseFontBitmapsW :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32) -> BOOL #foreign OPENGL32;
SwapBuffers :: (param0 : HDC) -> BOOL #foreign GDI32;
wglUseFontOutlinesA :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32, param4 : float, param5 : float, param6 : s32, param7 : *GLYPHMETRICSFLOAT) -> BOOL #foreign OPENGL32;
wglUseFontOutlinesW :: (param0 : HDC, param1 : u32, param2 : u32, param3 : u32, param4 : float, param5 : float, param6 : s32, param7 : *GLYPHMETRICSFLOAT) -> BOOL #foreign OPENGL32;
wglDescribeLayerPlane :: (param0 : HDC, param1 : s32, param2 : s32, param3 : u32, param4 : *LAYERPLANEDESCRIPTOR) -> BOOL #foreign OPENGL32;
wglSetLayerPaletteEntries :: (param0 : HDC, param1 : s32, param2 : s32, param3 : s32, param4 : *u32) -> s32 #foreign OPENGL32;
wglGetLayerPaletteEntries :: (param0 : HDC, param1 : s32, param2 : s32, param3 : s32, param4 : *u32) -> s32 #foreign OPENGL32;
wglRealizeLayerPalette :: (param0 : HDC, param1 : s32, param2 : BOOL) -> BOOL #foreign OPENGL32;
wglSwapLayerBuffers :: (param0 : HDC, param1 : u32) -> BOOL #foreign OPENGL32;

// Unicode aliases

#if UNICODE then wglUseFontBitmaps :: wglUseFontBitmapsW;
else             wglUseFontBitmaps :: wglUseFontBitmapsA;
#if UNICODE then wglUseFontOutlines :: wglUseFontOutlinesW;
else             wglUseFontOutlines :: wglUseFontOutlinesA;

// System libraries

#scope_file

GDI32 :: #system_library "GDI32";
OPENGL32 :: #system_library "OPENGL32";
