// This file was auto generated for module System.Com
// This module was generated partially, because it is a dependency of another module

#module_parameters (UNICODE := true);

#import "Win32/Foundation" (UNICODE);

// Constants


// Types

IUnknown_UUID :: "00000000-0000-0000-c000-000000000046";
IUnknown :: struct
{
    UUID :: IUnknown_UUID;

    vtable : *IUnknownVTable;

    QueryInterface :: (this : *IUnknown, /*const ref*/ riid : GUID, ppvObject : **void) -> HRESULT #no_context { return this.vtable.QueryInterface (this, *riid, ppvObject); }
    AddRef :: (this : *IUnknown) -> u32 #no_context { return this.vtable.AddRef (this); }
    Release :: (this : *IUnknown) -> u32 #no_context { return this.vtable.Release (this); }
}

IUnknownVTable :: struct
{
    QueryInterface : (this : *IUnknown, riid : *GUID, ppvObject : **void) -> HRESULT #cpp_method;
    AddRef : (this : *IUnknown) -> u32 #cpp_method;
    Release : (this : *IUnknown) -> u32 #cpp_method;
}

CONNECTDATA :: struct
{
    pUnk : *IUnknown;
    dwCookie : u32;
}

IEnumConnections_UUID :: "b196b287-bab4-101a-b69c-00aa00341d07";
IEnumConnections :: struct
{
    UUID :: IEnumConnections_UUID;

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IEnumConnectionsVTable;

    Next :: (this : *IEnumConnections, cConnections : u32, rgcd : *CONNECTDATA, pcFetched : *u32) -> HRESULT #no_context { return this.vtable.Next (this, cConnections, rgcd, pcFetched); }
    Skip :: (this : *IEnumConnections, cConnections : u32) -> HRESULT #no_context { return this.vtable.Skip (this, cConnections); }
    Reset :: (this : *IEnumConnections) -> HRESULT #no_context { return this.vtable.Reset (this); }
    Clone :: (this : *IEnumConnections, ppEnum : **IEnumConnections) -> HRESULT #no_context { return this.vtable.Clone (this, ppEnum); }
}

IEnumConnectionsVTable :: struct
{
    #as using, except (.["base"]) base : IUnknown;

    Next : (this : *IEnumConnections, cConnections : u32, rgcd : *CONNECTDATA, pcFetched : *u32) -> HRESULT #cpp_method;
    Skip : (this : *IEnumConnections, cConnections : u32) -> HRESULT #cpp_method;
    Reset : (this : *IEnumConnections) -> HRESULT #cpp_method;
    Clone : (this : *IEnumConnections, ppEnum : **IEnumConnections) -> HRESULT #cpp_method;
}

IConnectionPoint_UUID :: "b196b286-bab4-101a-b69c-00aa00341d07";
IConnectionPoint :: struct
{
    UUID :: IConnectionPoint_UUID;

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IConnectionPointVTable;

    GetConnectionInterface :: (this : *IConnectionPoint, pIID : *GUID) -> HRESULT #no_context { return this.vtable.GetConnectionInterface (this, pIID); }
    GetConnectionPointContainer :: (this : *IConnectionPoint, ppCPC : **IConnectionPointContainer) -> HRESULT #no_context { return this.vtable.GetConnectionPointContainer (this, ppCPC); }
    Advise :: (this : *IConnectionPoint, pUnkSink : *IUnknown, pdwCookie : *u32) -> HRESULT #no_context { return this.vtable.Advise (this, pUnkSink, pdwCookie); }
    Unadvise :: (this : *IConnectionPoint, dwCookie : u32) -> HRESULT #no_context { return this.vtable.Unadvise (this, dwCookie); }
    EnumConnections :: (this : *IConnectionPoint, ppEnum : **IEnumConnections) -> HRESULT #no_context { return this.vtable.EnumConnections (this, ppEnum); }
}

IConnectionPointVTable :: struct
{
    #as using, except (.["base"]) base : IUnknown;

    GetConnectionInterface : (this : *IConnectionPoint, pIID : *GUID) -> HRESULT #cpp_method;
    GetConnectionPointContainer : (this : *IConnectionPoint, ppCPC : **IConnectionPointContainer) -> HRESULT #cpp_method;
    Advise : (this : *IConnectionPoint, pUnkSink : *IUnknown, pdwCookie : *u32) -> HRESULT #cpp_method;
    Unadvise : (this : *IConnectionPoint, dwCookie : u32) -> HRESULT #cpp_method;
    EnumConnections : (this : *IConnectionPoint, ppEnum : **IEnumConnections) -> HRESULT #cpp_method;
}

IEnumConnectionPoints_UUID :: "b196b285-bab4-101a-b69c-00aa00341d07";
IEnumConnectionPoints :: struct
{
    UUID :: IEnumConnectionPoints_UUID;

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IEnumConnectionPointsVTable;

    Next :: (this : *IEnumConnectionPoints, cConnections : u32, ppCP : **IConnectionPoint, pcFetched : *u32) -> HRESULT #no_context { return this.vtable.Next (this, cConnections, ppCP, pcFetched); }
    Skip :: (this : *IEnumConnectionPoints, cConnections : u32) -> HRESULT #no_context { return this.vtable.Skip (this, cConnections); }
    Reset :: (this : *IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.Reset (this); }
    Clone :: (this : *IEnumConnectionPoints, ppEnum : **IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.Clone (this, ppEnum); }
}

IEnumConnectionPointsVTable :: struct
{
    #as using, except (.["base"]) base : IUnknown;

    Next : (this : *IEnumConnectionPoints, cConnections : u32, ppCP : **IConnectionPoint, pcFetched : *u32) -> HRESULT #cpp_method;
    Skip : (this : *IEnumConnectionPoints, cConnections : u32) -> HRESULT #cpp_method;
    Reset : (this : *IEnumConnectionPoints) -> HRESULT #cpp_method;
    Clone : (this : *IEnumConnectionPoints, ppEnum : **IEnumConnectionPoints) -> HRESULT #cpp_method;
}

IConnectionPointContainer_UUID :: "b196b284-bab4-101a-b69c-00aa00341d07";
IConnectionPointContainer :: struct
{
    UUID :: IConnectionPointContainer_UUID;

    #as using, except (.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IConnectionPointContainerVTable;

    EnumConnectionPoints :: (this : *IConnectionPointContainer, ppEnum : **IEnumConnectionPoints) -> HRESULT #no_context { return this.vtable.EnumConnectionPoints (this, ppEnum); }
    FindConnectionPoint :: (this : *IConnectionPointContainer, /*const ref*/ riid : GUID, ppCP : **IConnectionPoint) -> HRESULT #no_context { return this.vtable.FindConnectionPoint (this, *riid, ppCP); }
}

IConnectionPointContainerVTable :: struct
{
    #as using, except (.["base"]) base : IUnknown;

    EnumConnectionPoints : (this : *IConnectionPointContainer, ppEnum : **IEnumConnectionPoints) -> HRESULT #cpp_method;
    FindConnectionPoint : (this : *IConnectionPointContainer, riid : *GUID, ppCP : **IConnectionPoint) -> HRESULT #cpp_method;
}

// Functions


// Unicode aliases


// System libraries

#scope_file

