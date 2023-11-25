// This example program generates bindings for basic Win32 stuff

#import "Basic";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Hash_Table";
#import "String";

#import, file "../module.jai";

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

ShouldIgnoreSymbol :: inline (using symbol : Win32Symbol) -> bool
{
    if architectures != 0 && !(architectures & .X64)
        return true;

    return false;
}

main :: ()
{
    context.allocator = temp;

    InitWin32Database (directory = "../win32json/api");

    for context.generator.input_modules
        CreateOutputModule (it.name);

    void_type : Win32Type;
    void_type.kind = .Native;
    void_type.native_type = .Void;

    void_pointer_type : Win32Type;
    void_pointer_type.kind = .PointerTo;
    void_pointer_type.child = *void_type;

    for :AllInputConstants context.generator
    {
        if ShouldIgnoreSymbol (it)
            continue;

        SetOutputModule (it, it.module);
    }

    for :AllInputTypeDefinitions context.generator
    {
        if ShouldIgnoreSymbol (it)
        {
            print ("Ignoring %, architectures %\n", it.name, it.architectures);
            continue;
        }

        if array_find (Handle_Type_Names, it.name)
        {
            it.kind = .NativeTypedef;
            it.def = void_pointer_type;
        }

        SetOutputModule (it, it.module);
    }

    for :AllInputFunctions context.generator
    {
        if ShouldIgnoreSymbol (it)
            continue;

        SetOutputModule (it, it.module);
    }

    for context.generator.output_modules
        ResolveModuleDependencies (it);

    if context.generator.has_errors
        exit (1);

    for context.generator.output_modules
        GenerateModuleSourceCodeToFile (it, "Generated/Full");
}
