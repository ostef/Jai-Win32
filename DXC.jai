// This file was auto generated

#import "Win32/Basics";

// Constants

CLSID_DxcAssembler :: GUID.{0xd728db68,0xf903,0x4f80,.[0x94,0xcd,0xdc,0xcf,0x76,0xec,0x71,0x51]};
CLSID_DxcCompiler :: GUID.{0x73e22d93,0xe6ce,0x47f3,.[0xb5,0xbf,0xf0,0x66,0x4f,0x39,0xc1,0xb0]};
CLSID_DxcCompilerArgs :: GUID.{0x3e56ae82,0x224d,0x470f,.[0xa1,0xa1,0xfe,0x30,0x16,0xee,0x9f,0x9d]};
CLSID_DxcContainerBuilder :: GUID.{0x94134294,0x411f,0x4574,.[0xb4,0xd0,0x87,0x41,0xe2,0x52,0x40,0xd2]};
CLSID_DxcContainerReflection :: GUID.{0xb9f54489,0x55b8,0x400c,.[0xba,0x3a,0x16,0x75,0xe4,0x72,0x8b,0x91]};
CLSID_DxcDiaDataSource :: GUID.{0xcd1f6b73,0x2ab0,0x484d,.[0x8e,0xdc,0xeb,0xe7,0xa4,0x3c,0xa0,0x9f]};
CLSID_DxcLibrary :: GUID.{0x6245d6af,0x66e0,0x48fd,.[0x80,0xb4,0x4d,0x27,0x17,0x96,0x74,0x8c]};
CLSID_DxcLinker :: GUID.{0xef6a8087,0xb0ea,0x4d56,.[0x9e,0x45,0xd0,0x7e,0x1a,0x8b,0x78,0x6]};
CLSID_DxcOptimizer :: GUID.{0xae2cd79f,0xcc22,0x453f,.[0x9b,0x6b,0xb1,0x24,0xe7,0xa5,0x20,0x4c]};
CLSID_DxcPdbUtils :: GUID.{0x54621dfb,0xf2ce,0x457e,.[0xae,0x8c,0xec,0x35,0x5f,0xae,0xec,0x7c]};
CLSID_DxcValidator :: GUID.{0x8ca3e215,0xf728,0x4cf3,.[0x8c,0xdd,0x88,0xaf,0x91,0x75,0x87,0xa1]};
DXCORE_ADAPTER_ATTRIBUTE_D3D11_GRAPHICS :: "8c47866b-7583-450d-f0f0-6bada895af4b";
DXCORE_ADAPTER_ATTRIBUTE_D3D12_CORE_COMPUTE :: "248e2800-a793-4724-abaa-23a6de1be090";
DXCORE_ADAPTER_ATTRIBUTE_D3D12_GRAPHICS :: "0c9ece4d-2f6e-4f01-8c96-e89e331b47b1";
DXCORE_ERROR_EVENT_NOT_UNREGISTERED :: cast, no_check(HRESULT) -2004877311;
DXC_HASHFLAG_INCLUDES_SOURCE :: 1;
DxcValidatorFlags_Default :: 0;
DxcValidatorFlags_InPlaceEdit :: 1;
DxcValidatorFlags_ModuleOnly :: 4;
DxcValidatorFlags_RootSignatureOnly :: 2;
DxcValidatorFlags_ValidMask :: 7;
DxcVersionInfoFlags_Debug :: 1;
DxcVersionInfoFlags_Internal :: 2;
DxcVersionInfoFlags_None :: 0;

// Types

DXC_CP :: enum u32
{
    ACP :: 0;
    UTF16 :: 1200;
    UTF8 :: 65001;
}

DXC_CP_ACP :: 0;
DXC_CP_UTF16 :: 1200;
DXC_CP_UTF8 :: 65001;

DXC_OUT_KIND :: enum s32
{
    DXC_OUT_NONE :: 0;
    DXC_OUT_OBJECT :: 1;
    DXC_OUT_ERRORS :: 2;
    DXC_OUT_PDB :: 3;
    DXC_OUT_SHADER_HASH :: 4;
    DXC_OUT_DISASSEMBLY :: 5;
    DXC_OUT_HLSL :: 6;
    DXC_OUT_TEXT :: 7;
    DXC_OUT_REFLECTION :: 8;
    DXC_OUT_ROOT_SIGNATURE :: 9;
    DXC_OUT_EXTRA_OUTPUTS :: 10;
    DXC_OUT_FORCE_DWORD :: -1;
}

DXC_OUT_NONE :: 0;
DXC_OUT_OBJECT :: 1;
DXC_OUT_ERRORS :: 2;
DXC_OUT_PDB :: 3;
DXC_OUT_SHADER_HASH :: 4;
DXC_OUT_DISASSEMBLY :: 5;
DXC_OUT_HLSL :: 6;
DXC_OUT_TEXT :: 7;
DXC_OUT_REFLECTION :: 8;
DXC_OUT_ROOT_SIGNATURE :: 9;
DXC_OUT_EXTRA_OUTPUTS :: 10;
DXC_OUT_FORCE_DWORD :: -1;

DXCoreAdapterMemoryBudget :: struct
{
    budget : u64;
    currentUsage : u64;
    availableForReservation : u64;
    currentReservation : u64;
}

DXCoreAdapterMemoryBudgetNodeSegmentGroup :: struct
{
    nodeIndex : u32;
    segmentGroup : DXCoreSegmentGroup;
}

DXCoreAdapterPreference :: enum u32
{
    Hardware :: 0;
    MinimumPower :: 1;
    HighPerformance :: 2;
}

Hardware :: 0;
MinimumPower :: 1;
HighPerformance :: 2;

DXCoreAdapterProperty :: enum u32
{
    InstanceLuid :: 0;
    DriverVersion :: 1;
    DriverDescription :: 2;
    HardwareID :: 3;
    KmdModelVersion :: 4;
    ComputePreemptionGranularity :: 5;
    GraphicsPreemptionGranularity :: 6;
    DedicatedAdapterMemory :: 7;
    DedicatedSystemMemory :: 8;
    SharedSystemMemory :: 9;
    AcgCompatible :: 10;
    IsHardware :: 11;
    IsIntegrated :: 12;
    IsDetachable :: 13;
    HardwareIDParts :: 14;
}

InstanceLuid :: 0;
DriverVersion :: 1;
DriverDescription :: 2;
HardwareID :: 3;
KmdModelVersion :: 4;
ComputePreemptionGranularity :: 5;
GraphicsPreemptionGranularity :: 6;
DedicatedAdapterMemory :: 7;
DedicatedSystemMemory :: 8;
SharedSystemMemory :: 9;
AcgCompatible :: 10;
IsHardware :: 11;
IsIntegrated :: 12;
IsDetachable :: 13;
HardwareIDParts :: 14;

DXCoreAdapterState :: enum u32
{
    IsDriverUpdateInProgress :: 0;
    AdapterMemoryBudget :: 1;
}

IsDriverUpdateInProgress :: 0;
AdapterMemoryBudget :: 1;

DXCoreHardwareID :: struct
{
    vendorID : u32;
    deviceID : u32;
    subSysID : u32;
    revision : u32;
}

DXCoreHardwareIDParts :: struct
{
    vendorID : u32;
    deviceID : u32;
    subSystemID : u32;
    subVendorID : u32;
    revisionID : u32;
}

DXCoreNotificationType :: enum u32
{
    AdapterListStale :: 0;
    AdapterNoLongerValid :: 1;
    AdapterBudgetChange :: 2;
    AdapterHardwareContentProtectionTeardown :: 3;
}

AdapterListStale :: 0;
AdapterNoLongerValid :: 1;
AdapterBudgetChange :: 2;
AdapterHardwareContentProtectionTeardown :: 3;

DXCoreSegmentGroup :: enum u32
{
    Local :: 0;
    NonLocal :: 1;
}

Local :: 0;
NonLocal :: 1;

DxcArgPair :: struct
{
    pName : PWSTR; // Const
    pValue : PWSTR; // Const
}

DxcBuffer :: struct
{
    Ptr : *void; // Const
    Size : u64;
    Encoding : u32;
}

DxcCreateInstance2Proc :: #type (pMalloc : *IMalloc, rclsid : *GUID, riid : *GUID, ppv : **void) -> HRESULT #c_call;

DxcCreateInstanceProc :: #type (rclsid : *GUID, riid : *GUID, ppv : **void) -> HRESULT #c_call;

DxcDefine :: struct
{
    Name : PWSTR; // Const
    Value : PWSTR; // Const
}

DxcShaderHash :: struct
{
    Flags : u32;
    HashDigest : [16]u8;
}

IDxcAssembler_UUID :: "091f7a26-1c1f-4948-904b-e6e3a8a771d5";
IDxcAssembler :: struct
{
    UUID :: GUID.{0x91f7a26,0x1c1f,0x4948,.[0x90,0x4b,0xe6,0xe3,0xa8,0xa7,0x71,0xd5]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcAssemblerVTable;

    AssembleToContainer :: inline (this : *IDxcAssembler, pShader : *IDxcBlob, ppResult : **IDxcOperationResult) -> HRESULT #no_context
    {
        return this.vtable.AssembleToContainer (this, pShader, ppResult);
    }
}

IDxcBlob_UUID :: "8ba5fb08-5195-40e2-ac58-0d989c3a0102";
IDxcBlob :: struct
{
    UUID :: GUID.{0x8ba5fb08,0x5195,0x40e2,.[0xac,0x58,0xd,0x98,0x9c,0x3a,0x1,0x2]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcBlobVTable;

    GetBufferPointer :: inline (this : *IDxcBlob) -> *void #no_context
    {
        return this.vtable.GetBufferPointer (this);
    }

    GetBufferSize :: inline (this : *IDxcBlob) -> u64 #no_context
    {
        return this.vtable.GetBufferSize (this);
    }
}

IDxcBlobEncoding_UUID :: "7241d424-2646-4191-97c0-98e96e42fc68";
IDxcBlobEncoding :: struct
{
    UUID :: GUID.{0x7241d424,0x2646,0x4191,.[0x97,0xc0,0x98,0xe9,0x6e,0x42,0xfc,0x68]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcBlob;

    #place base;
    vtable : *IDxcBlobEncodingVTable;

    GetEncoding :: inline (this : *IDxcBlobEncoding, pKnown : *BOOL, pCodePage : *DXC_CP) -> HRESULT #no_context
    {
        return this.vtable.GetEncoding (this, pKnown, pCodePage);
    }
}

IDxcBlobUtf16_UUID :: "a3f84eab-0faa-497e-a39c-ee6ed60b2d84";
IDxcBlobUtf16 :: struct
{
    UUID :: GUID.{0xa3f84eab,0xfaa,0x497e,.[0xa3,0x9c,0xee,0x6e,0xd6,0xb,0x2d,0x84]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcBlobEncoding;

    #place base;
    vtable : *IDxcBlobUtf16VTable;

    GetStringPointer :: inline (this : *IDxcBlobUtf16) -> PWSTR #no_context
    {
        return this.vtable.GetStringPointer (this);
    }

    GetStringLength :: inline (this : *IDxcBlobUtf16) -> u64 #no_context
    {
        return this.vtable.GetStringLength (this);
    }
}

IDxcBlobUtf8_UUID :: "3da636c9-ba71-4024-a301-30cbf125305b";
IDxcBlobUtf8 :: struct
{
    UUID :: GUID.{0x3da636c9,0xba71,0x4024,.[0xa3,0x1,0x30,0xcb,0xf1,0x25,0x30,0x5b]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcBlobEncoding;

    #place base;
    vtable : *IDxcBlobUtf8VTable;

    GetStringPointer :: inline (this : *IDxcBlobUtf8) -> PSTR #no_context
    {
        return this.vtable.GetStringPointer (this);
    }

    GetStringLength :: inline (this : *IDxcBlobUtf8) -> u64 #no_context
    {
        return this.vtable.GetStringLength (this);
    }
}

IDxcCompiler_UUID :: "8c210bf3-011f-4422-8d70-6f9acb8db617";
IDxcCompiler :: struct
{
    UUID :: GUID.{0x8c210bf3,0x11f,0x4422,.[0x8d,0x70,0x6f,0x9a,0xcb,0x8d,0xb6,0x17]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcCompilerVTable;

    Compile :: inline (this : *IDxcCompiler, 
        pSource : *IDxcBlob,
        pSourceName : PWSTR,
        pEntryPoint : PWSTR,
        pTargetProfile : PWSTR,
        pArguments : *PWSTR,
        argCount : u32,
        pDefines : *DxcDefine,
        defineCount : u32,
        pIncludeHandler : *IDxcIncludeHandler,
        ppResult : **IDxcOperationResult
    ) -> HRESULT #no_context
    {
        return this.vtable.Compile (this, pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult);
    }

    Preprocess :: inline (this : *IDxcCompiler, 
        pSource : *IDxcBlob,
        pSourceName : PWSTR,
        pArguments : *PWSTR,
        argCount : u32,
        pDefines : *DxcDefine,
        defineCount : u32,
        pIncludeHandler : *IDxcIncludeHandler,
        ppResult : **IDxcOperationResult
    ) -> HRESULT #no_context
    {
        return this.vtable.Preprocess (this, pSource, pSourceName, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult);
    }

    Disassemble :: inline (this : *IDxcCompiler, pSource : *IDxcBlob, ppDisassembly : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.Disassemble (this, pSource, ppDisassembly);
    }
}

IDxcCompiler2_UUID :: "a005a9d9-b8bb-4594-b5c9-0e633bec4d37";
IDxcCompiler2 :: struct
{
    UUID :: GUID.{0xa005a9d9,0xb8bb,0x4594,.[0xb5,0xc9,0xe,0x63,0x3b,0xec,0x4d,0x37]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcCompiler;

    #place base;
    vtable : *IDxcCompiler2VTable;

    CompileWithDebug :: inline (this : *IDxcCompiler2, 
        pSource : *IDxcBlob,
        pSourceName : PWSTR,
        pEntryPoint : PWSTR,
        pTargetProfile : PWSTR,
        pArguments : *PWSTR,
        argCount : u32,
        pDefines : *DxcDefine,
        defineCount : u32,
        pIncludeHandler : *IDxcIncludeHandler,
        ppResult : **IDxcOperationResult,
        ppDebugBlobName : *PWSTR,
        ppDebugBlob : **IDxcBlob
    ) -> HRESULT #no_context
    {
        return this.vtable.CompileWithDebug (this, pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult, ppDebugBlobName, ppDebugBlob);
    }
}

IDxcCompiler3_UUID :: "228b4687-5a6a-4730-900c-9702b2203f54";
IDxcCompiler3 :: struct
{
    UUID :: GUID.{0x228b4687,0x5a6a,0x4730,.[0x90,0xc,0x97,0x2,0xb2,0x20,0x3f,0x54]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcCompiler3VTable;

    Compile :: inline (this : *IDxcCompiler3, 
        pSource : *DxcBuffer,
        pArguments : *PWSTR,
        argCount : u32,
        pIncludeHandler : *IDxcIncludeHandler,
        riid : *GUID,
        ppResult : **void
    ) -> HRESULT #no_context
    {
        return this.vtable.Compile (this, pSource, pArguments, argCount, pIncludeHandler, riid, ppResult);
    }

    Disassemble :: inline (this : *IDxcCompiler3, pObject : *DxcBuffer, riid : *GUID, ppResult : **void) -> HRESULT #no_context
    {
        return this.vtable.Disassemble (this, pObject, riid, ppResult);
    }
}

IDxcCompilerArgs_UUID :: "73effe2a-70dc-45f8-9690-eff64c02429d";
IDxcCompilerArgs :: struct
{
    UUID :: GUID.{0x73effe2a,0x70dc,0x45f8,.[0x96,0x90,0xef,0xf6,0x4c,0x2,0x42,0x9d]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcCompilerArgsVTable;

    GetArguments :: inline (this : *IDxcCompilerArgs) -> *PWSTR #no_context
    {
        return this.vtable.GetArguments (this);
    }

    GetCount :: inline (this : *IDxcCompilerArgs) -> u32 #no_context
    {
        return this.vtable.GetCount (this);
    }

    AddArguments :: inline (this : *IDxcCompilerArgs, pArguments : *PWSTR, argCount : u32) -> HRESULT #no_context
    {
        return this.vtable.AddArguments (this, pArguments, argCount);
    }

    AddArgumentsUTF8 :: inline (this : *IDxcCompilerArgs, pArguments : *PSTR, argCount : u32) -> HRESULT #no_context
    {
        return this.vtable.AddArgumentsUTF8 (this, pArguments, argCount);
    }

    AddDefines :: inline (this : *IDxcCompilerArgs, pDefines : *DxcDefine, defineCount : u32) -> HRESULT #no_context
    {
        return this.vtable.AddDefines (this, pDefines, defineCount);
    }
}

IDxcContainerBuilder_UUID :: "334b1f50-2292-4b35-99a1-25588d8c17fe";
IDxcContainerBuilder :: struct
{
    UUID :: GUID.{0x334b1f50,0x2292,0x4b35,.[0x99,0xa1,0x25,0x58,0x8d,0x8c,0x17,0xfe]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcContainerBuilderVTable;

    Load :: inline (this : *IDxcContainerBuilder, pDxilContainerHeader : *IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.Load (this, pDxilContainerHeader);
    }

    AddPart :: inline (this : *IDxcContainerBuilder, fourCC : u32, pSource : *IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.AddPart (this, fourCC, pSource);
    }

    RemovePart :: inline (this : *IDxcContainerBuilder, fourCC : u32) -> HRESULT #no_context
    {
        return this.vtable.RemovePart (this, fourCC);
    }

    SerializeContainer :: inline (this : *IDxcContainerBuilder, ppResult : **IDxcOperationResult) -> HRESULT #no_context
    {
        return this.vtable.SerializeContainer (this, ppResult);
    }
}

IDxcContainerReflection_UUID :: "d2c21b26-8350-4bdc-976a-331ce6f4c54c";
IDxcContainerReflection :: struct
{
    UUID :: GUID.{0xd2c21b26,0x8350,0x4bdc,.[0x97,0x6a,0x33,0x1c,0xe6,0xf4,0xc5,0x4c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcContainerReflectionVTable;

    Load :: inline (this : *IDxcContainerReflection, pContainer : *IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.Load (this, pContainer);
    }

    GetPartCount :: inline (this : *IDxcContainerReflection, pResult : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetPartCount (this, pResult);
    }

    GetPartKind :: inline (this : *IDxcContainerReflection, idx : u32, pResult : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetPartKind (this, idx, pResult);
    }

    GetPartContent :: inline (this : *IDxcContainerReflection, idx : u32, ppResult : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.GetPartContent (this, idx, ppResult);
    }

    FindFirstPartKind :: inline (this : *IDxcContainerReflection, kind : u32, pResult : *u32) -> HRESULT #no_context
    {
        return this.vtable.FindFirstPartKind (this, kind, pResult);
    }

    GetPartReflection :: inline (this : *IDxcContainerReflection, idx : u32, iid : *GUID, ppvObject : **void) -> HRESULT #no_context
    {
        return this.vtable.GetPartReflection (this, idx, iid, ppvObject);
    }
}

IDxcExtraOutputs_UUID :: "319b37a2-a5c2-494a-a5de-4801b2faf989";
IDxcExtraOutputs :: struct
{
    UUID :: GUID.{0x319b37a2,0xa5c2,0x494a,.[0xa5,0xde,0x48,0x1,0xb2,0xfa,0xf9,0x89]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcExtraOutputsVTable;

    GetOutputCount :: inline (this : *IDxcExtraOutputs) -> u32 #no_context
    {
        return this.vtable.GetOutputCount (this);
    }

    GetOutput :: inline (this : *IDxcExtraOutputs, 
        uIndex : u32,
        iid : *GUID,
        ppvObject : **void,
        ppOutputType : **IDxcBlobUtf16,
        ppOutputName : **IDxcBlobUtf16
    ) -> HRESULT #no_context
    {
        return this.vtable.GetOutput (this, uIndex, iid, ppvObject, ppOutputType, ppOutputName);
    }
}

IDxcIncludeHandler_UUID :: "7f61fc7d-950d-467f-b3e3-3c02fb49187c";
IDxcIncludeHandler :: struct
{
    UUID :: GUID.{0x7f61fc7d,0x950d,0x467f,.[0xb3,0xe3,0x3c,0x2,0xfb,0x49,0x18,0x7c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcIncludeHandlerVTable;

    LoadSource :: inline (this : *IDxcIncludeHandler, pFilename : PWSTR, ppIncludeSource : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.LoadSource (this, pFilename, ppIncludeSource);
    }
}

IDxcLibrary_UUID :: "e5204dc7-d18c-4c3c-bdfb-851673980fe7";
IDxcLibrary :: struct
{
    UUID :: GUID.{0xe5204dc7,0xd18c,0x4c3c,.[0xbd,0xfb,0x85,0x16,0x73,0x98,0xf,0xe7]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcLibraryVTable;

    SetMalloc :: inline (this : *IDxcLibrary, pMalloc : *IMalloc) -> HRESULT #no_context
    {
        return this.vtable.SetMalloc (this, pMalloc);
    }

    CreateBlobFromBlob :: inline (this : *IDxcLibrary, 
        pBlob : *IDxcBlob,
        offset : u32,
        length : u32,
        ppResult : **IDxcBlob
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobFromBlob (this, pBlob, offset, length, ppResult);
    }

    CreateBlobFromFile :: inline (this : *IDxcLibrary, pFileName : PWSTR, codePage : *DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobFromFile (this, pFileName, codePage, pBlobEncoding);
    }

    CreateBlobWithEncodingFromPinned :: inline (this : *IDxcLibrary, 
        pText : *void,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobWithEncodingFromPinned (this, pText, size, codePage, pBlobEncoding);
    }

    CreateBlobWithEncodingOnHeapCopy :: inline (this : *IDxcLibrary, 
        pText : *void,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobWithEncodingOnHeapCopy (this, pText, size, codePage, pBlobEncoding);
    }

    CreateBlobWithEncodingOnMalloc :: inline (this : *IDxcLibrary, 
        pText : *void,
        pIMalloc : *IMalloc,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobWithEncodingOnMalloc (this, pText, pIMalloc, size, codePage, pBlobEncoding);
    }

    CreateIncludeHandler :: inline (this : *IDxcLibrary, ppResult : **IDxcIncludeHandler) -> HRESULT #no_context
    {
        return this.vtable.CreateIncludeHandler (this, ppResult);
    }

    CreateStreamFromBlobReadOnly :: inline (this : *IDxcLibrary, pBlob : *IDxcBlob, ppStream : **IStream) -> HRESULT #no_context
    {
        return this.vtable.CreateStreamFromBlobReadOnly (this, pBlob, ppStream);
    }

    GetBlobAsUtf8 :: inline (this : *IDxcLibrary, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.GetBlobAsUtf8 (this, pBlob, pBlobEncoding);
    }

    GetBlobAsUtf16 :: inline (this : *IDxcLibrary, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.GetBlobAsUtf16 (this, pBlob, pBlobEncoding);
    }
}

IDxcLinker_UUID :: "f1b5be2a-62dd-4327-a1c2-42ac1e1e78e6";
IDxcLinker :: struct
{
    UUID :: GUID.{0xf1b5be2a,0x62dd,0x4327,.[0xa1,0xc2,0x42,0xac,0x1e,0x1e,0x78,0xe6]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcLinkerVTable;

    RegisterLibrary :: inline (this : *IDxcLinker, pLibName : PWSTR, pLib : *IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.RegisterLibrary (this, pLibName, pLib);
    }

    Link :: inline (this : *IDxcLinker, 
        pEntryName : PWSTR,
        pTargetProfile : PWSTR,
        pLibNames : *PWSTR,
        libCount : u32,
        pArguments : *PWSTR,
        argCount : u32,
        ppResult : **IDxcOperationResult
    ) -> HRESULT #no_context
    {
        return this.vtable.Link (this, pEntryName, pTargetProfile, pLibNames, libCount, pArguments, argCount, ppResult);
    }
}

IDxcOperationResult_UUID :: "cedb484a-d4e9-445a-b991-ca21ca157dc2";
IDxcOperationResult :: struct
{
    UUID :: GUID.{0xcedb484a,0xd4e9,0x445a,.[0xb9,0x91,0xca,0x21,0xca,0x15,0x7d,0xc2]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcOperationResultVTable;

    GetStatus :: inline (this : *IDxcOperationResult, pStatus : *HRESULT) -> HRESULT #no_context
    {
        return this.vtable.GetStatus (this, pStatus);
    }

    GetResult :: inline (this : *IDxcOperationResult, ppResult : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.GetResult (this, ppResult);
    }

    GetErrorBuffer :: inline (this : *IDxcOperationResult, ppErrors : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.GetErrorBuffer (this, ppErrors);
    }
}

IDxcOptimizer_UUID :: "25740e2e-9cba-401b-9119-4fb42f39f270";
IDxcOptimizer :: struct
{
    UUID :: GUID.{0x25740e2e,0x9cba,0x401b,.[0x91,0x19,0x4f,0xb4,0x2f,0x39,0xf2,0x70]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcOptimizerVTable;

    GetAvailablePassCount :: inline (this : *IDxcOptimizer, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetAvailablePassCount (this, pCount);
    }

    GetAvailablePass :: inline (this : *IDxcOptimizer, index : u32, ppResult : **IDxcOptimizerPass) -> HRESULT #no_context
    {
        return this.vtable.GetAvailablePass (this, index, ppResult);
    }

    RunOptimizer :: inline (this : *IDxcOptimizer, 
        pBlob : *IDxcBlob,
        ppOptions : *PWSTR,
        optionCount : u32,
        pOutputModule : **IDxcBlob,
        ppOutputText : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.RunOptimizer (this, pBlob, ppOptions, optionCount, pOutputModule, ppOutputText);
    }
}

IDxcOptimizerPass_UUID :: "ae2cd79f-cc22-453f-9b6b-b124e7a5204c";
IDxcOptimizerPass :: struct
{
    UUID :: GUID.{0xae2cd79f,0xcc22,0x453f,.[0x9b,0x6b,0xb1,0x24,0xe7,0xa5,0x20,0x4c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcOptimizerPassVTable;

    GetOptionName :: inline (this : *IDxcOptimizerPass, ppResult : *PWSTR) -> HRESULT #no_context
    {
        return this.vtable.GetOptionName (this, ppResult);
    }

    GetDescription :: inline (this : *IDxcOptimizerPass, ppResult : *PWSTR) -> HRESULT #no_context
    {
        return this.vtable.GetDescription (this, ppResult);
    }

    GetOptionArgCount :: inline (this : *IDxcOptimizerPass, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetOptionArgCount (this, pCount);
    }

    GetOptionArgName :: inline (this : *IDxcOptimizerPass, argIndex : u32, ppResult : *PWSTR) -> HRESULT #no_context
    {
        return this.vtable.GetOptionArgName (this, argIndex, ppResult);
    }

    GetOptionArgDescription :: inline (this : *IDxcOptimizerPass, argIndex : u32, ppResult : *PWSTR) -> HRESULT #no_context
    {
        return this.vtable.GetOptionArgDescription (this, argIndex, ppResult);
    }
}

IDxcPdbUtils_UUID :: "e6c9647e-9d6a-4c3b-b94c-524b5a6c343d";
IDxcPdbUtils :: struct
{
    UUID :: GUID.{0xe6c9647e,0x9d6a,0x4c3b,.[0xb9,0x4c,0x52,0x4b,0x5a,0x6c,0x34,0x3d]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcPdbUtilsVTable;

    Load :: inline (this : *IDxcPdbUtils, pPdbOrDxil : *IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.Load (this, pPdbOrDxil);
    }

    GetSourceCount :: inline (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetSourceCount (this, pCount);
    }

    GetSource :: inline (this : *IDxcPdbUtils, uIndex : u32, ppResult : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.GetSource (this, uIndex, ppResult);
    }

    GetSourceName :: inline (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetSourceName (this, uIndex, pResult);
    }

    GetFlagCount :: inline (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetFlagCount (this, pCount);
    }

    GetFlag :: inline (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetFlag (this, uIndex, pResult);
    }

    GetArgCount :: inline (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetArgCount (this, pCount);
    }

    GetArg :: inline (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetArg (this, uIndex, pResult);
    }

    GetArgPairCount :: inline (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetArgPairCount (this, pCount);
    }

    GetArgPair :: inline (this : *IDxcPdbUtils, uIndex : u32, pName : *BSTR, pValue : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetArgPair (this, uIndex, pName, pValue);
    }

    GetDefineCount :: inline (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetDefineCount (this, pCount);
    }

    GetDefine :: inline (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetDefine (this, uIndex, pResult);
    }

    GetTargetProfile :: inline (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetTargetProfile (this, pResult);
    }

    GetEntryPoint :: inline (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetEntryPoint (this, pResult);
    }

    GetMainFileName :: inline (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetMainFileName (this, pResult);
    }

    GetHash :: inline (this : *IDxcPdbUtils, ppResult : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.GetHash (this, ppResult);
    }

    GetName :: inline (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #no_context
    {
        return this.vtable.GetName (this, pResult);
    }

    IsFullPDB :: inline (this : *IDxcPdbUtils) -> BOOL #no_context
    {
        return this.vtable.IsFullPDB (this);
    }

    GetFullPDB :: inline (this : *IDxcPdbUtils, ppFullPDB : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.GetFullPDB (this, ppFullPDB);
    }

    GetVersionInfo :: inline (this : *IDxcPdbUtils, ppVersionInfo : **IDxcVersionInfo) -> HRESULT #no_context
    {
        return this.vtable.GetVersionInfo (this, ppVersionInfo);
    }

    SetCompiler :: inline (this : *IDxcPdbUtils, pCompiler : *IDxcCompiler3) -> HRESULT #no_context
    {
        return this.vtable.SetCompiler (this, pCompiler);
    }

    CompileForFullPDB :: inline (this : *IDxcPdbUtils, ppResult : **IDxcResult) -> HRESULT #no_context
    {
        return this.vtable.CompileForFullPDB (this, ppResult);
    }

    OverrideArgs :: inline (this : *IDxcPdbUtils, pArgPairs : *DxcArgPair, uNumArgPairs : u32) -> HRESULT #no_context
    {
        return this.vtable.OverrideArgs (this, pArgPairs, uNumArgPairs);
    }

    OverrideRootSignature :: inline (this : *IDxcPdbUtils, pRootSignature : PWSTR) -> HRESULT #no_context
    {
        return this.vtable.OverrideRootSignature (this, pRootSignature);
    }
}

IDxcResult_UUID :: "58346cda-dde7-4497-9461-6f87af5e0659";
IDxcResult :: struct
{
    UUID :: GUID.{0x58346cda,0xdde7,0x4497,.[0x94,0x61,0x6f,0x87,0xaf,0x5e,0x6,0x59]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcOperationResult;

    #place base;
    vtable : *IDxcResultVTable;

    HasOutput :: inline (this : *IDxcResult, dxcOutKind : DXC_OUT_KIND) -> BOOL #no_context
    {
        return this.vtable.HasOutput (this, dxcOutKind);
    }

    GetOutput :: inline (this : *IDxcResult, 
        dxcOutKind : DXC_OUT_KIND,
        iid : *GUID,
        ppvObject : **void,
        ppOutputName : **IDxcBlobUtf16
    ) -> HRESULT #no_context
    {
        return this.vtable.GetOutput (this, dxcOutKind, iid, ppvObject, ppOutputName);
    }

    GetNumOutputs :: inline (this : *IDxcResult) -> u32 #no_context
    {
        return this.vtable.GetNumOutputs (this);
    }

    GetOutputByIndex :: inline (this : *IDxcResult, Index : u32) -> DXC_OUT_KIND #no_context
    {
        return this.vtable.GetOutputByIndex (this, Index);
    }

    PrimaryOutput :: inline (this : *IDxcResult) -> DXC_OUT_KIND #no_context
    {
        return this.vtable.PrimaryOutput (this);
    }
}

IDxcUtils_UUID :: "4605c4cb-2019-492a-ada4-65f20bb7d67f";
IDxcUtils :: struct
{
    UUID :: GUID.{0x4605c4cb,0x2019,0x492a,.[0xad,0xa4,0x65,0xf2,0xb,0xb7,0xd6,0x7f]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcUtilsVTable;

    CreateBlobFromBlob :: inline (this : *IDxcUtils, 
        pBlob : *IDxcBlob,
        offset : u32,
        length : u32,
        ppResult : **IDxcBlob
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobFromBlob (this, pBlob, offset, length, ppResult);
    }

    CreateBlobFromPinned :: inline (this : *IDxcUtils, 
        pData : *void,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlobFromPinned (this, pData, size, codePage, pBlobEncoding);
    }

    MoveToBlob :: inline (this : *IDxcUtils, 
        pData : *void,
        pIMalloc : *IMalloc,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.MoveToBlob (this, pData, pIMalloc, size, codePage, pBlobEncoding);
    }

    CreateBlob :: inline (this : *IDxcUtils, 
        pData : *void,
        size : u32,
        codePage : DXC_CP,
        pBlobEncoding : **IDxcBlobEncoding
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateBlob (this, pData, size, codePage, pBlobEncoding);
    }

    LoadFile :: inline (this : *IDxcUtils, pFileName : PWSTR, pCodePage : *DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #no_context
    {
        return this.vtable.LoadFile (this, pFileName, pCodePage, pBlobEncoding);
    }

    CreateReadOnlyStreamFromBlob :: inline (this : *IDxcUtils, pBlob : *IDxcBlob, ppStream : **IStream) -> HRESULT #no_context
    {
        return this.vtable.CreateReadOnlyStreamFromBlob (this, pBlob, ppStream);
    }

    CreateDefaultIncludeHandler :: inline (this : *IDxcUtils, ppResult : **IDxcIncludeHandler) -> HRESULT #no_context
    {
        return this.vtable.CreateDefaultIncludeHandler (this, ppResult);
    }

    GetBlobAsUtf8 :: inline (this : *IDxcUtils, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobUtf8) -> HRESULT #no_context
    {
        return this.vtable.GetBlobAsUtf8 (this, pBlob, pBlobEncoding);
    }

    GetBlobAsUtf16 :: inline (this : *IDxcUtils, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobUtf16) -> HRESULT #no_context
    {
        return this.vtable.GetBlobAsUtf16 (this, pBlob, pBlobEncoding);
    }

    GetDxilContainerPart :: inline (this : *IDxcUtils, 
        pShader : *DxcBuffer,
        DxcPart : u32,
        ppPartData : **void,
        pPartSizeInBytes : *u32
    ) -> HRESULT #no_context
    {
        return this.vtable.GetDxilContainerPart (this, pShader, DxcPart, ppPartData, pPartSizeInBytes);
    }

    CreateReflection :: inline (this : *IDxcUtils, pData : *DxcBuffer, iid : *GUID, ppvReflection : **void) -> HRESULT #no_context
    {
        return this.vtable.CreateReflection (this, pData, iid, ppvReflection);
    }

    BuildArguments :: inline (this : *IDxcUtils, 
        pSourceName : PWSTR,
        pEntryPoint : PWSTR,
        pTargetProfile : PWSTR,
        pArguments : *PWSTR,
        argCount : u32,
        pDefines : *DxcDefine,
        defineCount : u32,
        ppArgs : **IDxcCompilerArgs
    ) -> HRESULT #no_context
    {
        return this.vtable.BuildArguments (this, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, ppArgs);
    }

    GetPDBContents :: inline (this : *IDxcUtils, pPDBBlob : *IDxcBlob, ppHash : **IDxcBlob, ppContainer : **IDxcBlob) -> HRESULT #no_context
    {
        return this.vtable.GetPDBContents (this, pPDBBlob, ppHash, ppContainer);
    }
}

IDxcValidator_UUID :: "a6e82bd2-1fd7-4826-9811-2857e797f49a";
IDxcValidator :: struct
{
    UUID :: GUID.{0xa6e82bd2,0x1fd7,0x4826,.[0x98,0x11,0x28,0x57,0xe7,0x97,0xf4,0x9a]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcValidatorVTable;

    Validate :: inline (this : *IDxcValidator, pShader : *IDxcBlob, Flags : u32, ppResult : **IDxcOperationResult) -> HRESULT #no_context
    {
        return this.vtable.Validate (this, pShader, Flags, ppResult);
    }
}

IDxcValidator2_UUID :: "458e1fd1-b1b2-4750-a6e1-9c10f03bed92";
IDxcValidator2 :: struct
{
    UUID :: GUID.{0x458e1fd1,0xb1b2,0x4750,.[0xa6,0xe1,0x9c,0x10,0xf0,0x3b,0xed,0x92]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcValidator;

    #place base;
    vtable : *IDxcValidator2VTable;

    ValidateWithDebug :: inline (this : *IDxcValidator2, 
        pShader : *IDxcBlob,
        Flags : u32,
        pOptDebugBitcode : *DxcBuffer,
        ppResult : **IDxcOperationResult
    ) -> HRESULT #no_context
    {
        return this.vtable.ValidateWithDebug (this, pShader, Flags, pOptDebugBitcode, ppResult);
    }
}

IDxcVersionInfo_UUID :: "b04f5b50-2059-4f12-a8ff-a1e0cde1cc7e";
IDxcVersionInfo :: struct
{
    UUID :: GUID.{0xb04f5b50,0x2059,0x4f12,.[0xa8,0xff,0xa1,0xe0,0xcd,0xe1,0xcc,0x7e]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcVersionInfoVTable;

    GetVersion :: inline (this : *IDxcVersionInfo, pMajor : *u32, pMinor : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetVersion (this, pMajor, pMinor);
    }

    GetFlags :: inline (this : *IDxcVersionInfo, pFlags : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetFlags (this, pFlags);
    }
}

IDxcVersionInfo2_UUID :: "fb6904c4-42f0-4b62-9c46-983af7da7c83";
IDxcVersionInfo2 :: struct
{
    UUID :: GUID.{0xfb6904c4,0x42f0,0x4b62,.[0x9c,0x46,0x98,0x3a,0xf7,0xda,0x7c,0x83]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDxcVersionInfo;

    #place base;
    vtable : *IDxcVersionInfo2VTable;

    GetCommitInfo :: inline (this : *IDxcVersionInfo2, pCommitCount : *u32, pCommitHash : **s8) -> HRESULT #no_context
    {
        return this.vtable.GetCommitInfo (this, pCommitCount, pCommitHash);
    }
}

IDxcVersionInfo3_UUID :: "5e13e843-9d25-473c-9ad2-03b2d0b44b1e";
IDxcVersionInfo3 :: struct
{
    UUID :: GUID.{0x5e13e843,0x9d25,0x473c,.[0x9a,0xd2,0x3,0xb2,0xd0,0xb4,0x4b,0x1e]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDxcVersionInfo3VTable;

    GetCustomVersionString :: inline (this : *IDxcVersionInfo3, pVersionString : **s8) -> HRESULT #no_context
    {
        return this.vtable.GetCustomVersionString (this, pVersionString);
    }
}

// Functions

DXCoreCreateAdapterFactory :: (riid : *GUID, ppvFactory : **void) -> HRESULT #foreign DXCORE;
DxcCreateInstance :: (rclsid : *GUID, riid : *GUID, ppv : **void) -> HRESULT #foreign dxcompiler;
DxcCreateInstance2 :: (pMalloc : *IMalloc, rclsid : *GUID, riid : *GUID, ppv : **void) -> HRESULT #foreign dxcompiler;

// COM interface vtables


IDxcAssemblerVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    AssembleToContainer : (this : *IDxcAssembler, pShader : *IDxcBlob, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
}

IDxcBlobVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetBufferPointer : (this : *IDxcBlob) -> *void #cpp_method;
    GetBufferSize : (this : *IDxcBlob) -> u64 #cpp_method;
}

IDxcBlobEncodingVTable :: struct
{
    #as using, except(.["base"]) base : IDxcBlobVTable;

    GetEncoding : (this : *IDxcBlobEncoding, pKnown : *BOOL, pCodePage : *DXC_CP) -> HRESULT #cpp_method;
}

IDxcBlobUtf16VTable :: struct
{
    #as using, except(.["base"]) base : IDxcBlobEncodingVTable;

    GetStringPointer : (this : *IDxcBlobUtf16) -> PWSTR #cpp_method;
    GetStringLength : (this : *IDxcBlobUtf16) -> u64 #cpp_method;
}

IDxcBlobUtf8VTable :: struct
{
    #as using, except(.["base"]) base : IDxcBlobEncodingVTable;

    GetStringPointer : (this : *IDxcBlobUtf8) -> PSTR #cpp_method;
    GetStringLength : (this : *IDxcBlobUtf8) -> u64 #cpp_method;
}

IDxcCompilerVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Compile : (this : *IDxcCompiler, pSource : *IDxcBlob, pSourceName : PWSTR, pEntryPoint : PWSTR, pTargetProfile : PWSTR, pArguments : *PWSTR, argCount : u32, pDefines : *DxcDefine, defineCount : u32, pIncludeHandler : *IDxcIncludeHandler, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
    Preprocess : (this : *IDxcCompiler, pSource : *IDxcBlob, pSourceName : PWSTR, pArguments : *PWSTR, argCount : u32, pDefines : *DxcDefine, defineCount : u32, pIncludeHandler : *IDxcIncludeHandler, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
    Disassemble : (this : *IDxcCompiler, pSource : *IDxcBlob, ppDisassembly : **IDxcBlobEncoding) -> HRESULT #cpp_method;
}

IDxcCompiler2VTable :: struct
{
    #as using, except(.["base"]) base : IDxcCompilerVTable;

    CompileWithDebug : (this : *IDxcCompiler2, pSource : *IDxcBlob, pSourceName : PWSTR, pEntryPoint : PWSTR, pTargetProfile : PWSTR, pArguments : *PWSTR, argCount : u32, pDefines : *DxcDefine, defineCount : u32, pIncludeHandler : *IDxcIncludeHandler, ppResult : **IDxcOperationResult, ppDebugBlobName : *PWSTR, ppDebugBlob : **IDxcBlob) -> HRESULT #cpp_method;
}

IDxcCompiler3VTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Compile : (this : *IDxcCompiler3, pSource : *DxcBuffer, pArguments : *PWSTR, argCount : u32, pIncludeHandler : *IDxcIncludeHandler, riid : *GUID, ppResult : **void) -> HRESULT #cpp_method;
    Disassemble : (this : *IDxcCompiler3, pObject : *DxcBuffer, riid : *GUID, ppResult : **void) -> HRESULT #cpp_method;
}

IDxcCompilerArgsVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetArguments : (this : *IDxcCompilerArgs) -> *PWSTR #cpp_method;
    GetCount : (this : *IDxcCompilerArgs) -> u32 #cpp_method;
    AddArguments : (this : *IDxcCompilerArgs, pArguments : *PWSTR, argCount : u32) -> HRESULT #cpp_method;
    AddArgumentsUTF8 : (this : *IDxcCompilerArgs, pArguments : *PSTR, argCount : u32) -> HRESULT #cpp_method;
    AddDefines : (this : *IDxcCompilerArgs, pDefines : *DxcDefine, defineCount : u32) -> HRESULT #cpp_method;
}

IDxcContainerBuilderVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Load : (this : *IDxcContainerBuilder, pDxilContainerHeader : *IDxcBlob) -> HRESULT #cpp_method;
    AddPart : (this : *IDxcContainerBuilder, fourCC : u32, pSource : *IDxcBlob) -> HRESULT #cpp_method;
    RemovePart : (this : *IDxcContainerBuilder, fourCC : u32) -> HRESULT #cpp_method;
    SerializeContainer : (this : *IDxcContainerBuilder, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
}

IDxcContainerReflectionVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Load : (this : *IDxcContainerReflection, pContainer : *IDxcBlob) -> HRESULT #cpp_method;
    GetPartCount : (this : *IDxcContainerReflection, pResult : *u32) -> HRESULT #cpp_method;
    GetPartKind : (this : *IDxcContainerReflection, idx : u32, pResult : *u32) -> HRESULT #cpp_method;
    GetPartContent : (this : *IDxcContainerReflection, idx : u32, ppResult : **IDxcBlob) -> HRESULT #cpp_method;
    FindFirstPartKind : (this : *IDxcContainerReflection, kind : u32, pResult : *u32) -> HRESULT #cpp_method;
    GetPartReflection : (this : *IDxcContainerReflection, idx : u32, iid : *GUID, ppvObject : **void) -> HRESULT #cpp_method;
}

IDxcExtraOutputsVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetOutputCount : (this : *IDxcExtraOutputs) -> u32 #cpp_method;
    GetOutput : (this : *IDxcExtraOutputs, uIndex : u32, iid : *GUID, ppvObject : **void, ppOutputType : **IDxcBlobUtf16, ppOutputName : **IDxcBlobUtf16) -> HRESULT #cpp_method;
}

IDxcIncludeHandlerVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    LoadSource : (this : *IDxcIncludeHandler, pFilename : PWSTR, ppIncludeSource : **IDxcBlob) -> HRESULT #cpp_method;
}

IDxcLibraryVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    SetMalloc : (this : *IDxcLibrary, pMalloc : *IMalloc) -> HRESULT #cpp_method;
    CreateBlobFromBlob : (this : *IDxcLibrary, pBlob : *IDxcBlob, offset : u32, length : u32, ppResult : **IDxcBlob) -> HRESULT #cpp_method;
    CreateBlobFromFile : (this : *IDxcLibrary, pFileName : PWSTR, codePage : *DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateBlobWithEncodingFromPinned : (this : *IDxcLibrary, pText : *void, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateBlobWithEncodingOnHeapCopy : (this : *IDxcLibrary, pText : *void, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateBlobWithEncodingOnMalloc : (this : *IDxcLibrary, pText : *void, pIMalloc : *IMalloc, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateIncludeHandler : (this : *IDxcLibrary, ppResult : **IDxcIncludeHandler) -> HRESULT #cpp_method;
    CreateStreamFromBlobReadOnly : (this : *IDxcLibrary, pBlob : *IDxcBlob, ppStream : **IStream) -> HRESULT #cpp_method;
    GetBlobAsUtf8 : (this : *IDxcLibrary, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    GetBlobAsUtf16 : (this : *IDxcLibrary, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
}

IDxcLinkerVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    RegisterLibrary : (this : *IDxcLinker, pLibName : PWSTR, pLib : *IDxcBlob) -> HRESULT #cpp_method;
    Link : (this : *IDxcLinker, pEntryName : PWSTR, pTargetProfile : PWSTR, pLibNames : *PWSTR, libCount : u32, pArguments : *PWSTR, argCount : u32, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
}

IDxcOperationResultVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetStatus : (this : *IDxcOperationResult, pStatus : *HRESULT) -> HRESULT #cpp_method;
    GetResult : (this : *IDxcOperationResult, ppResult : **IDxcBlob) -> HRESULT #cpp_method;
    GetErrorBuffer : (this : *IDxcOperationResult, ppErrors : **IDxcBlobEncoding) -> HRESULT #cpp_method;
}

IDxcOptimizerVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetAvailablePassCount : (this : *IDxcOptimizer, pCount : *u32) -> HRESULT #cpp_method;
    GetAvailablePass : (this : *IDxcOptimizer, index : u32, ppResult : **IDxcOptimizerPass) -> HRESULT #cpp_method;
    RunOptimizer : (this : *IDxcOptimizer, pBlob : *IDxcBlob, ppOptions : *PWSTR, optionCount : u32, pOutputModule : **IDxcBlob, ppOutputText : **IDxcBlobEncoding) -> HRESULT #cpp_method;
}

IDxcOptimizerPassVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetOptionName : (this : *IDxcOptimizerPass, ppResult : *PWSTR) -> HRESULT #cpp_method;
    GetDescription : (this : *IDxcOptimizerPass, ppResult : *PWSTR) -> HRESULT #cpp_method;
    GetOptionArgCount : (this : *IDxcOptimizerPass, pCount : *u32) -> HRESULT #cpp_method;
    GetOptionArgName : (this : *IDxcOptimizerPass, argIndex : u32, ppResult : *PWSTR) -> HRESULT #cpp_method;
    GetOptionArgDescription : (this : *IDxcOptimizerPass, argIndex : u32, ppResult : *PWSTR) -> HRESULT #cpp_method;
}

IDxcPdbUtilsVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Load : (this : *IDxcPdbUtils, pPdbOrDxil : *IDxcBlob) -> HRESULT #cpp_method;
    GetSourceCount : (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #cpp_method;
    GetSource : (this : *IDxcPdbUtils, uIndex : u32, ppResult : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    GetSourceName : (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #cpp_method;
    GetFlagCount : (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #cpp_method;
    GetFlag : (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #cpp_method;
    GetArgCount : (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #cpp_method;
    GetArg : (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #cpp_method;
    GetArgPairCount : (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #cpp_method;
    GetArgPair : (this : *IDxcPdbUtils, uIndex : u32, pName : *BSTR, pValue : *BSTR) -> HRESULT #cpp_method;
    GetDefineCount : (this : *IDxcPdbUtils, pCount : *u32) -> HRESULT #cpp_method;
    GetDefine : (this : *IDxcPdbUtils, uIndex : u32, pResult : *BSTR) -> HRESULT #cpp_method;
    GetTargetProfile : (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #cpp_method;
    GetEntryPoint : (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #cpp_method;
    GetMainFileName : (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #cpp_method;
    GetHash : (this : *IDxcPdbUtils, ppResult : **IDxcBlob) -> HRESULT #cpp_method;
    GetName : (this : *IDxcPdbUtils, pResult : *BSTR) -> HRESULT #cpp_method;
    IsFullPDB : (this : *IDxcPdbUtils) -> BOOL #cpp_method;
    GetFullPDB : (this : *IDxcPdbUtils, ppFullPDB : **IDxcBlob) -> HRESULT #cpp_method;
    GetVersionInfo : (this : *IDxcPdbUtils, ppVersionInfo : **IDxcVersionInfo) -> HRESULT #cpp_method;
    SetCompiler : (this : *IDxcPdbUtils, pCompiler : *IDxcCompiler3) -> HRESULT #cpp_method;
    CompileForFullPDB : (this : *IDxcPdbUtils, ppResult : **IDxcResult) -> HRESULT #cpp_method;
    OverrideArgs : (this : *IDxcPdbUtils, pArgPairs : *DxcArgPair, uNumArgPairs : u32) -> HRESULT #cpp_method;
    OverrideRootSignature : (this : *IDxcPdbUtils, pRootSignature : PWSTR) -> HRESULT #cpp_method;
}

IDxcResultVTable :: struct
{
    #as using, except(.["base"]) base : IDxcOperationResultVTable;

    HasOutput : (this : *IDxcResult, dxcOutKind : DXC_OUT_KIND) -> BOOL #cpp_method;
    GetOutput : (this : *IDxcResult, dxcOutKind : DXC_OUT_KIND, iid : *GUID, ppvObject : **void, ppOutputName : **IDxcBlobUtf16) -> HRESULT #cpp_method;
    GetNumOutputs : (this : *IDxcResult) -> u32 #cpp_method;
    GetOutputByIndex : (this : *IDxcResult, Index : u32) -> DXC_OUT_KIND #cpp_method;
    PrimaryOutput : (this : *IDxcResult) -> DXC_OUT_KIND #cpp_method;
}

IDxcUtilsVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    CreateBlobFromBlob : (this : *IDxcUtils, pBlob : *IDxcBlob, offset : u32, length : u32, ppResult : **IDxcBlob) -> HRESULT #cpp_method;
    CreateBlobFromPinned : (this : *IDxcUtils, pData : *void, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    MoveToBlob : (this : *IDxcUtils, pData : *void, pIMalloc : *IMalloc, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateBlob : (this : *IDxcUtils, pData : *void, size : u32, codePage : DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    LoadFile : (this : *IDxcUtils, pFileName : PWSTR, pCodePage : *DXC_CP, pBlobEncoding : **IDxcBlobEncoding) -> HRESULT #cpp_method;
    CreateReadOnlyStreamFromBlob : (this : *IDxcUtils, pBlob : *IDxcBlob, ppStream : **IStream) -> HRESULT #cpp_method;
    CreateDefaultIncludeHandler : (this : *IDxcUtils, ppResult : **IDxcIncludeHandler) -> HRESULT #cpp_method;
    GetBlobAsUtf8 : (this : *IDxcUtils, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobUtf8) -> HRESULT #cpp_method;
    GetBlobAsUtf16 : (this : *IDxcUtils, pBlob : *IDxcBlob, pBlobEncoding : **IDxcBlobUtf16) -> HRESULT #cpp_method;
    GetDxilContainerPart : (this : *IDxcUtils, pShader : *DxcBuffer, DxcPart : u32, ppPartData : **void, pPartSizeInBytes : *u32) -> HRESULT #cpp_method;
    CreateReflection : (this : *IDxcUtils, pData : *DxcBuffer, iid : *GUID, ppvReflection : **void) -> HRESULT #cpp_method;
    BuildArguments : (this : *IDxcUtils, pSourceName : PWSTR, pEntryPoint : PWSTR, pTargetProfile : PWSTR, pArguments : *PWSTR, argCount : u32, pDefines : *DxcDefine, defineCount : u32, ppArgs : **IDxcCompilerArgs) -> HRESULT #cpp_method;
    GetPDBContents : (this : *IDxcUtils, pPDBBlob : *IDxcBlob, ppHash : **IDxcBlob, ppContainer : **IDxcBlob) -> HRESULT #cpp_method;
}

IDxcValidatorVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    Validate : (this : *IDxcValidator, pShader : *IDxcBlob, Flags : u32, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
}

IDxcValidator2VTable :: struct
{
    #as using, except(.["base"]) base : IDxcValidatorVTable;

    ValidateWithDebug : (this : *IDxcValidator2, pShader : *IDxcBlob, Flags : u32, pOptDebugBitcode : *DxcBuffer, ppResult : **IDxcOperationResult) -> HRESULT #cpp_method;
}

IDxcVersionInfoVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetVersion : (this : *IDxcVersionInfo, pMajor : *u32, pMinor : *u32) -> HRESULT #cpp_method;
    GetFlags : (this : *IDxcVersionInfo, pFlags : *u32) -> HRESULT #cpp_method;
}

IDxcVersionInfo2VTable :: struct
{
    #as using, except(.["base"]) base : IDxcVersionInfoVTable;

    GetCommitInfo : (this : *IDxcVersionInfo2, pCommitCount : *u32, pCommitHash : **s8) -> HRESULT #cpp_method;
}

IDxcVersionInfo3VTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetCustomVersionString : (this : *IDxcVersionInfo3, pVersionString : **s8) -> HRESULT #cpp_method;
}

// System libraries

#scope_file

DXCORE :: #system_library "DXCORE";
dxcompiler :: #system_library "dxcompiler";

#scope_export

CLSID_DxcUtils :: GUID.{0x6245d6af,0x66e0,0x48fd,.[0x80,0xb4,0x4d,0x27,0x17,0x96,0x74,0x8c]};
