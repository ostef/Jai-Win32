// This file was auto generated

#import "Win32/Basics";
#import "Win32/GDI_Basics";

// Constants

DXGI_CENTER_MULTISAMPLE_QUALITY_PATTERN :: 4294967294;
DXGI_CPU_ACCESS_DYNAMIC :: 1;
DXGI_CPU_ACCESS_FIELD :: 15;
DXGI_CPU_ACCESS_NONE :: 0;
DXGI_CPU_ACCESS_READ_WRITE :: 2;
DXGI_CPU_ACCESS_SCRATCH :: 3;
DXGI_CREATE_FACTORY_DEBUG :: 1;
DXGI_DDI_ERR_NONEXCLUSIVE :: cast, no_check(HRESULT) -2005204989;
DXGI_DDI_ERR_UNSUPPORTED :: cast, no_check(HRESULT) -2005204990;
DXGI_DDI_ERR_WASSTILLDRAWING :: cast, no_check(HRESULT) -2005204991;
DXGI_DEBUG_ALL :: "e48ae283-da80-490b-87e6-43e9a9cfda08";
DXGI_DEBUG_APP :: "06cd6e01-4219-4ebd-8709-27ed23360c62";
DXGI_DEBUG_BINARY_VERSION :: 1;
DXGI_DEBUG_D3D12 :: "cf59a98c-a950-4326-91ef-9bbaa17bfd95";
DXGI_DEBUG_DX :: "35cdd7fc-13b2-421d-a5d7-7e4451287d64";
DXGI_DEBUG_DXGI :: "25cddaa4-b1c6-47e1-ac3e-98875b5a2e2a";
DXGI_ENUM_MODES_DISABLED_STEREO :: 8;
DXGI_ENUM_MODES_INTERLACED :: 1;
DXGI_ENUM_MODES_SCALING :: 2;
DXGI_ENUM_MODES_STEREO :: 4;
DXGI_ERROR_ACCESS_DENIED :: cast, no_check(HRESULT) -2005270485;
DXGI_ERROR_ACCESS_LOST :: cast, no_check(HRESULT) -2005270490;
DXGI_ERROR_ALREADY_EXISTS :: cast, no_check(HRESULT) -2005270474;
DXGI_ERROR_CACHE_CORRUPT :: cast, no_check(HRESULT) -2005270477;
DXGI_ERROR_CACHE_FULL :: cast, no_check(HRESULT) -2005270476;
DXGI_ERROR_CACHE_HASH_COLLISION :: cast, no_check(HRESULT) -2005270475;
DXGI_ERROR_CANNOT_PROTECT_CONTENT :: cast, no_check(HRESULT) -2005270486;
DXGI_ERROR_DEVICE_HUNG :: cast, no_check(HRESULT) -2005270522;
DXGI_ERROR_DEVICE_REMOVED :: cast, no_check(HRESULT) -2005270523;
DXGI_ERROR_DEVICE_RESET :: cast, no_check(HRESULT) -2005270521;
DXGI_ERROR_DRIVER_INTERNAL_ERROR :: cast, no_check(HRESULT) -2005270496;
DXGI_ERROR_DYNAMIC_CODE_POLICY_VIOLATION :: cast, no_check(HRESULT) -2005270479;
DXGI_ERROR_FRAME_STATISTICS_DISJOINT :: cast, no_check(HRESULT) -2005270517;
DXGI_ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE :: cast, no_check(HRESULT) -2005270516;
DXGI_ERROR_HW_PROTECTION_OUTOFMEMORY :: cast, no_check(HRESULT) -2005270480;
DXGI_ERROR_INVALID_CALL :: cast, no_check(HRESULT) -2005270527;
DXGI_ERROR_MODE_CHANGE_IN_PROGRESS :: cast, no_check(HRESULT) -2005270491;
DXGI_ERROR_MORE_DATA :: cast, no_check(HRESULT) -2005270525;
DXGI_ERROR_NAME_ALREADY_EXISTS :: cast, no_check(HRESULT) -2005270484;
DXGI_ERROR_NONEXCLUSIVE :: cast, no_check(HRESULT) -2005270495;
DXGI_ERROR_NON_COMPOSITED_UI :: cast, no_check(HRESULT) -2005270478;
DXGI_ERROR_NOT_CURRENT :: cast, no_check(HRESULT) -2005270482;
DXGI_ERROR_NOT_CURRENTLY_AVAILABLE :: cast, no_check(HRESULT) -2005270494;
DXGI_ERROR_NOT_FOUND :: cast, no_check(HRESULT) -2005270526;
DXGI_ERROR_REMOTE_CLIENT_DISCONNECTED :: cast, no_check(HRESULT) -2005270493;
DXGI_ERROR_REMOTE_OUTOFMEMORY :: cast, no_check(HRESULT) -2005270492;
DXGI_ERROR_RESTRICT_TO_OUTPUT_STALE :: cast, no_check(HRESULT) -2005270487;
DXGI_ERROR_SDK_COMPONENT_MISSING :: cast, no_check(HRESULT) -2005270483;
DXGI_ERROR_SESSION_DISCONNECTED :: cast, no_check(HRESULT) -2005270488;
DXGI_ERROR_UNSUPPORTED :: cast, no_check(HRESULT) -2005270524;
DXGI_ERROR_WAIT_TIMEOUT :: cast, no_check(HRESULT) -2005270489;
DXGI_ERROR_WAS_STILL_DRAWING :: cast, no_check(HRESULT) -2005270518;
DXGI_FORMAT_DEFINED :: 1;
DXGI_INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT :: 1024;
DXGI_INFO_QUEUE_MESSAGE_ID_STRING_FROM_APPLICATION :: 0;
DXGI_MAP_DISCARD :: 4;
DXGI_MAP_READ :: 1;
DXGI_MAP_WRITE :: 2;
DXGI_MAX_SWAP_CHAIN_BUFFERS :: 16;
DXGI_MWA_NO_ALT_ENTER :: 2;
DXGI_MWA_NO_PRINT_SCREEN :: 4;
DXGI_MWA_NO_WINDOW_CHANGES :: 1;
DXGI_MWA_VALID :: 7;
DXGI_PRESENT_ALLOW_TEARING :: 512;
DXGI_PRESENT_DO_NOT_SEQUENCE :: 2;
DXGI_PRESENT_DO_NOT_WAIT :: 8;
DXGI_PRESENT_RESTART :: 4;
DXGI_PRESENT_RESTRICT_TO_OUTPUT :: 64;
DXGI_PRESENT_STEREO_PREFER_RIGHT :: 16;
DXGI_PRESENT_STEREO_TEMPORARY_MONO :: 32;
DXGI_PRESENT_TEST :: 1;
DXGI_PRESENT_USE_DURATION :: 256;
DXGI_SHARED_RESOURCE_READ :: 2147483648;
DXGI_SHARED_RESOURCE_WRITE :: 1;
DXGI_STANDARD_MULTISAMPLE_QUALITY_PATTERN :: 4294967295;
DXGI_STATUS_CLIPPED :: cast, no_check(HRESULT) 142213122;
DXGI_STATUS_DDA_WAS_STILL_DRAWING :: cast, no_check(HRESULT) 142213130;
DXGI_STATUS_GRAPHICS_VIDPN_SOURCE_IN_USE :: cast, no_check(HRESULT) 142213126;
DXGI_STATUS_MODE_CHANGED :: cast, no_check(HRESULT) 142213127;
DXGI_STATUS_MODE_CHANGE_IN_PROGRESS :: cast, no_check(HRESULT) 142213128;
DXGI_STATUS_NO_DESKTOP_ACCESS :: cast, no_check(HRESULT) 142213125;
DXGI_STATUS_NO_REDIRECTION :: cast, no_check(HRESULT) 142213124;
DXGI_STATUS_OCCLUDED :: cast, no_check(HRESULT) 142213121;
DXGI_STATUS_PRESENT_REQUIRED :: cast, no_check(HRESULT) 142213167;
DXGI_STATUS_UNOCCLUDED :: cast, no_check(HRESULT) 142213129;
DXGI_USAGE_BACK_BUFFER :: 64;
DXGI_USAGE_DISCARD_ON_PRESENT :: 512;
DXGI_USAGE_READ_ONLY :: 256;
DXGI_USAGE_RENDER_TARGET_OUTPUT :: 32;
DXGI_USAGE_SHADER_INPUT :: 16;
DXGI_USAGE_SHARED :: 128;
DXGI_USAGE_UNORDERED_ACCESS :: 1024;
_FACDXGI :: 2170;

// Types

DXGI_ADAPTER_DESC :: struct
{
    Description : [128]u16;
    VendorId : u32;
    DeviceId : u32;
    SubSysId : u32;
    Revision : u32;
    DedicatedVideoMemory : u64;
    DedicatedSystemMemory : u64;
    SharedSystemMemory : u64;
    AdapterLuid : LUID;
}

DXGI_ADAPTER_DESC1 :: struct
{
    Description : [128]u16;
    VendorId : u32;
    DeviceId : u32;
    SubSysId : u32;
    Revision : u32;
    DedicatedVideoMemory : u64;
    DedicatedSystemMemory : u64;
    SharedSystemMemory : u64;
    AdapterLuid : LUID;
    Flags : u32;
}

DXGI_ADAPTER_DESC2 :: struct
{
    Description : [128]u16;
    VendorId : u32;
    DeviceId : u32;
    SubSysId : u32;
    Revision : u32;
    DedicatedVideoMemory : u64;
    DedicatedSystemMemory : u64;
    SharedSystemMemory : u64;
    AdapterLuid : LUID;
    Flags : u32;
    GraphicsPreemptionGranularity : DXGI_GRAPHICS_PREEMPTION_GRANULARITY;
    ComputePreemptionGranularity : DXGI_COMPUTE_PREEMPTION_GRANULARITY;
}

DXGI_ADAPTER_DESC3 :: struct
{
    Description : [128]u16;
    VendorId : u32;
    DeviceId : u32;
    SubSysId : u32;
    Revision : u32;
    DedicatedVideoMemory : u64;
    DedicatedSystemMemory : u64;
    SharedSystemMemory : u64;
    AdapterLuid : LUID;
    Flags : DXGI_ADAPTER_FLAG3;
    GraphicsPreemptionGranularity : DXGI_GRAPHICS_PREEMPTION_GRANULARITY;
    ComputePreemptionGranularity : DXGI_COMPUTE_PREEMPTION_GRANULARITY;
}

DXGI_ADAPTER_FLAG :: enum_flags u32
{
    NONE :: 0;
    REMOTE :: 1;
    SOFTWARE :: 2;
}

DXGI_ADAPTER_FLAG_NONE :: 0;
DXGI_ADAPTER_FLAG_REMOTE :: 1;
DXGI_ADAPTER_FLAG_SOFTWARE :: 2;

DXGI_ADAPTER_FLAG3 :: enum_flags u32
{
    NONE :: 0;
    REMOTE :: 1;
    SOFTWARE :: 2;
    ACG_COMPATIBLE :: 4;
    SUPPORT_MONITORED_FENCES :: 8;
    SUPPORT_NON_MONITORED_FENCES :: 16;
    KEYED_MUTEX_CONFORMANCE :: 32;
    FORCE_DWORD :: 4294967295;
}

DXGI_ADAPTER_FLAG3_NONE :: 0;
DXGI_ADAPTER_FLAG3_REMOTE :: 1;
DXGI_ADAPTER_FLAG3_SOFTWARE :: 2;
DXGI_ADAPTER_FLAG3_ACG_COMPATIBLE :: 4;
DXGI_ADAPTER_FLAG3_SUPPORT_MONITORED_FENCES :: 8;
DXGI_ADAPTER_FLAG3_SUPPORT_NON_MONITORED_FENCES :: 16;
DXGI_ADAPTER_FLAG3_KEYED_MUTEX_CONFORMANCE :: 32;
DXGI_ADAPTER_FLAG3_FORCE_DWORD :: 4294967295;

DXGI_ALPHA_MODE :: enum u32
{
    UNSPECIFIED :: 0;
    PREMULTIPLIED :: 1;
    STRAIGHT :: 2;
    IGNORE :: 3;
    FORCE_DWORD :: 4294967295;
}

DXGI_ALPHA_MODE_UNSPECIFIED :: 0;
DXGI_ALPHA_MODE_PREMULTIPLIED :: 1;
DXGI_ALPHA_MODE_STRAIGHT :: 2;
DXGI_ALPHA_MODE_IGNORE :: 3;
DXGI_ALPHA_MODE_FORCE_DWORD :: 4294967295;

DXGI_COLOR_SPACE_TYPE :: enum s32
{
    DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709 :: 0;
    DXGI_COLOR_SPACE_RGB_FULL_G10_NONE_P709 :: 1;
    DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P709 :: 2;
    DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P2020 :: 3;
    DXGI_COLOR_SPACE_RESERVED :: 4;
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_NONE_P709_X601 :: 5;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P601 :: 6;
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P601 :: 7;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P709 :: 8;
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P709 :: 9;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P2020 :: 10;
    DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P2020 :: 11;
    DXGI_COLOR_SPACE_RGB_FULL_G2084_NONE_P2020 :: 12;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_LEFT_P2020 :: 13;
    DXGI_COLOR_SPACE_RGB_STUDIO_G2084_NONE_P2020 :: 14;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_TOPLEFT_P2020 :: 15;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_TOPLEFT_P2020 :: 16;
    DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P2020 :: 17;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_GHLG_TOPLEFT_P2020 :: 18;
    DXGI_COLOR_SPACE_YCBCR_FULL_GHLG_TOPLEFT_P2020 :: 19;
    DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P709 :: 20;
    DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P2020 :: 21;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P709 :: 22;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P2020 :: 23;
    DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_TOPLEFT_P2020 :: 24;
    DXGI_COLOR_SPACE_CUSTOM :: -1;
}

DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709 :: 0;
DXGI_COLOR_SPACE_RGB_FULL_G10_NONE_P709 :: 1;
DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P709 :: 2;
DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P2020 :: 3;
DXGI_COLOR_SPACE_RESERVED :: 4;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_NONE_P709_X601 :: 5;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P601 :: 6;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P601 :: 7;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P709 :: 8;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P709 :: 9;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P2020 :: 10;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P2020 :: 11;
DXGI_COLOR_SPACE_RGB_FULL_G2084_NONE_P2020 :: 12;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_LEFT_P2020 :: 13;
DXGI_COLOR_SPACE_RGB_STUDIO_G2084_NONE_P2020 :: 14;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_TOPLEFT_P2020 :: 15;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_TOPLEFT_P2020 :: 16;
DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P2020 :: 17;
DXGI_COLOR_SPACE_YCBCR_STUDIO_GHLG_TOPLEFT_P2020 :: 18;
DXGI_COLOR_SPACE_YCBCR_FULL_GHLG_TOPLEFT_P2020 :: 19;
DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P709 :: 20;
DXGI_COLOR_SPACE_RGB_STUDIO_G24_NONE_P2020 :: 21;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P709 :: 22;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_LEFT_P2020 :: 23;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G24_TOPLEFT_P2020 :: 24;
DXGI_COLOR_SPACE_CUSTOM :: -1;

DXGI_COMPUTE_PREEMPTION_GRANULARITY :: enum s32
{
    DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY :: 0;
    DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY :: 1;
    DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY :: 2;
    DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY :: 3;
    DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY :: 4;
}

DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY :: 0;
DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY :: 1;
DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY :: 2;
DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY :: 3;
DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY :: 4;

DXGI_DEBUG_RLO_FLAGS :: enum_flags u32
{
    SUMMARY :: 1;
    DETAIL :: 2;
    IGNORE_INTERNAL :: 4;
    ALL :: 7;
}

DXGI_DEBUG_RLO_SUMMARY :: 1;
DXGI_DEBUG_RLO_DETAIL :: 2;
DXGI_DEBUG_RLO_IGNORE_INTERNAL :: 4;
DXGI_DEBUG_RLO_ALL :: 7;

DXGI_DECODE_SWAP_CHAIN_DESC :: struct
{
    Flags : u32;
}

DXGI_DISPLAY_COLOR_SPACE :: struct
{
    PrimaryCoordinates : [16]float;
    WhitePoints : [32]float;
}

DXGI_FEATURE :: enum s32
{
    PRESENT_ALLOW_TEARING :: 0;
}

DXGI_FEATURE_PRESENT_ALLOW_TEARING :: 0;

DXGI_FORMAT :: enum u32
{
    UNKNOWN :: 0;
    R32G32B32A32_TYPELESS :: 1;
    R32G32B32A32_FLOAT :: 2;
    R32G32B32A32_UINT :: 3;
    R32G32B32A32_SINT :: 4;
    R32G32B32_TYPELESS :: 5;
    R32G32B32_FLOAT :: 6;
    R32G32B32_UINT :: 7;
    R32G32B32_SINT :: 8;
    R16G16B16A16_TYPELESS :: 9;
    R16G16B16A16_FLOAT :: 10;
    R16G16B16A16_UNORM :: 11;
    R16G16B16A16_UINT :: 12;
    R16G16B16A16_SNORM :: 13;
    R16G16B16A16_SINT :: 14;
    R32G32_TYPELESS :: 15;
    R32G32_FLOAT :: 16;
    R32G32_UINT :: 17;
    R32G32_SINT :: 18;
    R32G8X24_TYPELESS :: 19;
    D32_FLOAT_S8X24_UINT :: 20;
    R32_FLOAT_X8X24_TYPELESS :: 21;
    X32_TYPELESS_G8X24_UINT :: 22;
    R10G10B10A2_TYPELESS :: 23;
    R10G10B10A2_UNORM :: 24;
    R10G10B10A2_UINT :: 25;
    R11G11B10_FLOAT :: 26;
    R8G8B8A8_TYPELESS :: 27;
    R8G8B8A8_UNORM :: 28;
    R8G8B8A8_UNORM_SRGB :: 29;
    R8G8B8A8_UINT :: 30;
    R8G8B8A8_SNORM :: 31;
    R8G8B8A8_SINT :: 32;
    R16G16_TYPELESS :: 33;
    R16G16_FLOAT :: 34;
    R16G16_UNORM :: 35;
    R16G16_UINT :: 36;
    R16G16_SNORM :: 37;
    R16G16_SINT :: 38;
    R32_TYPELESS :: 39;
    D32_FLOAT :: 40;
    R32_FLOAT :: 41;
    R32_UINT :: 42;
    R32_SINT :: 43;
    R24G8_TYPELESS :: 44;
    D24_UNORM_S8_UINT :: 45;
    R24_UNORM_X8_TYPELESS :: 46;
    X24_TYPELESS_G8_UINT :: 47;
    R8G8_TYPELESS :: 48;
    R8G8_UNORM :: 49;
    R8G8_UINT :: 50;
    R8G8_SNORM :: 51;
    R8G8_SINT :: 52;
    R16_TYPELESS :: 53;
    R16_FLOAT :: 54;
    D16_UNORM :: 55;
    R16_UNORM :: 56;
    R16_UINT :: 57;
    R16_SNORM :: 58;
    R16_SINT :: 59;
    R8_TYPELESS :: 60;
    R8_UNORM :: 61;
    R8_UINT :: 62;
    R8_SNORM :: 63;
    R8_SINT :: 64;
    A8_UNORM :: 65;
    R1_UNORM :: 66;
    R9G9B9E5_SHAREDEXP :: 67;
    R8G8_B8G8_UNORM :: 68;
    G8R8_G8B8_UNORM :: 69;
    BC1_TYPELESS :: 70;
    BC1_UNORM :: 71;
    BC1_UNORM_SRGB :: 72;
    BC2_TYPELESS :: 73;
    BC2_UNORM :: 74;
    BC2_UNORM_SRGB :: 75;
    BC3_TYPELESS :: 76;
    BC3_UNORM :: 77;
    BC3_UNORM_SRGB :: 78;
    BC4_TYPELESS :: 79;
    BC4_UNORM :: 80;
    BC4_SNORM :: 81;
    BC5_TYPELESS :: 82;
    BC5_UNORM :: 83;
    BC5_SNORM :: 84;
    B5G6R5_UNORM :: 85;
    B5G5R5A1_UNORM :: 86;
    B8G8R8A8_UNORM :: 87;
    B8G8R8X8_UNORM :: 88;
    R10G10B10_XR_BIAS_A2_UNORM :: 89;
    B8G8R8A8_TYPELESS :: 90;
    B8G8R8A8_UNORM_SRGB :: 91;
    B8G8R8X8_TYPELESS :: 92;
    B8G8R8X8_UNORM_SRGB :: 93;
    BC6H_TYPELESS :: 94;
    BC6H_UF16 :: 95;
    BC6H_SF16 :: 96;
    BC7_TYPELESS :: 97;
    BC7_UNORM :: 98;
    BC7_UNORM_SRGB :: 99;
    AYUV :: 100;
    Y410 :: 101;
    Y416 :: 102;
    NV12 :: 103;
    P010 :: 104;
    P016 :: 105;
    _420_OPAQUE :: 106;
    YUY2 :: 107;
    Y210 :: 108;
    Y216 :: 109;
    NV11 :: 110;
    AI44 :: 111;
    IA44 :: 112;
    P8 :: 113;
    A8P8 :: 114;
    B4G4R4A4_UNORM :: 115;
    P208 :: 130;
    V208 :: 131;
    V408 :: 132;
    SAMPLER_FEEDBACK_MIN_MIP_OPAQUE :: 189;
    SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE :: 190;
    FORCE_UINT :: 4294967295;
}

DXGI_FORMAT_UNKNOWN :: 0;
DXGI_FORMAT_R32G32B32A32_TYPELESS :: 1;
DXGI_FORMAT_R32G32B32A32_FLOAT :: 2;
DXGI_FORMAT_R32G32B32A32_UINT :: 3;
DXGI_FORMAT_R32G32B32A32_SINT :: 4;
DXGI_FORMAT_R32G32B32_TYPELESS :: 5;
DXGI_FORMAT_R32G32B32_FLOAT :: 6;
DXGI_FORMAT_R32G32B32_UINT :: 7;
DXGI_FORMAT_R32G32B32_SINT :: 8;
DXGI_FORMAT_R16G16B16A16_TYPELESS :: 9;
DXGI_FORMAT_R16G16B16A16_FLOAT :: 10;
DXGI_FORMAT_R16G16B16A16_UNORM :: 11;
DXGI_FORMAT_R16G16B16A16_UINT :: 12;
DXGI_FORMAT_R16G16B16A16_SNORM :: 13;
DXGI_FORMAT_R16G16B16A16_SINT :: 14;
DXGI_FORMAT_R32G32_TYPELESS :: 15;
DXGI_FORMAT_R32G32_FLOAT :: 16;
DXGI_FORMAT_R32G32_UINT :: 17;
DXGI_FORMAT_R32G32_SINT :: 18;
DXGI_FORMAT_R32G8X24_TYPELESS :: 19;
DXGI_FORMAT_D32_FLOAT_S8X24_UINT :: 20;
DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS :: 21;
DXGI_FORMAT_X32_TYPELESS_G8X24_UINT :: 22;
DXGI_FORMAT_R10G10B10A2_TYPELESS :: 23;
DXGI_FORMAT_R10G10B10A2_UNORM :: 24;
DXGI_FORMAT_R10G10B10A2_UINT :: 25;
DXGI_FORMAT_R11G11B10_FLOAT :: 26;
DXGI_FORMAT_R8G8B8A8_TYPELESS :: 27;
DXGI_FORMAT_R8G8B8A8_UNORM :: 28;
DXGI_FORMAT_R8G8B8A8_UNORM_SRGB :: 29;
DXGI_FORMAT_R8G8B8A8_UINT :: 30;
DXGI_FORMAT_R8G8B8A8_SNORM :: 31;
DXGI_FORMAT_R8G8B8A8_SINT :: 32;
DXGI_FORMAT_R16G16_TYPELESS :: 33;
DXGI_FORMAT_R16G16_FLOAT :: 34;
DXGI_FORMAT_R16G16_UNORM :: 35;
DXGI_FORMAT_R16G16_UINT :: 36;
DXGI_FORMAT_R16G16_SNORM :: 37;
DXGI_FORMAT_R16G16_SINT :: 38;
DXGI_FORMAT_R32_TYPELESS :: 39;
DXGI_FORMAT_D32_FLOAT :: 40;
DXGI_FORMAT_R32_FLOAT :: 41;
DXGI_FORMAT_R32_UINT :: 42;
DXGI_FORMAT_R32_SINT :: 43;
DXGI_FORMAT_R24G8_TYPELESS :: 44;
DXGI_FORMAT_D24_UNORM_S8_UINT :: 45;
DXGI_FORMAT_R24_UNORM_X8_TYPELESS :: 46;
DXGI_FORMAT_X24_TYPELESS_G8_UINT :: 47;
DXGI_FORMAT_R8G8_TYPELESS :: 48;
DXGI_FORMAT_R8G8_UNORM :: 49;
DXGI_FORMAT_R8G8_UINT :: 50;
DXGI_FORMAT_R8G8_SNORM :: 51;
DXGI_FORMAT_R8G8_SINT :: 52;
DXGI_FORMAT_R16_TYPELESS :: 53;
DXGI_FORMAT_R16_FLOAT :: 54;
DXGI_FORMAT_D16_UNORM :: 55;
DXGI_FORMAT_R16_UNORM :: 56;
DXGI_FORMAT_R16_UINT :: 57;
DXGI_FORMAT_R16_SNORM :: 58;
DXGI_FORMAT_R16_SINT :: 59;
DXGI_FORMAT_R8_TYPELESS :: 60;
DXGI_FORMAT_R8_UNORM :: 61;
DXGI_FORMAT_R8_UINT :: 62;
DXGI_FORMAT_R8_SNORM :: 63;
DXGI_FORMAT_R8_SINT :: 64;
DXGI_FORMAT_A8_UNORM :: 65;
DXGI_FORMAT_R1_UNORM :: 66;
DXGI_FORMAT_R9G9B9E5_SHAREDEXP :: 67;
DXGI_FORMAT_R8G8_B8G8_UNORM :: 68;
DXGI_FORMAT_G8R8_G8B8_UNORM :: 69;
DXGI_FORMAT_BC1_TYPELESS :: 70;
DXGI_FORMAT_BC1_UNORM :: 71;
DXGI_FORMAT_BC1_UNORM_SRGB :: 72;
DXGI_FORMAT_BC2_TYPELESS :: 73;
DXGI_FORMAT_BC2_UNORM :: 74;
DXGI_FORMAT_BC2_UNORM_SRGB :: 75;
DXGI_FORMAT_BC3_TYPELESS :: 76;
DXGI_FORMAT_BC3_UNORM :: 77;
DXGI_FORMAT_BC3_UNORM_SRGB :: 78;
DXGI_FORMAT_BC4_TYPELESS :: 79;
DXGI_FORMAT_BC4_UNORM :: 80;
DXGI_FORMAT_BC4_SNORM :: 81;
DXGI_FORMAT_BC5_TYPELESS :: 82;
DXGI_FORMAT_BC5_UNORM :: 83;
DXGI_FORMAT_BC5_SNORM :: 84;
DXGI_FORMAT_B5G6R5_UNORM :: 85;
DXGI_FORMAT_B5G5R5A1_UNORM :: 86;
DXGI_FORMAT_B8G8R8A8_UNORM :: 87;
DXGI_FORMAT_B8G8R8X8_UNORM :: 88;
DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM :: 89;
DXGI_FORMAT_B8G8R8A8_TYPELESS :: 90;
DXGI_FORMAT_B8G8R8A8_UNORM_SRGB :: 91;
DXGI_FORMAT_B8G8R8X8_TYPELESS :: 92;
DXGI_FORMAT_B8G8R8X8_UNORM_SRGB :: 93;
DXGI_FORMAT_BC6H_TYPELESS :: 94;
DXGI_FORMAT_BC6H_UF16 :: 95;
DXGI_FORMAT_BC6H_SF16 :: 96;
DXGI_FORMAT_BC7_TYPELESS :: 97;
DXGI_FORMAT_BC7_UNORM :: 98;
DXGI_FORMAT_BC7_UNORM_SRGB :: 99;
DXGI_FORMAT_AYUV :: 100;
DXGI_FORMAT_Y410 :: 101;
DXGI_FORMAT_Y416 :: 102;
DXGI_FORMAT_NV12 :: 103;
DXGI_FORMAT_P010 :: 104;
DXGI_FORMAT_P016 :: 105;
DXGI_FORMAT_420_OPAQUE :: 106;
DXGI_FORMAT_YUY2 :: 107;
DXGI_FORMAT_Y210 :: 108;
DXGI_FORMAT_Y216 :: 109;
DXGI_FORMAT_NV11 :: 110;
DXGI_FORMAT_AI44 :: 111;
DXGI_FORMAT_IA44 :: 112;
DXGI_FORMAT_P8 :: 113;
DXGI_FORMAT_A8P8 :: 114;
DXGI_FORMAT_B4G4R4A4_UNORM :: 115;
DXGI_FORMAT_P208 :: 130;
DXGI_FORMAT_V208 :: 131;
DXGI_FORMAT_V408 :: 132;
DXGI_FORMAT_SAMPLER_FEEDBACK_MIN_MIP_OPAQUE :: 189;
DXGI_FORMAT_SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE :: 190;
DXGI_FORMAT_FORCE_UINT :: 4294967295;

DXGI_FRAME_PRESENTATION_MODE :: enum s32
{
    COMPOSED :: 0;
    OVERLAY :: 1;
    NONE :: 2;
    COMPOSITION_FAILURE :: 3;
}

DXGI_FRAME_PRESENTATION_MODE_COMPOSED :: 0;
DXGI_FRAME_PRESENTATION_MODE_OVERLAY :: 1;
DXGI_FRAME_PRESENTATION_MODE_NONE :: 2;
DXGI_FRAME_PRESENTATION_MODE_COMPOSITION_FAILURE :: 3;

DXGI_FRAME_STATISTICS :: struct
{
    PresentCount : u32;
    PresentRefreshCount : u32;
    SyncRefreshCount : u32;
    SyncQPCTime : LARGE_INTEGER;
    SyncGPUTime : LARGE_INTEGER;
}

DXGI_FRAME_STATISTICS_MEDIA :: struct
{
    PresentCount : u32;
    PresentRefreshCount : u32;
    SyncRefreshCount : u32;
    SyncQPCTime : LARGE_INTEGER;
    SyncGPUTime : LARGE_INTEGER;
    CompositionMode : DXGI_FRAME_PRESENTATION_MODE;
    ApprovedPresentDuration : u32;
}

DXGI_GAMMA_CONTROL :: struct
{
    Scale : DXGI_RGB;
    Offset : DXGI_RGB;
    GammaCurve : [1025]DXGI_RGB;
}

DXGI_GAMMA_CONTROL_CAPABILITIES :: struct
{
    ScaleAndOffsetSupported : BOOL;
    MaxConvertedValue : float;
    MinConvertedValue : float;
    NumGammaControlPoints : u32;
    ControlPointPositions : [1025]float;
}

DXGI_GPU_PREFERENCE :: enum s32
{
    UNSPECIFIED :: 0;
    MINIMUM_POWER :: 1;
    HIGH_PERFORMANCE :: 2;
}

DXGI_GPU_PREFERENCE_UNSPECIFIED :: 0;
DXGI_GPU_PREFERENCE_MINIMUM_POWER :: 1;
DXGI_GPU_PREFERENCE_HIGH_PERFORMANCE :: 2;

DXGI_GRAPHICS_PREEMPTION_GRANULARITY :: enum s32
{
    DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY :: 0;
    DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY :: 1;
    DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY :: 2;
    DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY :: 3;
    DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY :: 4;
}

DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY :: 0;
DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY :: 1;
DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY :: 2;
DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY :: 3;
DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY :: 4;

DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAGS :: enum_flags u32
{
    FULLSCREEN :: 1;
    WINDOWED :: 2;
    CURSOR_STRETCHED :: 4;
}

DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_FULLSCREEN :: 1;
DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_WINDOWED :: 2;
DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_CURSOR_STRETCHED :: 4;

DXGI_HDR_METADATA_HDR10 :: struct
{
    RedPrimary : [2]u16;
    GreenPrimary : [2]u16;
    BluePrimary : [2]u16;
    WhitePoint : [2]u16;
    MaxMasteringLuminance : u32;
    MinMasteringLuminance : u32;
    MaxContentLightLevel : u16;
    MaxFrameAverageLightLevel : u16;
}

DXGI_HDR_METADATA_HDR10PLUS :: struct
{
    Data : [72]u8;
}

DXGI_HDR_METADATA_TYPE :: enum s32
{
    NONE :: 0;
    HDR10 :: 1;
    HDR10PLUS :: 2;
}

DXGI_HDR_METADATA_TYPE_NONE :: 0;
DXGI_HDR_METADATA_TYPE_HDR10 :: 1;
DXGI_HDR_METADATA_TYPE_HDR10PLUS :: 2;

DXGI_INFO_QUEUE_FILTER :: struct
{
    AllowList : DXGI_INFO_QUEUE_FILTER_DESC;
    DenyList : DXGI_INFO_QUEUE_FILTER_DESC;
}

DXGI_INFO_QUEUE_FILTER_DESC :: struct
{
    NumCategories : u32;
    pCategoryList : *DXGI_INFO_QUEUE_MESSAGE_CATEGORY;
    NumSeverities : u32;
    pSeverityList : *DXGI_INFO_QUEUE_MESSAGE_SEVERITY;
    NumIDs : u32;
    pIDList : *s32;
}

DXGI_INFO_QUEUE_MESSAGE :: struct
{
    Producer : GUID;
    Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY;
    Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY;
    ID : s32;
    pDescription : *u8; // Const
    DescriptionByteLength : u64;
}

DXGI_INFO_QUEUE_MESSAGE_CATEGORY :: enum s32
{
    UNKNOWN :: 0;
    MISCELLANEOUS :: 1;
    INITIALIZATION :: 2;
    CLEANUP :: 3;
    COMPILATION :: 4;
    STATE_CREATION :: 5;
    STATE_SETTING :: 6;
    STATE_GETTING :: 7;
    RESOURCE_MANIPULATION :: 8;
    EXECUTION :: 9;
    SHADER :: 10;
}

DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN :: 0;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS :: 1;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION :: 2;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP :: 3;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION :: 4;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION :: 5;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING :: 6;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING :: 7;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION :: 8;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION :: 9;
DXGI_INFO_QUEUE_MESSAGE_CATEGORY_SHADER :: 10;

DXGI_INFO_QUEUE_MESSAGE_SEVERITY :: enum s32
{
    CORRUPTION :: 0;
    ERROR :: 1;
    WARNING :: 2;
    INFO :: 3;
    MESSAGE :: 4;
}

DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION :: 0;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR :: 1;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING :: 2;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO :: 3;
DXGI_INFO_QUEUE_MESSAGE_SEVERITY_MESSAGE :: 4;

DXGI_JPEG_AC_HUFFMAN_TABLE :: struct
{
    CodeCounts : [16]u8;
    CodeValues : [162]u8;
}

DXGI_JPEG_DC_HUFFMAN_TABLE :: struct
{
    CodeCounts : [12]u8;
    CodeValues : [12]u8;
}

DXGI_JPEG_QUANTIZATION_TABLE :: struct
{
    Elements : [64]u8;
}

DXGI_MAPPED_RECT :: struct
{
    Pitch : s32;
    pBits : *u8;
}

DXGI_MATRIX_3X2_F :: struct
{
    _11 : float;
    _12 : float;
    _21 : float;
    _22 : float;
    _31 : float;
    _32 : float;
}

DXGI_MEMORY_SEGMENT_GROUP :: enum s32
{
    LOCAL :: 0;
    NON_LOCAL :: 1;
}

DXGI_MEMORY_SEGMENT_GROUP_LOCAL :: 0;
DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL :: 1;

DXGI_MODE_DESC :: struct
{
    Width : u32;
    Height : u32;
    RefreshRate : DXGI_RATIONAL;
    Format : DXGI_FORMAT;
    ScanlineOrdering : DXGI_MODE_SCANLINE_ORDER;
    Scaling : DXGI_MODE_SCALING;
}

DXGI_MODE_DESC1 :: struct
{
    Width : u32;
    Height : u32;
    RefreshRate : DXGI_RATIONAL;
    Format : DXGI_FORMAT;
    ScanlineOrdering : DXGI_MODE_SCANLINE_ORDER;
    Scaling : DXGI_MODE_SCALING;
    Stereo : BOOL;
}

DXGI_MODE_ROTATION :: enum s32
{
    UNSPECIFIED :: 0;
    IDENTITY :: 1;
    ROTATE90 :: 2;
    ROTATE180 :: 3;
    ROTATE270 :: 4;
}

DXGI_MODE_ROTATION_UNSPECIFIED :: 0;
DXGI_MODE_ROTATION_IDENTITY :: 1;
DXGI_MODE_ROTATION_ROTATE90 :: 2;
DXGI_MODE_ROTATION_ROTATE180 :: 3;
DXGI_MODE_ROTATION_ROTATE270 :: 4;

DXGI_MODE_SCALING :: enum s32
{
    UNSPECIFIED :: 0;
    CENTERED :: 1;
    STRETCHED :: 2;
}

DXGI_MODE_SCALING_UNSPECIFIED :: 0;
DXGI_MODE_SCALING_CENTERED :: 1;
DXGI_MODE_SCALING_STRETCHED :: 2;

DXGI_MODE_SCANLINE_ORDER :: enum s32
{
    UNSPECIFIED :: 0;
    PROGRESSIVE :: 1;
    UPPER_FIELD_FIRST :: 2;
    LOWER_FIELD_FIRST :: 3;
}

DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED :: 0;
DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE :: 1;
DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST :: 2;
DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST :: 3;

DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS :: enum s32
{
    NOMINAL_RANGE :: 1;
    BT709 :: 2;
    xvYCC :: 4;
}

DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE :: 1;
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709 :: 2;
DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC :: 4;

DXGI_Message_Id :: enum s32
{
    DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_InvalidOutputWindow :: 0;
    DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferWidthInferred :: 1;
    DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferHeightInferred :: 2;
    DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_NoScanoutFlagChanged :: 3;
    DXGI_MSG_IDXGISwapChain_Creation_MaxBufferCountExceeded :: 4;
    DXGI_MSG_IDXGISwapChain_Creation_TooFewBuffers :: 5;
    DXGI_MSG_IDXGISwapChain_Creation_NoOutputWindow :: 6;
    DXGI_MSG_IDXGISwapChain_Destruction_OtherMethodsCalled :: 7;
    DXGI_MSG_IDXGISwapChain_GetDesc_pDescIsNULL :: 8;
    DXGI_MSG_IDXGISwapChain_GetBuffer_ppSurfaceIsNULL :: 9;
    DXGI_MSG_IDXGISwapChain_GetBuffer_NoAllocatedBuffers :: 10;
    DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferMustBeZero :: 11;
    DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferOOB :: 12;
    DXGI_MSG_IDXGISwapChain_GetContainingOutput_ppOutputIsNULL :: 13;
    DXGI_MSG_IDXGISwapChain_Present_SyncIntervalOOB :: 14;
    DXGI_MSG_IDXGISwapChain_Present_InvalidNonPreRotatedFlag :: 15;
    DXGI_MSG_IDXGISwapChain_Present_NoAllocatedBuffers :: 16;
    DXGI_MSG_IDXGISwapChain_Present_GetDXGIAdapterFailed :: 17;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOB :: 18;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_UnreleasedReferences :: 19;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidSwapChainFlag :: 20;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidNonPreRotatedFlag :: 21;
    DXGI_MSG_IDXGISwapChain_ResizeTarget_RefreshRateDivideByZero :: 22;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_InvalidTarget :: 23;
    DXGI_MSG_IDXGISwapChain_GetFrameStatistics_pStatsIsNULL :: 24;
    DXGI_MSG_IDXGISwapChain_GetLastPresentCount_pLastPresentCountIsNULL :: 25;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_RemoteNotSupported :: 26;
    DXGI_MSG_IDXGIOutput_TakeOwnership_FailedToAcquireFullscreenMutex :: 27;
    DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ppAdapterInterfaceIsNULL :: 28;
    DXGI_MSG_IDXGIFactory_EnumAdapters_ppAdapterInterfaceIsNULL :: 29;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ppSwapChainIsNULL :: 30;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_pDescIsNULL :: 31;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_UnknownSwapEffect :: 32;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFlags :: 33;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedFlagAndWindowed :: 34;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_NullDeviceInterface :: 35;
    DXGI_MSG_IDXGIFactory_GetWindowAssociation_phWndIsNULL :: 36;
    DXGI_MSG_IDXGIFactory_MakeWindowAssociation_InvalidFlags :: 37;
    DXGI_MSG_IDXGISurface_Map_InvalidSurface :: 38;
    DXGI_MSG_IDXGISurface_Map_FlagsSetToZero :: 39;
    DXGI_MSG_IDXGISurface_Map_DiscardAndReadFlagSet :: 40;
    DXGI_MSG_IDXGISurface_Map_DiscardButNotWriteFlagSet :: 41;
    DXGI_MSG_IDXGISurface_Map_NoCPUAccess :: 42;
    DXGI_MSG_IDXGISurface_Map_ReadFlagSetButCPUAccessIsDynamic :: 43;
    DXGI_MSG_IDXGISurface_Map_DiscardFlagSetButCPUAccessIsNotDynamic :: 44;
    DXGI_MSG_IDXGIOutput_GetDisplayModeList_pNumModesIsNULL :: 45;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasInvalidWidthOrHeight :: 46;
    DXGI_MSG_IDXGIOutput_GetCammaControlCapabilities_NoOwnerDevice :: 47;
    DXGI_MSG_IDXGIOutput_TakeOwnership_pDeviceIsNULL :: 48;
    DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_NoOwnerDevice :: 49;
    DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_pDestinationIsNULL :: 50;
    DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_MapOfDestinationFailed :: 51;
    DXGI_MSG_IDXGIOutput_GetFrameStatistics_NoOwnerDevice :: 52;
    DXGI_MSG_IDXGIOutput_GetFrameStatistics_pStatsIsNULL :: 53;
    DXGI_MSG_IDXGIOutput_SetGammaControl_NoOwnerDevice :: 54;
    DXGI_MSG_IDXGIOutput_GetGammaControl_NoOwnerDevice :: 55;
    DXGI_MSG_IDXGIOutput_GetGammaControl_NoGammaControls :: 56;
    DXGI_MSG_IDXGIOutput_SetDisplaySurface_IDXGIResourceNotSupportedBypPrimary :: 57;
    DXGI_MSG_IDXGIOutput_SetDisplaySurface_pPrimaryIsInvalid :: 58;
    DXGI_MSG_IDXGIOutput_SetDisplaySurface_NoOwnerDevice :: 59;
    DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteDeviceNotSupported :: 60;
    DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteDeviceNotSupported :: 61;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteDeviceNotSupported :: 62;
    DXGI_MSG_IDXGIDevice_CreateSurface_InvalidParametersWithpSharedResource :: 63;
    DXGI_MSG_IDXGIObject_GetPrivateData_puiDataSizeIsNULL :: 64;
    DXGI_MSG_IDXGISwapChain_Creation_InvalidOutputWindow :: 65;
    DXGI_MSG_IDXGISwapChain_Release_SwapChainIsFullscreen :: 66;
    DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_InvalidTargetSurfaceFormat :: 67;
    DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ModuleIsNULL :: 68;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_IDXGIDeviceNotSupportedBypConcernedDevice :: 69;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_pModeToMatchOrpClosestMatchIsNULL :: 70;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasRefreshRateDenominatorZero :: 71;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_UnknownFormatIsInvalidForConfiguration :: 72;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScanlineOrdering :: 73;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScaling :: 74;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeFormatAndDeviceCombination :: 75;
    DXGI_MSG_IDXGIFactory_Creation_CalledFromDllMain :: 76;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_OutputNotOwnedBySwapChainDevice :: 77;
    DXGI_MSG_IDXGISwapChain_Creation_InvalidWindowStyle :: 78;
    DXGI_MSG_IDXGISwapChain_GetFrameStatistics_UnsupportedStatistics :: 79;
    DXGI_MSG_IDXGISwapChain_GetContainingOutput_SwapchainAdapterDoesNotControlOutput :: 80;
    DXGI_MSG_IDXGIOutput_SetOrGetGammaControl_pArrayIsNULL :: 81;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_FullscreenInvalidForChildWindows :: 82;
    DXGI_MSG_IDXGIFactory_Release_CalledFromDllMain :: 83;
    DXGI_MSG_IDXGISwapChain_Present_UnreleasedHDC :: 84;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_NonPreRotatedAndGDICompatibleFlags :: 85;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedAndGDICompatibleFlags :: 86;
    DXGI_MSG_IDXGISurface1_GetDC_pHdcIsNULL :: 87;
    DXGI_MSG_IDXGISurface1_GetDC_SurfaceNotTexture2D :: 88;
    DXGI_MSG_IDXGISurface1_GetDC_GDICompatibleFlagNotSet :: 89;
    DXGI_MSG_IDXGISurface1_GetDC_UnreleasedHDC :: 90;
    DXGI_MSG_IDXGISurface_Map_NoCPUAccess2 :: 91;
    DXGI_MSG_IDXGISurface1_ReleaseDC_GetDCNotCalled :: 92;
    DXGI_MSG_IDXGISurface1_ReleaseDC_InvalidRectangleDimensions :: 93;
    DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteOutputNotSupported :: 94;
    DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteOutputNotSupported :: 95;
    DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteOutputNotSupported :: 96;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_pDeviceHasMismatchedDXGIFactory :: 97;
    DXGI_MSG_IDXGISwapChain_Present_NonOptimalFSConfiguration :: 98;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSequentialNotSupportedOnD3D10 :: 99;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_BufferCountOOBForFlipSequential :: 100;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFormatForFlipSequential :: 101;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_MultiSamplingNotSupportedForFlipSequential :: 102;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOBForFlipSequential :: 103;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidFormatForFlipSequential :: 104;
    DXGI_MSG_IDXGISwapChain_Present_PartialPresentationBeforeStandardPresentation :: 105;
    DXGI_MSG_IDXGISwapChain_Present_FullscreenPartialPresentIsInvalid :: 106;
    DXGI_MSG_IDXGISwapChain_Present_InvalidPresentTestOrDoNotSequenceFlag :: 107;
    DXGI_MSG_IDXGISwapChain_Present_ScrollInfoWithNoDirtyRectsSpecified :: 108;
    DXGI_MSG_IDXGISwapChain_Present_EmptyScrollRect :: 109;
    DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBounds :: 110;
    DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBoundsWithOffset :: 111;
    DXGI_MSG_IDXGISwapChain_Present_EmptyDirtyRect :: 112;
    DXGI_MSG_IDXGISwapChain_Present_DirtyRectOutOfBackbufferBounds :: 113;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_UnsupportedBufferUsageFlags :: 114;
    DXGI_MSG_IDXGISwapChain_Present_DoNotSequenceFlagSetButPreviousBufferIsUndefined :: 115;
    DXGI_MSG_IDXGISwapChain_Present_UnsupportedFlags :: 116;
    DXGI_MSG_IDXGISwapChain_Present_FlipModelChainMustResizeOrCreateOnFSTransition :: 117;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_pRestrictToOutputFromOtherIDXGIFactory :: 118;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictOutputNotSupportedOnAdapter :: 119;
    DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagSetButInvalidpRestrictToOutput :: 120;
    DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagdWithFullscreen :: 121;
    DXGI_MSG_IDXGISwapChain_Present_RestrictOutputFlagWithStaleSwapChain :: 122;
    DXGI_MSG_IDXGISwapChain_Present_OtherFlagsCausingInvalidPresentTestFlag :: 123;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_UnavailableInSession0 :: 124;
    DXGI_MSG_IDXGIFactory_MakeWindowAssociation_UnavailableInSession0 :: 125;
    DXGI_MSG_IDXGIFactory_GetWindowAssociation_UnavailableInSession0 :: 126;
    DXGI_MSG_IDXGIAdapter_EnumOutputs_UnavailableInSession0 :: 127;
    DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_StereoDisabled :: 128;
    DXGI_MSG_IDXGIFactory2_UnregisterStatus_CookieNotFound :: 129;
    DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFSOrOverlay :: 130;
    DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFlipSequential :: 131;
    DXGI_MSG_IDXGISwapChain_Present_ProtectedContentWithRDPDriver :: 132;
    DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithDWMOffOrInvalidDisplayAffinity :: 133;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_WidthOrHeightIsZero :: 134;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_OnlyFlipSequentialSupported :: 135;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnAdapter :: 136;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnWindows7 :: 137;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSTransitionWithCompositionSwapChain :: 138;
    DXGI_MSG_IDXGISwapChain_ResizeTarget_InvalidWithCompositionSwapChain :: 139;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_WidthOrHeightIsZero :: 140;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneIsFlipModelOnly :: 141;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingUnrecognized :: 142;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyFullscreenUnsupported :: 143;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyUnsupported :: 144;
    DXGI_MSG_IDXGISwapChain_Present_RestartIsFullscreenOnly :: 145;
    DXGI_MSG_IDXGISwapChain_Present_ProtectedWindowlessPresentationRequiresDisplayOnly :: 146;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_DisplayOnlyUnsupported :: 147;
    DXGI_MSG_IDXGISwapChain1_SetBackgroundColor_OutOfRange :: 148;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyFullscreenUnsupported :: 149;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyUnsupported :: 150;
    DXGI_MSG_IDXGISwapchain_Present_ScrollUnsupported :: 151;
    DXGI_MSG_IDXGISwapChain1_SetRotation_UnsupportedOS :: 152;
    DXGI_MSG_IDXGISwapChain1_GetRotation_UnsupportedOS :: 153;
    DXGI_MSG_IDXGISwapchain_Present_FullscreenRotation :: 154;
    DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithMSAABuffers :: 155;
    DXGI_MSG_IDXGISwapChain1_SetRotation_FlipSequentialRequired :: 156;
    DXGI_MSG_IDXGISwapChain1_SetRotation_InvalidRotation :: 157;
    DXGI_MSG_IDXGISwapChain1_GetRotation_FlipSequentialRequired :: 158;
    DXGI_MSG_IDXGISwapChain_GetHwnd_WrongType :: 159;
    DXGI_MSG_IDXGISwapChain_GetCompositionSurface_WrongType :: 160;
    DXGI_MSG_IDXGISwapChain_GetCoreWindow_WrongType :: 161;
    DXGI_MSG_IDXGISwapChain_GetFullscreenDesc_NonHwnd :: 162;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_CoreWindow :: 163;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_UnsupportedOnWindows7 :: 164;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsNULL :: 165;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_FSUnsupportedForModernApps :: 166;
    DXGI_MSG_IDXGIFactory_MakeWindowAssociation_ModernApp :: 167;
    DXGI_MSG_IDXGISwapChain_ResizeTarget_ModernApp :: 168;
    DXGI_MSG_IDXGISwapChain_ResizeTarget_pNewTargetParametersIsNULL :: 169;
    DXGI_MSG_IDXGIOutput_SetDisplaySurface_ModernApp :: 170;
    DXGI_MSG_IDXGIOutput_TakeOwnership_ModernApp :: 171;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsInvalid :: 172;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCompositionSurface_InvalidHandle :: 173;
    DXGI_MSG_IDXGISurface1_GetDC_ModernApp :: 174;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneRequiresWindows8OrNewer :: 175;
    DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoAndPreferRight :: 176;
    DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithDoNotSequence :: 177;
    DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithoutStereo :: 178;
    DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoUnsupported :: 179;
    DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_ArraySizeMismatch :: 180;
    DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithSwapEffectDiscard :: 181;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaUnrecognized :: 182;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsWindowlessOnly :: 183;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsFlipModelOnly :: 184;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictToOutputAdapterMismatch :: 185;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyOnLegacy :: 186;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyOnLegacy :: 187;
    DXGI_MSG_IDXGIResource1_CreateSubresourceSurface_InvalidIndex :: 188;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidScaling :: 189;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForCoreWindow_InvalidSwapEffect :: 190;
    DXGI_MSG_IDXGIResource1_CreateSharedHandle_UnsupportedOS :: 191;
    DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusWindow_UnsupportedOS :: 192;
    DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusEvent_UnsupportedOS :: 193;
    DXGI_MSG_IDXGIOutput1_DuplicateOutput_UnsupportedOS :: 194;
    DXGI_MSG_IDXGIDisplayControl_IsStereoEnabled_UnsupportedOS :: 195;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidAlphaMode :: 196;
    DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidResource :: 197;
    DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidLUID :: 198;
    DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_UnsupportedOS :: 199;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_2DOnly :: 200;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_StagingOnly :: 201;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NeedCPUAccessWrite :: 202;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NoShared :: 203;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_OnlyMipLevels1 :: 204;
    DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_MappedOrOfferedResource :: 205;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSUnsupportedForModernApps :: 206;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_FailedToGoFSButNonPreRotated :: 207;
    DXGI_MSG_IDXGIFactory_CreateSwapChainOrRegisterOcclusionStatus_BlitModelUsedWhileRegisteredForOcclusionStatusEvents :: 208;
    DXGI_MSG_IDXGISwapChain_Present_BlitModelUsedWhileRegisteredForOcclusionStatusEvents :: 209;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreFlipModelOnly :: 210;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreNotFullscreen :: 211;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_Waitable :: 212;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveWaitableFlag :: 213;
    DXGI_MSG_IDXGISwapChain_GetFrameLatencyWaitableObject_OnlyWaitable :: 214;
    DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_OnlyWaitable :: 215;
    DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_pMaxLatencyIsNULL :: 216;
    DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_OnlyWaitable :: 217;
    DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_MaxLatencyIsOutOfBounds :: 218;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ForegroundIsCoreWindowOnly :: 219;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_ForegroundUnsupportedOnAdapter :: 220;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidScaling :: 221;
    DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidAlphaMode :: 222;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveForegroundFlag :: 223;
    DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixPointerCannotBeNull :: 224;
    DXGI_MSG_IDXGISwapChain_SetMatrixTransform_RequiresCompositionSwapChain :: 225;
    DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeFinite :: 226;
    DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeTranslateAndOrScale :: 227;
    DXGI_MSG_IDXGISwapChain_GetMatrixTransform_MatrixPointerCannotBeNull :: 228;
    DXGI_MSG_IDXGISwapChain_GetMatrixTransform_RequiresCompositionSwapChain :: 229;
    DXGI_MSG_DXGIGetDebugInterface1_NULL_ppDebug :: 230;
    DXGI_MSG_DXGIGetDebugInterface1_InvalidFlags :: 231;
    DXGI_MSG_IDXGISwapChain_Present_Decode :: 232;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_Decode :: 233;
    DXGI_MSG_IDXGISwapChain_SetSourceSize_FlipModel :: 234;
    DXGI_MSG_IDXGISwapChain_SetSourceSize_Decode :: 235;
    DXGI_MSG_IDXGISwapChain_SetSourceSize_WidthHeight :: 236;
    DXGI_MSG_IDXGISwapChain_GetSourceSize_NullPointers :: 237;
    DXGI_MSG_IDXGISwapChain_GetSourceSize_Decode :: 238;
    DXGI_MSG_IDXGIDecodeSwapChain_SetColorSpace_InvalidFlags :: 239;
    DXGI_MSG_IDXGIDecodeSwapChain_SetSourceRect_InvalidRect :: 240;
    DXGI_MSG_IDXGIDecodeSwapChain_SetTargetRect_InvalidRect :: 241;
    DXGI_MSG_IDXGIDecodeSwapChain_SetDestSize_InvalidSize :: 242;
    DXGI_MSG_IDXGIDecodeSwapChain_GetSourceRect_InvalidPointer :: 243;
    DXGI_MSG_IDXGIDecodeSwapChain_GetTargetRect_InvalidPointer :: 244;
    DXGI_MSG_IDXGIDecodeSwapChain_GetDestSize_InvalidPointer :: 245;
    DXGI_MSG_IDXGISwapChain_PresentBuffer_YUV :: 246;
    DXGI_MSG_IDXGISwapChain_SetSourceSize_YUV :: 247;
    DXGI_MSG_IDXGISwapChain_GetSourceSize_YUV :: 248;
    DXGI_MSG_IDXGISwapChain_SetMatrixTransform_YUV :: 249;
    DXGI_MSG_IDXGISwapChain_GetMatrixTransform_YUV :: 250;
    DXGI_MSG_IDXGISwapChain_Present_PartialPresentation_YUV :: 251;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveFlag_YUV :: 252;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_Alignment_YUV :: 253;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_ShaderInputUnsupported_YUV :: 254;
    DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_NullPointers :: 255;
    DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_IDXGIDeviceNotSupportedBypConcernedDevice :: 256;
    DXGI_MSG_IDXGIAdapter_EnumOutputs2_InvalidEnumOutputs2Flag :: 257;
    DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_FSUnsupportedForFlipDiscard :: 258;
    DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_NullPointers :: 259;
    DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_IDXGIDeviceNotSupportedBypConcernedDevice :: 260;
    DXGI_MSG_IDXGISwapChain3_CheckColorSpaceSupport_NullPointers :: 261;
    DXGI_MSG_IDXGISwapChain3_SetColorSpace1_InvalidColorSpace :: 262;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidHwProtect :: 263;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_HwProtectUnsupported :: 264;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtect :: 265;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_HwProtectUnsupported :: 266;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers1_D3D12Only :: 267;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers1_FlipModel :: 268;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers1_NodeMaskAndQueueRequired :: 269;
    DXGI_MSG_IDXGISwapChain_CreateSwapChain_InvalidHwProtectGdiFlag :: 270;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtectGdiFlag :: 271;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_10BitFormatNotSupported :: 272;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSwapEffectRequired :: 273;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidDevice :: 274;
    DXGI_MSG_IDXGIOutput_TakeOwnership_Unsupported :: 275;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidQueue :: 276;
    DXGI_MSG_IDXGISwapChain3_ResizeBuffers1_InvalidQueue :: 277;
    DXGI_MSG_IDXGIFactory_CreateSwapChainForHwnd_InvalidScaling :: 278;
    DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidSize :: 279;
    DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidPointer :: 280;
    DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidType :: 281;
    DXGI_MSG_IDXGISwapChain_Present_FullscreenAllowTearingIsInvalid :: 282;
    DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresPresentIntervalZero :: 283;
    DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresCreationFlag :: 284;
    DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveAllowTearingFlag :: 285;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_AllowTearingFlagIsFlipModelOnly :: 286;
    DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidFeature :: 287;
    DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidSize :: 288;
    DXGI_MSG_IDXGIOutput6_CheckHardwareCompositionSupport_NullPointer :: 289;
    DXGI_MSG_IDXGISwapChain_SetFullscreenState_PerMonitorDpiShimApplied :: 290;
    DXGI_MSG_IDXGIOutput_DuplicateOutput_PerMonitorDpiShimApplied :: 291;
    DXGI_MSG_IDXGIOutput_DuplicateOutput1_PerMonitorDpiRequired :: 292;
    DXGI_MSG_IDXGIFactory7_UnregisterAdaptersChangedEvent_CookieNotFound :: 293;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_LegacyBltModelSwapEffect :: 294;
    DXGI_MSG_IDXGISwapChain4_SetHDRMetaData_MetadataUnchanged :: 295;
    DXGI_MSG_IDXGISwapChain_Present_11On12_Released_Resource :: 296;
    DXGI_MSG_IDXGIFactory_CreateSwapChain_MultipleSwapchainRefToSurface_DeferredDtr :: 297;
    DXGI_MSG_IDXGIFactory_MakeWindowAssociation_NoOpBehavior :: 298;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow :: 1000;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_DISCARD_BufferCount :: 1001;
    DXGI_MSG_Phone_IDXGISwapChain_SetFullscreenState_NotAvailable :: 1002;
    DXGI_MSG_Phone_IDXGISwapChain_ResizeBuffers_NotAvailable :: 1003;
    DXGI_MSG_Phone_IDXGISwapChain_ResizeTarget_NotAvailable :: 1004;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerIndex :: 1005;
    DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleLayerIndex :: 1006;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerFlag :: 1007;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidRotation :: 1008;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidBlend :: 1009;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidResource :: 1010;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidMultiPlaneOverlayResource :: 1011;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForPrimary :: 1012;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForOverlay :: 1013;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSubResourceIndex :: 1014;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSourceRect :: 1015;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidDestinationRect :: 1016;
    DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleResource :: 1017;
    DXGI_MSG_Phone_IDXGISwapChain_Present_NotSharedResource :: 1018;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidFlag :: 1019;
    DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidInterval :: 1020;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_MSAA_NotSupported :: 1021;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_ScalingAspectRatioStretch_Supported_ModernApp :: 1022;
    DXGI_MSG_Phone_IDXGISwapChain_GetFrameStatistics_NotAvailable_ModernApp :: 1023;
    DXGI_MSG_Phone_IDXGISwapChain_Present_ReplaceInterval0With1 :: 1024;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FailedRegisterWithCompositor :: 1025;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow_AtRendering :: 1026;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_SEQUENTIAL_BufferCount :: 1027;
    DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_Modern_CoreWindow_Only :: 1028;
    DXGI_MSG_Phone_IDXGISwapChain_Present1_RequiresOverlays :: 1029;
    DXGI_MSG_Phone_IDXGISwapChain_SetBackgroundColor_FlipSequentialRequired :: 1030;
    DXGI_MSG_Phone_IDXGISwapChain_GetBackgroundColor_FlipSequentialRequired :: 1031;
}

DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_InvalidOutputWindow :: 0;
DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferWidthInferred :: 1;
DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferHeightInferred :: 2;
DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_NoScanoutFlagChanged :: 3;
DXGI_MSG_IDXGISwapChain_Creation_MaxBufferCountExceeded :: 4;
DXGI_MSG_IDXGISwapChain_Creation_TooFewBuffers :: 5;
DXGI_MSG_IDXGISwapChain_Creation_NoOutputWindow :: 6;
DXGI_MSG_IDXGISwapChain_Destruction_OtherMethodsCalled :: 7;
DXGI_MSG_IDXGISwapChain_GetDesc_pDescIsNULL :: 8;
DXGI_MSG_IDXGISwapChain_GetBuffer_ppSurfaceIsNULL :: 9;
DXGI_MSG_IDXGISwapChain_GetBuffer_NoAllocatedBuffers :: 10;
DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferMustBeZero :: 11;
DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferOOB :: 12;
DXGI_MSG_IDXGISwapChain_GetContainingOutput_ppOutputIsNULL :: 13;
DXGI_MSG_IDXGISwapChain_Present_SyncIntervalOOB :: 14;
DXGI_MSG_IDXGISwapChain_Present_InvalidNonPreRotatedFlag :: 15;
DXGI_MSG_IDXGISwapChain_Present_NoAllocatedBuffers :: 16;
DXGI_MSG_IDXGISwapChain_Present_GetDXGIAdapterFailed :: 17;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOB :: 18;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_UnreleasedReferences :: 19;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidSwapChainFlag :: 20;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidNonPreRotatedFlag :: 21;
DXGI_MSG_IDXGISwapChain_ResizeTarget_RefreshRateDivideByZero :: 22;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_InvalidTarget :: 23;
DXGI_MSG_IDXGISwapChain_GetFrameStatistics_pStatsIsNULL :: 24;
DXGI_MSG_IDXGISwapChain_GetLastPresentCount_pLastPresentCountIsNULL :: 25;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_RemoteNotSupported :: 26;
DXGI_MSG_IDXGIOutput_TakeOwnership_FailedToAcquireFullscreenMutex :: 27;
DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ppAdapterInterfaceIsNULL :: 28;
DXGI_MSG_IDXGIFactory_EnumAdapters_ppAdapterInterfaceIsNULL :: 29;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ppSwapChainIsNULL :: 30;
DXGI_MSG_IDXGIFactory_CreateSwapChain_pDescIsNULL :: 31;
DXGI_MSG_IDXGIFactory_CreateSwapChain_UnknownSwapEffect :: 32;
DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFlags :: 33;
DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedFlagAndWindowed :: 34;
DXGI_MSG_IDXGIFactory_CreateSwapChain_NullDeviceInterface :: 35;
DXGI_MSG_IDXGIFactory_GetWindowAssociation_phWndIsNULL :: 36;
DXGI_MSG_IDXGIFactory_MakeWindowAssociation_InvalidFlags :: 37;
DXGI_MSG_IDXGISurface_Map_InvalidSurface :: 38;
DXGI_MSG_IDXGISurface_Map_FlagsSetToZero :: 39;
DXGI_MSG_IDXGISurface_Map_DiscardAndReadFlagSet :: 40;
DXGI_MSG_IDXGISurface_Map_DiscardButNotWriteFlagSet :: 41;
DXGI_MSG_IDXGISurface_Map_NoCPUAccess :: 42;
DXGI_MSG_IDXGISurface_Map_ReadFlagSetButCPUAccessIsDynamic :: 43;
DXGI_MSG_IDXGISurface_Map_DiscardFlagSetButCPUAccessIsNotDynamic :: 44;
DXGI_MSG_IDXGIOutput_GetDisplayModeList_pNumModesIsNULL :: 45;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasInvalidWidthOrHeight :: 46;
DXGI_MSG_IDXGIOutput_GetCammaControlCapabilities_NoOwnerDevice :: 47;
DXGI_MSG_IDXGIOutput_TakeOwnership_pDeviceIsNULL :: 48;
DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_NoOwnerDevice :: 49;
DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_pDestinationIsNULL :: 50;
DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_MapOfDestinationFailed :: 51;
DXGI_MSG_IDXGIOutput_GetFrameStatistics_NoOwnerDevice :: 52;
DXGI_MSG_IDXGIOutput_GetFrameStatistics_pStatsIsNULL :: 53;
DXGI_MSG_IDXGIOutput_SetGammaControl_NoOwnerDevice :: 54;
DXGI_MSG_IDXGIOutput_GetGammaControl_NoOwnerDevice :: 55;
DXGI_MSG_IDXGIOutput_GetGammaControl_NoGammaControls :: 56;
DXGI_MSG_IDXGIOutput_SetDisplaySurface_IDXGIResourceNotSupportedBypPrimary :: 57;
DXGI_MSG_IDXGIOutput_SetDisplaySurface_pPrimaryIsInvalid :: 58;
DXGI_MSG_IDXGIOutput_SetDisplaySurface_NoOwnerDevice :: 59;
DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteDeviceNotSupported :: 60;
DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteDeviceNotSupported :: 61;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteDeviceNotSupported :: 62;
DXGI_MSG_IDXGIDevice_CreateSurface_InvalidParametersWithpSharedResource :: 63;
DXGI_MSG_IDXGIObject_GetPrivateData_puiDataSizeIsNULL :: 64;
DXGI_MSG_IDXGISwapChain_Creation_InvalidOutputWindow :: 65;
DXGI_MSG_IDXGISwapChain_Release_SwapChainIsFullscreen :: 66;
DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_InvalidTargetSurfaceFormat :: 67;
DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ModuleIsNULL :: 68;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_IDXGIDeviceNotSupportedBypConcernedDevice :: 69;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_pModeToMatchOrpClosestMatchIsNULL :: 70;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasRefreshRateDenominatorZero :: 71;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_UnknownFormatIsInvalidForConfiguration :: 72;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScanlineOrdering :: 73;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScaling :: 74;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeFormatAndDeviceCombination :: 75;
DXGI_MSG_IDXGIFactory_Creation_CalledFromDllMain :: 76;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_OutputNotOwnedBySwapChainDevice :: 77;
DXGI_MSG_IDXGISwapChain_Creation_InvalidWindowStyle :: 78;
DXGI_MSG_IDXGISwapChain_GetFrameStatistics_UnsupportedStatistics :: 79;
DXGI_MSG_IDXGISwapChain_GetContainingOutput_SwapchainAdapterDoesNotControlOutput :: 80;
DXGI_MSG_IDXGIOutput_SetOrGetGammaControl_pArrayIsNULL :: 81;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_FullscreenInvalidForChildWindows :: 82;
DXGI_MSG_IDXGIFactory_Release_CalledFromDllMain :: 83;
DXGI_MSG_IDXGISwapChain_Present_UnreleasedHDC :: 84;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_NonPreRotatedAndGDICompatibleFlags :: 85;
DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedAndGDICompatibleFlags :: 86;
DXGI_MSG_IDXGISurface1_GetDC_pHdcIsNULL :: 87;
DXGI_MSG_IDXGISurface1_GetDC_SurfaceNotTexture2D :: 88;
DXGI_MSG_IDXGISurface1_GetDC_GDICompatibleFlagNotSet :: 89;
DXGI_MSG_IDXGISurface1_GetDC_UnreleasedHDC :: 90;
DXGI_MSG_IDXGISurface_Map_NoCPUAccess2 :: 91;
DXGI_MSG_IDXGISurface1_ReleaseDC_GetDCNotCalled :: 92;
DXGI_MSG_IDXGISurface1_ReleaseDC_InvalidRectangleDimensions :: 93;
DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteOutputNotSupported :: 94;
DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteOutputNotSupported :: 95;
DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteOutputNotSupported :: 96;
DXGI_MSG_IDXGIFactory_CreateSwapChain_pDeviceHasMismatchedDXGIFactory :: 97;
DXGI_MSG_IDXGISwapChain_Present_NonOptimalFSConfiguration :: 98;
DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSequentialNotSupportedOnD3D10 :: 99;
DXGI_MSG_IDXGIFactory_CreateSwapChain_BufferCountOOBForFlipSequential :: 100;
DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFormatForFlipSequential :: 101;
DXGI_MSG_IDXGIFactory_CreateSwapChain_MultiSamplingNotSupportedForFlipSequential :: 102;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOBForFlipSequential :: 103;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidFormatForFlipSequential :: 104;
DXGI_MSG_IDXGISwapChain_Present_PartialPresentationBeforeStandardPresentation :: 105;
DXGI_MSG_IDXGISwapChain_Present_FullscreenPartialPresentIsInvalid :: 106;
DXGI_MSG_IDXGISwapChain_Present_InvalidPresentTestOrDoNotSequenceFlag :: 107;
DXGI_MSG_IDXGISwapChain_Present_ScrollInfoWithNoDirtyRectsSpecified :: 108;
DXGI_MSG_IDXGISwapChain_Present_EmptyScrollRect :: 109;
DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBounds :: 110;
DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBoundsWithOffset :: 111;
DXGI_MSG_IDXGISwapChain_Present_EmptyDirtyRect :: 112;
DXGI_MSG_IDXGISwapChain_Present_DirtyRectOutOfBackbufferBounds :: 113;
DXGI_MSG_IDXGIFactory_CreateSwapChain_UnsupportedBufferUsageFlags :: 114;
DXGI_MSG_IDXGISwapChain_Present_DoNotSequenceFlagSetButPreviousBufferIsUndefined :: 115;
DXGI_MSG_IDXGISwapChain_Present_UnsupportedFlags :: 116;
DXGI_MSG_IDXGISwapChain_Present_FlipModelChainMustResizeOrCreateOnFSTransition :: 117;
DXGI_MSG_IDXGIFactory_CreateSwapChain_pRestrictToOutputFromOtherIDXGIFactory :: 118;
DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictOutputNotSupportedOnAdapter :: 119;
DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagSetButInvalidpRestrictToOutput :: 120;
DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagdWithFullscreen :: 121;
DXGI_MSG_IDXGISwapChain_Present_RestrictOutputFlagWithStaleSwapChain :: 122;
DXGI_MSG_IDXGISwapChain_Present_OtherFlagsCausingInvalidPresentTestFlag :: 123;
DXGI_MSG_IDXGIFactory_CreateSwapChain_UnavailableInSession0 :: 124;
DXGI_MSG_IDXGIFactory_MakeWindowAssociation_UnavailableInSession0 :: 125;
DXGI_MSG_IDXGIFactory_GetWindowAssociation_UnavailableInSession0 :: 126;
DXGI_MSG_IDXGIAdapter_EnumOutputs_UnavailableInSession0 :: 127;
DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_StereoDisabled :: 128;
DXGI_MSG_IDXGIFactory2_UnregisterStatus_CookieNotFound :: 129;
DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFSOrOverlay :: 130;
DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFlipSequential :: 131;
DXGI_MSG_IDXGISwapChain_Present_ProtectedContentWithRDPDriver :: 132;
DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithDWMOffOrInvalidDisplayAffinity :: 133;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_WidthOrHeightIsZero :: 134;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_OnlyFlipSequentialSupported :: 135;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnAdapter :: 136;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnWindows7 :: 137;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSTransitionWithCompositionSwapChain :: 138;
DXGI_MSG_IDXGISwapChain_ResizeTarget_InvalidWithCompositionSwapChain :: 139;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_WidthOrHeightIsZero :: 140;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneIsFlipModelOnly :: 141;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingUnrecognized :: 142;
DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyFullscreenUnsupported :: 143;
DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyUnsupported :: 144;
DXGI_MSG_IDXGISwapChain_Present_RestartIsFullscreenOnly :: 145;
DXGI_MSG_IDXGISwapChain_Present_ProtectedWindowlessPresentationRequiresDisplayOnly :: 146;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_DisplayOnlyUnsupported :: 147;
DXGI_MSG_IDXGISwapChain1_SetBackgroundColor_OutOfRange :: 148;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyFullscreenUnsupported :: 149;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyUnsupported :: 150;
DXGI_MSG_IDXGISwapchain_Present_ScrollUnsupported :: 151;
DXGI_MSG_IDXGISwapChain1_SetRotation_UnsupportedOS :: 152;
DXGI_MSG_IDXGISwapChain1_GetRotation_UnsupportedOS :: 153;
DXGI_MSG_IDXGISwapchain_Present_FullscreenRotation :: 154;
DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithMSAABuffers :: 155;
DXGI_MSG_IDXGISwapChain1_SetRotation_FlipSequentialRequired :: 156;
DXGI_MSG_IDXGISwapChain1_SetRotation_InvalidRotation :: 157;
DXGI_MSG_IDXGISwapChain1_GetRotation_FlipSequentialRequired :: 158;
DXGI_MSG_IDXGISwapChain_GetHwnd_WrongType :: 159;
DXGI_MSG_IDXGISwapChain_GetCompositionSurface_WrongType :: 160;
DXGI_MSG_IDXGISwapChain_GetCoreWindow_WrongType :: 161;
DXGI_MSG_IDXGISwapChain_GetFullscreenDesc_NonHwnd :: 162;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_CoreWindow :: 163;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_UnsupportedOnWindows7 :: 164;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsNULL :: 165;
DXGI_MSG_IDXGIFactory_CreateSwapChain_FSUnsupportedForModernApps :: 166;
DXGI_MSG_IDXGIFactory_MakeWindowAssociation_ModernApp :: 167;
DXGI_MSG_IDXGISwapChain_ResizeTarget_ModernApp :: 168;
DXGI_MSG_IDXGISwapChain_ResizeTarget_pNewTargetParametersIsNULL :: 169;
DXGI_MSG_IDXGIOutput_SetDisplaySurface_ModernApp :: 170;
DXGI_MSG_IDXGIOutput_TakeOwnership_ModernApp :: 171;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsInvalid :: 172;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCompositionSurface_InvalidHandle :: 173;
DXGI_MSG_IDXGISurface1_GetDC_ModernApp :: 174;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneRequiresWindows8OrNewer :: 175;
DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoAndPreferRight :: 176;
DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithDoNotSequence :: 177;
DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithoutStereo :: 178;
DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoUnsupported :: 179;
DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_ArraySizeMismatch :: 180;
DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithSwapEffectDiscard :: 181;
DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaUnrecognized :: 182;
DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsWindowlessOnly :: 183;
DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsFlipModelOnly :: 184;
DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictToOutputAdapterMismatch :: 185;
DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyOnLegacy :: 186;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyOnLegacy :: 187;
DXGI_MSG_IDXGIResource1_CreateSubresourceSurface_InvalidIndex :: 188;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidScaling :: 189;
DXGI_MSG_IDXGIFactory_CreateSwapChainForCoreWindow_InvalidSwapEffect :: 190;
DXGI_MSG_IDXGIResource1_CreateSharedHandle_UnsupportedOS :: 191;
DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusWindow_UnsupportedOS :: 192;
DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusEvent_UnsupportedOS :: 193;
DXGI_MSG_IDXGIOutput1_DuplicateOutput_UnsupportedOS :: 194;
DXGI_MSG_IDXGIDisplayControl_IsStereoEnabled_UnsupportedOS :: 195;
DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidAlphaMode :: 196;
DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidResource :: 197;
DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidLUID :: 198;
DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_UnsupportedOS :: 199;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_2DOnly :: 200;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_StagingOnly :: 201;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NeedCPUAccessWrite :: 202;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NoShared :: 203;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_OnlyMipLevels1 :: 204;
DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_MappedOrOfferedResource :: 205;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSUnsupportedForModernApps :: 206;
DXGI_MSG_IDXGIFactory_CreateSwapChain_FailedToGoFSButNonPreRotated :: 207;
DXGI_MSG_IDXGIFactory_CreateSwapChainOrRegisterOcclusionStatus_BlitModelUsedWhileRegisteredForOcclusionStatusEvents :: 208;
DXGI_MSG_IDXGISwapChain_Present_BlitModelUsedWhileRegisteredForOcclusionStatusEvents :: 209;
DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreFlipModelOnly :: 210;
DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreNotFullscreen :: 211;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_Waitable :: 212;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveWaitableFlag :: 213;
DXGI_MSG_IDXGISwapChain_GetFrameLatencyWaitableObject_OnlyWaitable :: 214;
DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_OnlyWaitable :: 215;
DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_pMaxLatencyIsNULL :: 216;
DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_OnlyWaitable :: 217;
DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_MaxLatencyIsOutOfBounds :: 218;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ForegroundIsCoreWindowOnly :: 219;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_ForegroundUnsupportedOnAdapter :: 220;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidScaling :: 221;
DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidAlphaMode :: 222;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveForegroundFlag :: 223;
DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixPointerCannotBeNull :: 224;
DXGI_MSG_IDXGISwapChain_SetMatrixTransform_RequiresCompositionSwapChain :: 225;
DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeFinite :: 226;
DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeTranslateAndOrScale :: 227;
DXGI_MSG_IDXGISwapChain_GetMatrixTransform_MatrixPointerCannotBeNull :: 228;
DXGI_MSG_IDXGISwapChain_GetMatrixTransform_RequiresCompositionSwapChain :: 229;
DXGI_MSG_DXGIGetDebugInterface1_NULL_ppDebug :: 230;
DXGI_MSG_DXGIGetDebugInterface1_InvalidFlags :: 231;
DXGI_MSG_IDXGISwapChain_Present_Decode :: 232;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_Decode :: 233;
DXGI_MSG_IDXGISwapChain_SetSourceSize_FlipModel :: 234;
DXGI_MSG_IDXGISwapChain_SetSourceSize_Decode :: 235;
DXGI_MSG_IDXGISwapChain_SetSourceSize_WidthHeight :: 236;
DXGI_MSG_IDXGISwapChain_GetSourceSize_NullPointers :: 237;
DXGI_MSG_IDXGISwapChain_GetSourceSize_Decode :: 238;
DXGI_MSG_IDXGIDecodeSwapChain_SetColorSpace_InvalidFlags :: 239;
DXGI_MSG_IDXGIDecodeSwapChain_SetSourceRect_InvalidRect :: 240;
DXGI_MSG_IDXGIDecodeSwapChain_SetTargetRect_InvalidRect :: 241;
DXGI_MSG_IDXGIDecodeSwapChain_SetDestSize_InvalidSize :: 242;
DXGI_MSG_IDXGIDecodeSwapChain_GetSourceRect_InvalidPointer :: 243;
DXGI_MSG_IDXGIDecodeSwapChain_GetTargetRect_InvalidPointer :: 244;
DXGI_MSG_IDXGIDecodeSwapChain_GetDestSize_InvalidPointer :: 245;
DXGI_MSG_IDXGISwapChain_PresentBuffer_YUV :: 246;
DXGI_MSG_IDXGISwapChain_SetSourceSize_YUV :: 247;
DXGI_MSG_IDXGISwapChain_GetSourceSize_YUV :: 248;
DXGI_MSG_IDXGISwapChain_SetMatrixTransform_YUV :: 249;
DXGI_MSG_IDXGISwapChain_GetMatrixTransform_YUV :: 250;
DXGI_MSG_IDXGISwapChain_Present_PartialPresentation_YUV :: 251;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveFlag_YUV :: 252;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_Alignment_YUV :: 253;
DXGI_MSG_IDXGIFactory_CreateSwapChain_ShaderInputUnsupported_YUV :: 254;
DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_NullPointers :: 255;
DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_IDXGIDeviceNotSupportedBypConcernedDevice :: 256;
DXGI_MSG_IDXGIAdapter_EnumOutputs2_InvalidEnumOutputs2Flag :: 257;
DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_FSUnsupportedForFlipDiscard :: 258;
DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_NullPointers :: 259;
DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_IDXGIDeviceNotSupportedBypConcernedDevice :: 260;
DXGI_MSG_IDXGISwapChain3_CheckColorSpaceSupport_NullPointers :: 261;
DXGI_MSG_IDXGISwapChain3_SetColorSpace1_InvalidColorSpace :: 262;
DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidHwProtect :: 263;
DXGI_MSG_IDXGIFactory_CreateSwapChain_HwProtectUnsupported :: 264;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtect :: 265;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_HwProtectUnsupported :: 266;
DXGI_MSG_IDXGISwapChain_ResizeBuffers1_D3D12Only :: 267;
DXGI_MSG_IDXGISwapChain_ResizeBuffers1_FlipModel :: 268;
DXGI_MSG_IDXGISwapChain_ResizeBuffers1_NodeMaskAndQueueRequired :: 269;
DXGI_MSG_IDXGISwapChain_CreateSwapChain_InvalidHwProtectGdiFlag :: 270;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtectGdiFlag :: 271;
DXGI_MSG_IDXGIFactory_CreateSwapChain_10BitFormatNotSupported :: 272;
DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSwapEffectRequired :: 273;
DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidDevice :: 274;
DXGI_MSG_IDXGIOutput_TakeOwnership_Unsupported :: 275;
DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidQueue :: 276;
DXGI_MSG_IDXGISwapChain3_ResizeBuffers1_InvalidQueue :: 277;
DXGI_MSG_IDXGIFactory_CreateSwapChainForHwnd_InvalidScaling :: 278;
DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidSize :: 279;
DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidPointer :: 280;
DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidType :: 281;
DXGI_MSG_IDXGISwapChain_Present_FullscreenAllowTearingIsInvalid :: 282;
DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresPresentIntervalZero :: 283;
DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresCreationFlag :: 284;
DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveAllowTearingFlag :: 285;
DXGI_MSG_IDXGIFactory_CreateSwapChain_AllowTearingFlagIsFlipModelOnly :: 286;
DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidFeature :: 287;
DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidSize :: 288;
DXGI_MSG_IDXGIOutput6_CheckHardwareCompositionSupport_NullPointer :: 289;
DXGI_MSG_IDXGISwapChain_SetFullscreenState_PerMonitorDpiShimApplied :: 290;
DXGI_MSG_IDXGIOutput_DuplicateOutput_PerMonitorDpiShimApplied :: 291;
DXGI_MSG_IDXGIOutput_DuplicateOutput1_PerMonitorDpiRequired :: 292;
DXGI_MSG_IDXGIFactory7_UnregisterAdaptersChangedEvent_CookieNotFound :: 293;
DXGI_MSG_IDXGIFactory_CreateSwapChain_LegacyBltModelSwapEffect :: 294;
DXGI_MSG_IDXGISwapChain4_SetHDRMetaData_MetadataUnchanged :: 295;
DXGI_MSG_IDXGISwapChain_Present_11On12_Released_Resource :: 296;
DXGI_MSG_IDXGIFactory_CreateSwapChain_MultipleSwapchainRefToSurface_DeferredDtr :: 297;
DXGI_MSG_IDXGIFactory_MakeWindowAssociation_NoOpBehavior :: 298;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow :: 1000;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_DISCARD_BufferCount :: 1001;
DXGI_MSG_Phone_IDXGISwapChain_SetFullscreenState_NotAvailable :: 1002;
DXGI_MSG_Phone_IDXGISwapChain_ResizeBuffers_NotAvailable :: 1003;
DXGI_MSG_Phone_IDXGISwapChain_ResizeTarget_NotAvailable :: 1004;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerIndex :: 1005;
DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleLayerIndex :: 1006;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerFlag :: 1007;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidRotation :: 1008;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidBlend :: 1009;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidResource :: 1010;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidMultiPlaneOverlayResource :: 1011;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForPrimary :: 1012;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForOverlay :: 1013;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSubResourceIndex :: 1014;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSourceRect :: 1015;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidDestinationRect :: 1016;
DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleResource :: 1017;
DXGI_MSG_Phone_IDXGISwapChain_Present_NotSharedResource :: 1018;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidFlag :: 1019;
DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidInterval :: 1020;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_MSAA_NotSupported :: 1021;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_ScalingAspectRatioStretch_Supported_ModernApp :: 1022;
DXGI_MSG_Phone_IDXGISwapChain_GetFrameStatistics_NotAvailable_ModernApp :: 1023;
DXGI_MSG_Phone_IDXGISwapChain_Present_ReplaceInterval0With1 :: 1024;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FailedRegisterWithCompositor :: 1025;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow_AtRendering :: 1026;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_SEQUENTIAL_BufferCount :: 1027;
DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_Modern_CoreWindow_Only :: 1028;
DXGI_MSG_Phone_IDXGISwapChain_Present1_RequiresOverlays :: 1029;
DXGI_MSG_Phone_IDXGISwapChain_SetBackgroundColor_FlipSequentialRequired :: 1030;
DXGI_MSG_Phone_IDXGISwapChain_GetBackgroundColor_FlipSequentialRequired :: 1031;

DXGI_OFFER_RESOURCE_FLAGS :: enum s32
{
    ALLOW_DECOMMIT :: 1;
}

DXGI_OFFER_RESOURCE_FLAG_ALLOW_DECOMMIT :: 1;

DXGI_OFFER_RESOURCE_PRIORITY :: enum s32
{
    LOW :: 1;
    NORMAL :: 2;
    HIGH :: 3;
}

DXGI_OFFER_RESOURCE_PRIORITY_LOW :: 1;
DXGI_OFFER_RESOURCE_PRIORITY_NORMAL :: 2;
DXGI_OFFER_RESOURCE_PRIORITY_HIGH :: 3;

DXGI_OUTDUPL_DESC :: struct
{
    ModeDesc : DXGI_MODE_DESC;
    Rotation : DXGI_MODE_ROTATION;
    DesktopImageInSystemMemory : BOOL;
}

DXGI_OUTDUPL_FLAG :: enum s32
{
    DXGI_OUTDUPL_COMPOSITED_UI_CAPTURE_ONLY :: 1;
}

DXGI_OUTDUPL_COMPOSITED_UI_CAPTURE_ONLY :: 1;

DXGI_OUTDUPL_FRAME_INFO :: struct
{
    LastPresentTime : LARGE_INTEGER;
    LastMouseUpdateTime : LARGE_INTEGER;
    AccumulatedFrames : u32;
    RectsCoalesced : BOOL;
    ProtectedContentMaskedOut : BOOL;
    PointerPosition : DXGI_OUTDUPL_POINTER_POSITION;
    TotalMetadataBufferSize : u32;
    PointerShapeBufferSize : u32;
}

DXGI_OUTDUPL_MOVE_RECT :: struct
{
    SourcePoint : POINT;
    DestinationRect : RECT;
}

DXGI_OUTDUPL_POINTER_POSITION :: struct
{
    Position : POINT;
    Visible : BOOL;
}

DXGI_OUTDUPL_POINTER_SHAPE_INFO :: struct
{
    _Type : u32;
    Width : u32;
    Height : u32;
    Pitch : u32;
    HotSpot : POINT;
}

DXGI_OUTDUPL_POINTER_SHAPE_TYPE :: enum s32
{
    MONOCHROME :: 1;
    COLOR :: 2;
    MASKED_COLOR :: 4;
}

DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME :: 1;
DXGI_OUTDUPL_POINTER_SHAPE_TYPE_COLOR :: 2;
DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR :: 4;

DXGI_OUTPUT_DESC :: struct
{
    DeviceName : [32]u16;
    DesktopCoordinates : RECT;
    AttachedToDesktop : BOOL;
    Rotation : DXGI_MODE_ROTATION;
    Monitor : HMONITOR;
}

DXGI_OUTPUT_DESC1 :: struct
{
    DeviceName : [32]u16;
    DesktopCoordinates : RECT;
    AttachedToDesktop : BOOL;
    Rotation : DXGI_MODE_ROTATION;
    Monitor : HMONITOR;
    BitsPerColor : u32;
    ColorSpace : DXGI_COLOR_SPACE_TYPE;
    RedPrimary : [2]float;
    GreenPrimary : [2]float;
    BluePrimary : [2]float;
    WhitePoint : [2]float;
    MinLuminance : float;
    MaxLuminance : float;
    MaxFullFrameLuminance : float;
}

DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG :: enum s32
{
    PRESENT :: 1;
}

DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG_PRESENT :: 1;

DXGI_OVERLAY_SUPPORT_FLAG :: enum s32
{
    DIRECT :: 1;
    SCALING :: 2;
}

DXGI_OVERLAY_SUPPORT_FLAG_DIRECT :: 1;
DXGI_OVERLAY_SUPPORT_FLAG_SCALING :: 2;

DXGI_PRESENT_PARAMETERS :: struct
{
    DirtyRectsCount : u32;
    pDirtyRects : *RECT;
    pScrollRect : *RECT;
    pScrollOffset : *POINT;
}

DXGI_QUERY_VIDEO_MEMORY_INFO :: struct
{
    Budget : u64;
    CurrentUsage : u64;
    AvailableForReservation : u64;
    CurrentReservation : u64;
}

DXGI_RATIONAL :: struct
{
    Numerator : u32;
    Denominator : u32;
}

DXGI_RECLAIM_RESOURCE_RESULTS :: enum s32
{
    OK :: 0;
    DISCARDED :: 1;
    NOT_COMMITTED :: 2;
}

DXGI_RECLAIM_RESOURCE_RESULT_OK :: 0;
DXGI_RECLAIM_RESOURCE_RESULT_DISCARDED :: 1;
DXGI_RECLAIM_RESOURCE_RESULT_NOT_COMMITTED :: 2;

DXGI_RESIDENCY :: enum s32
{
    FULLY_RESIDENT :: 1;
    RESIDENT_IN_SHARED_MEMORY :: 2;
    EVICTED_TO_DISK :: 3;
}

DXGI_RESIDENCY_FULLY_RESIDENT :: 1;
DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY :: 2;
DXGI_RESIDENCY_EVICTED_TO_DISK :: 3;

DXGI_RESOURCE_PRIORITY :: enum u32
{
    MINIMUM :: 671088640;
    LOW :: 1342177280;
    NORMAL :: 2013265920;
    HIGH :: 2684354560;
    MAXIMUM :: 3355443200;
}

DXGI_RESOURCE_PRIORITY_MINIMUM :: 671088640;
DXGI_RESOURCE_PRIORITY_LOW :: 1342177280;
DXGI_RESOURCE_PRIORITY_NORMAL :: 2013265920;
DXGI_RESOURCE_PRIORITY_HIGH :: 2684354560;
DXGI_RESOURCE_PRIORITY_MAXIMUM :: 3355443200;

DXGI_RGB :: struct
{
    Red : float;
    Green : float;
    Blue : float;
}

DXGI_RGBA :: struct
{
    r : float;
    g : float;
    b : float;
    a : float;
}

DXGI_SAMPLE_DESC :: struct
{
    Count : u32;
    Quality : u32;
}

DXGI_SCALING :: enum s32
{
    STRETCH :: 0;
    NONE :: 1;
    ASPECT_RATIO_STRETCH :: 2;
}

DXGI_SCALING_STRETCH :: 0;
DXGI_SCALING_NONE :: 1;
DXGI_SCALING_ASPECT_RATIO_STRETCH :: 2;

DXGI_SHARED_RESOURCE :: struct
{
    Handle : HANDLE;
}

DXGI_SURFACE_DESC :: struct
{
    Width : u32;
    Height : u32;
    Format : DXGI_FORMAT;
    SampleDesc : DXGI_SAMPLE_DESC;
}

DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG :: enum s32
{
    PRESENT :: 1;
    OVERLAY_PRESENT :: 2;
}

DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_PRESENT :: 1;
DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_OVERLAY_PRESENT :: 2;

DXGI_SWAP_CHAIN_DESC :: struct
{
    BufferDesc : DXGI_MODE_DESC;
    SampleDesc : DXGI_SAMPLE_DESC;
    BufferUsage : u32;
    BufferCount : u32;
    OutputWindow : HWND;
    Windowed : BOOL;
    SwapEffect : DXGI_SWAP_EFFECT;
    Flags : u32;
}

DXGI_SWAP_CHAIN_DESC1 :: struct
{
    Width : u32;
    Height : u32;
    Format : DXGI_FORMAT;
    Stereo : BOOL;
    SampleDesc : DXGI_SAMPLE_DESC;
    BufferUsage : u32;
    BufferCount : u32;
    Scaling : DXGI_SCALING;
    SwapEffect : DXGI_SWAP_EFFECT;
    AlphaMode : DXGI_ALPHA_MODE;
    Flags : u32;
}

DXGI_SWAP_CHAIN_FLAG :: enum s32
{
    NONPREROTATED :: 1;
    ALLOW_MODE_SWITCH :: 2;
    GDI_COMPATIBLE :: 4;
    RESTRICTED_CONTENT :: 8;
    RESTRICT_SHARED_RESOURCE_DRIVER :: 16;
    DISPLAY_ONLY :: 32;
    FRAME_LATENCY_WAITABLE_OBJECT :: 64;
    FOREGROUND_LAYER :: 128;
    FULLSCREEN_VIDEO :: 256;
    YUV_VIDEO :: 512;
    HW_PROTECTED :: 1024;
    ALLOW_TEARING :: 2048;
    RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS :: 4096;
}

DXGI_SWAP_CHAIN_FLAG_NONPREROTATED :: 1;
DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH :: 2;
DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE :: 4;
DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT :: 8;
DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER :: 16;
DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY :: 32;
DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT :: 64;
DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER :: 128;
DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO :: 256;
DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO :: 512;
DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED :: 1024;
DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING :: 2048;
DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS :: 4096;

DXGI_SWAP_CHAIN_FULLSCREEN_DESC :: struct
{
    RefreshRate : DXGI_RATIONAL;
    ScanlineOrdering : DXGI_MODE_SCANLINE_ORDER;
    Scaling : DXGI_MODE_SCALING;
    Windowed : BOOL;
}

DXGI_SWAP_EFFECT :: enum s32
{
    DISCARD :: 0;
    SEQUENTIAL :: 1;
    FLIP_SEQUENTIAL :: 3;
    FLIP_DISCARD :: 4;
}

DXGI_SWAP_EFFECT_DISCARD :: 0;
DXGI_SWAP_EFFECT_SEQUENTIAL :: 1;
DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL :: 3;
DXGI_SWAP_EFFECT_FLIP_DISCARD :: 4;

IDXGIAdapter_UUID :: "2411e7e1-12ac-4ccf-bd14-9798e8534dc0";
IDXGIAdapter :: struct
{
    UUID :: GUID.{0x2411e7e1,0x12ac,0x4ccf,.[0xbd,0x14,0x97,0x98,0xe8,0x53,0x4d,0xc0]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIAdapterVTable;

    EnumOutputs :: inline (this : *IDXGIAdapter, Output : u32, ppOutput : **IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.EnumOutputs (this, Output, ppOutput);
    }

    GetDesc :: inline (this : *IDXGIAdapter, pDesc : *DXGI_ADAPTER_DESC) -> HRESULT #no_context
    {
        return this.vtable.GetDesc (this, pDesc);
    }

    CheckInterfaceSupport :: inline (this : *IDXGIAdapter, InterfaceName : *GUID, pUMDVersion : *LARGE_INTEGER) -> HRESULT #no_context
    {
        return this.vtable.CheckInterfaceSupport (this, InterfaceName, pUMDVersion);
    }
}

IDXGIAdapter1_UUID :: "29038f61-3839-4626-91fd-086879011a05";
IDXGIAdapter1 :: struct
{
    UUID :: GUID.{0x29038f61,0x3839,0x4626,.[0x91,0xfd,0x8,0x68,0x79,0x1,0x1a,0x5]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIAdapter;

    #place base;
    vtable : *IDXGIAdapter1VTable;

    GetDesc1 :: inline (this : *IDXGIAdapter1, pDesc : *DXGI_ADAPTER_DESC1) -> HRESULT #no_context
    {
        return this.vtable.GetDesc1 (this, pDesc);
    }
}

IDXGIAdapter2_UUID :: "0aa1ae0a-fa0e-4b84-8644-e05ff8e5acb5";
IDXGIAdapter2 :: struct
{
    UUID :: GUID.{0xaa1ae0a,0xfa0e,0x4b84,.[0x86,0x44,0xe0,0x5f,0xf8,0xe5,0xac,0xb5]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIAdapter1;

    #place base;
    vtable : *IDXGIAdapter2VTable;

    GetDesc2 :: inline (this : *IDXGIAdapter2, pDesc : *DXGI_ADAPTER_DESC2) -> HRESULT #no_context
    {
        return this.vtable.GetDesc2 (this, pDesc);
    }
}

IDXGIAdapter3_UUID :: "645967a4-1392-4310-a798-8053ce3e93fd";
IDXGIAdapter3 :: struct
{
    UUID :: GUID.{0x645967a4,0x1392,0x4310,.[0xa7,0x98,0x80,0x53,0xce,0x3e,0x93,0xfd]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIAdapter2;

    #place base;
    vtable : *IDXGIAdapter3VTable;

    RegisterHardwareContentProtectionTeardownStatusEvent :: inline (this : *IDXGIAdapter3, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterHardwareContentProtectionTeardownStatusEvent (this, hEvent, pdwCookie);
    }

    UnregisterHardwareContentProtectionTeardownStatus :: inline (this : *IDXGIAdapter3, dwCookie : u32) #no_context
    {
        this.vtable.UnregisterHardwareContentProtectionTeardownStatus (this, dwCookie);
    }

    QueryVideoMemoryInfo :: inline (this : *IDXGIAdapter3, NodeIndex : u32, MemorySegmentGroup : DXGI_MEMORY_SEGMENT_GROUP, pVideoMemoryInfo : *DXGI_QUERY_VIDEO_MEMORY_INFO) -> HRESULT #no_context
    {
        return this.vtable.QueryVideoMemoryInfo (this, NodeIndex, MemorySegmentGroup, pVideoMemoryInfo);
    }

    SetVideoMemoryReservation :: inline (this : *IDXGIAdapter3, NodeIndex : u32, MemorySegmentGroup : DXGI_MEMORY_SEGMENT_GROUP, Reservation : u64) -> HRESULT #no_context
    {
        return this.vtable.SetVideoMemoryReservation (this, NodeIndex, MemorySegmentGroup, Reservation);
    }

    RegisterVideoMemoryBudgetChangeNotificationEvent :: inline (this : *IDXGIAdapter3, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterVideoMemoryBudgetChangeNotificationEvent (this, hEvent, pdwCookie);
    }

    UnregisterVideoMemoryBudgetChangeNotification :: inline (this : *IDXGIAdapter3, dwCookie : u32) #no_context
    {
        this.vtable.UnregisterVideoMemoryBudgetChangeNotification (this, dwCookie);
    }
}

IDXGIAdapter4_UUID :: "3c8d99d1-4fbf-4181-a82c-af66bf7bd24e";
IDXGIAdapter4 :: struct
{
    UUID :: GUID.{0x3c8d99d1,0x4fbf,0x4181,.[0xa8,0x2c,0xaf,0x66,0xbf,0x7b,0xd2,0x4e]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIAdapter3;

    #place base;
    vtable : *IDXGIAdapter4VTable;

    GetDesc3 :: inline (this : *IDXGIAdapter4, pDesc : *DXGI_ADAPTER_DESC3) -> HRESULT #no_context
    {
        return this.vtable.GetDesc3 (this, pDesc);
    }
}

IDXGIDebug_UUID :: "119e7452-de9e-40fe-8806-88f90c12b441";
IDXGIDebug :: struct
{
    UUID :: GUID.{0x119e7452,0xde9e,0x40fe,.[0x88,0x6,0x88,0xf9,0xc,0x12,0xb4,0x41]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIDebugVTable;

    ReportLiveObjects :: inline (this : *IDXGIDebug, apiid : GUID, flags : DXGI_DEBUG_RLO_FLAGS) -> HRESULT #no_context
    {
        return this.vtable.ReportLiveObjects (this, apiid, flags);
    }
}

IDXGIDebug1_UUID :: "c5a05f0c-16f2-4adf-9f4d-a8c4d58ac550";
IDXGIDebug1 :: struct
{
    UUID :: GUID.{0xc5a05f0c,0x16f2,0x4adf,.[0x9f,0x4d,0xa8,0xc4,0xd5,0x8a,0xc5,0x50]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDebug;

    #place base;
    vtable : *IDXGIDebug1VTable;

    EnableLeakTrackingForThread :: inline (this : *IDXGIDebug1) #no_context
    {
        this.vtable.EnableLeakTrackingForThread (this);
    }

    DisableLeakTrackingForThread :: inline (this : *IDXGIDebug1) #no_context
    {
        this.vtable.DisableLeakTrackingForThread (this);
    }

    IsLeakTrackingEnabledForThread :: inline (this : *IDXGIDebug1) -> BOOL #no_context
    {
        return this.vtable.IsLeakTrackingEnabledForThread (this);
    }
}

IDXGIDecodeSwapChain_UUID :: "2633066b-4514-4c7a-8fd8-12ea98059d18";
IDXGIDecodeSwapChain :: struct
{
    UUID :: GUID.{0x2633066b,0x4514,0x4c7a,.[0x8f,0xd8,0x12,0xea,0x98,0x5,0x9d,0x18]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIDecodeSwapChainVTable;

    PresentBuffer :: inline (this : *IDXGIDecodeSwapChain, BufferToPresent : u32, SyncInterval : u32, Flags : u32) -> HRESULT #no_context
    {
        return this.vtable.PresentBuffer (this, BufferToPresent, SyncInterval, Flags);
    }

    SetSourceRect :: inline (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #no_context
    {
        return this.vtable.SetSourceRect (this, pRect);
    }

    SetTargetRect :: inline (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #no_context
    {
        return this.vtable.SetTargetRect (this, pRect);
    }

    SetDestSize :: inline (this : *IDXGIDecodeSwapChain, Width : u32, Height : u32) -> HRESULT #no_context
    {
        return this.vtable.SetDestSize (this, Width, Height);
    }

    GetSourceRect :: inline (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #no_context
    {
        return this.vtable.GetSourceRect (this, pRect);
    }

    GetTargetRect :: inline (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #no_context
    {
        return this.vtable.GetTargetRect (this, pRect);
    }

    GetDestSize :: inline (this : *IDXGIDecodeSwapChain, pWidth : *u32, pHeight : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetDestSize (this, pWidth, pHeight);
    }

    SetColorSpace :: inline (this : *IDXGIDecodeSwapChain, ColorSpace : DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS) -> HRESULT #no_context
    {
        return this.vtable.SetColorSpace (this, ColorSpace);
    }

    GetColorSpace :: inline (this : *IDXGIDecodeSwapChain) -> DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS #no_context
    {
        return this.vtable.GetColorSpace (this);
    }
}

IDXGIDevice_UUID :: "54ec77fa-1377-44e6-8c32-88fd5f44c84c";
IDXGIDevice :: struct
{
    UUID :: GUID.{0x54ec77fa,0x1377,0x44e6,.[0x8c,0x32,0x88,0xfd,0x5f,0x44,0xc8,0x4c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIDeviceVTable;

    GetAdapter :: inline (this : *IDXGIDevice, pAdapter : **IDXGIAdapter) -> HRESULT #no_context
    {
        return this.vtable.GetAdapter (this, pAdapter);
    }

    CreateSurface :: inline (this : *IDXGIDevice, 
        pDesc : *DXGI_SURFACE_DESC,
        NumSurfaces : u32,
        Usage : u32,
        pSharedResource : *DXGI_SHARED_RESOURCE,
        ppSurface : **IDXGISurface
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSurface (this, pDesc, NumSurfaces, Usage, pSharedResource, ppSurface);
    }

    QueryResourceResidency :: inline (this : *IDXGIDevice, ppResources : **IUnknown, pResidencyStatus : *DXGI_RESIDENCY, NumResources : u32) -> HRESULT #no_context
    {
        return this.vtable.QueryResourceResidency (this, ppResources, pResidencyStatus, NumResources);
    }

    SetGPUThreadPriority :: inline (this : *IDXGIDevice, Priority : s32) -> HRESULT #no_context
    {
        return this.vtable.SetGPUThreadPriority (this, Priority);
    }

    GetGPUThreadPriority :: inline (this : *IDXGIDevice, pPriority : *s32) -> HRESULT #no_context
    {
        return this.vtable.GetGPUThreadPriority (this, pPriority);
    }
}

IDXGIDevice1_UUID :: "77db970f-6276-48ba-ba28-070143b4392c";
IDXGIDevice1 :: struct
{
    UUID :: GUID.{0x77db970f,0x6276,0x48ba,.[0xba,0x28,0x7,0x1,0x43,0xb4,0x39,0x2c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDevice;

    #place base;
    vtable : *IDXGIDevice1VTable;

    SetMaximumFrameLatency :: inline (this : *IDXGIDevice1, MaxLatency : u32) -> HRESULT #no_context
    {
        return this.vtable.SetMaximumFrameLatency (this, MaxLatency);
    }

    GetMaximumFrameLatency :: inline (this : *IDXGIDevice1, pMaxLatency : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetMaximumFrameLatency (this, pMaxLatency);
    }
}

IDXGIDevice2_UUID :: "05008617-fbfd-4051-a790-144884b4f6a9";
IDXGIDevice2 :: struct
{
    UUID :: GUID.{0x5008617,0xfbfd,0x4051,.[0xa7,0x90,0x14,0x48,0x84,0xb4,0xf6,0xa9]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDevice1;

    #place base;
    vtable : *IDXGIDevice2VTable;

    OfferResources :: inline (this : *IDXGIDevice2, NumResources : u32, ppResources : **IDXGIResource, Priority : DXGI_OFFER_RESOURCE_PRIORITY) -> HRESULT #no_context
    {
        return this.vtable.OfferResources (this, NumResources, ppResources, Priority);
    }

    ReclaimResources :: inline (this : *IDXGIDevice2, NumResources : u32, ppResources : **IDXGIResource, pDiscarded : *BOOL) -> HRESULT #no_context
    {
        return this.vtable.ReclaimResources (this, NumResources, ppResources, pDiscarded);
    }

    EnqueueSetEvent :: inline (this : *IDXGIDevice2, hEvent : HANDLE) -> HRESULT #no_context
    {
        return this.vtable.EnqueueSetEvent (this, hEvent);
    }
}

IDXGIDevice3_UUID :: "6007896c-3244-4afd-bf18-a6d3beda5023";
IDXGIDevice3 :: struct
{
    UUID :: GUID.{0x6007896c,0x3244,0x4afd,.[0xbf,0x18,0xa6,0xd3,0xbe,0xda,0x50,0x23]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDevice2;

    #place base;
    vtable : *IDXGIDevice3VTable;

    Trim :: inline (this : *IDXGIDevice3) #no_context
    {
        this.vtable.Trim (this);
    }
}

IDXGIDevice4_UUID :: "95b4f95f-d8da-4ca4-9ee6-3b76d5968a10";
IDXGIDevice4 :: struct
{
    UUID :: GUID.{0x95b4f95f,0xd8da,0x4ca4,.[0x9e,0xe6,0x3b,0x76,0xd5,0x96,0x8a,0x10]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDevice3;

    #place base;
    vtable : *IDXGIDevice4VTable;

    OfferResources1 :: inline (this : *IDXGIDevice4, 
        NumResources : u32,
        ppResources : **IDXGIResource,
        Priority : DXGI_OFFER_RESOURCE_PRIORITY,
        Flags : u32
    ) -> HRESULT #no_context
    {
        return this.vtable.OfferResources1 (this, NumResources, ppResources, Priority, Flags);
    }

    ReclaimResources1 :: inline (this : *IDXGIDevice4, NumResources : u32, ppResources : **IDXGIResource, pResults : *DXGI_RECLAIM_RESOURCE_RESULTS) -> HRESULT #no_context
    {
        return this.vtable.ReclaimResources1 (this, NumResources, ppResources, pResults);
    }
}

IDXGIDeviceSubObject_UUID :: "3d3e0379-f9de-4d58-bb6c-18d62992f1a6";
IDXGIDeviceSubObject :: struct
{
    UUID :: GUID.{0x3d3e0379,0xf9de,0x4d58,.[0xbb,0x6c,0x18,0xd6,0x29,0x92,0xf1,0xa6]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIDeviceSubObjectVTable;

    GetDevice :: inline (this : *IDXGIDeviceSubObject, riid : *GUID, ppDevice : **void) -> HRESULT #no_context
    {
        return this.vtable.GetDevice (this, riid, ppDevice);
    }
}

IDXGIDisplayControl_UUID :: "ea9dbf1a-c88e-4486-854a-98aa0138f30c";
IDXGIDisplayControl :: struct
{
    UUID :: GUID.{0xea9dbf1a,0xc88e,0x4486,.[0x85,0x4a,0x98,0xaa,0x1,0x38,0xf3,0xc]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIDisplayControlVTable;

    IsStereoEnabled :: inline (this : *IDXGIDisplayControl) -> BOOL #no_context
    {
        return this.vtable.IsStereoEnabled (this);
    }

    SetStereoEnabled :: inline (this : *IDXGIDisplayControl, enabled : BOOL) #no_context
    {
        this.vtable.SetStereoEnabled (this, enabled);
    }
}

IDXGIFactory_UUID :: "7b7166ec-21c7-44ae-b21a-c9ae321ae369";
IDXGIFactory :: struct
{
    UUID :: GUID.{0x7b7166ec,0x21c7,0x44ae,.[0xb2,0x1a,0xc9,0xae,0x32,0x1a,0xe3,0x69]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIFactoryVTable;

    EnumAdapters :: inline (this : *IDXGIFactory, Adapter : u32, ppAdapter : **IDXGIAdapter) -> HRESULT #no_context
    {
        return this.vtable.EnumAdapters (this, Adapter, ppAdapter);
    }

    MakeWindowAssociation :: inline (this : *IDXGIFactory, WindowHandle : HWND, Flags : u32) -> HRESULT #no_context
    {
        return this.vtable.MakeWindowAssociation (this, WindowHandle, Flags);
    }

    GetWindowAssociation :: inline (this : *IDXGIFactory, pWindowHandle : *HWND) -> HRESULT #no_context
    {
        return this.vtable.GetWindowAssociation (this, pWindowHandle);
    }

    CreateSwapChain :: inline (this : *IDXGIFactory, pDevice : *IUnknown, pDesc : *DXGI_SWAP_CHAIN_DESC, ppSwapChain : **IDXGISwapChain) -> HRESULT #no_context
    {
        return this.vtable.CreateSwapChain (this, pDevice, pDesc, ppSwapChain);
    }

    CreateSoftwareAdapter :: inline (this : *IDXGIFactory, Module : HINSTANCE, ppAdapter : **IDXGIAdapter) -> HRESULT #no_context
    {
        return this.vtable.CreateSoftwareAdapter (this, Module, ppAdapter);
    }
}

IDXGIFactory1_UUID :: "770aae78-f26f-4dba-a829-253c83d1b387";
IDXGIFactory1 :: struct
{
    UUID :: GUID.{0x770aae78,0xf26f,0x4dba,.[0xa8,0x29,0x25,0x3c,0x83,0xd1,0xb3,0x87]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory;

    #place base;
    vtable : *IDXGIFactory1VTable;

    EnumAdapters1 :: inline (this : *IDXGIFactory1, Adapter : u32, ppAdapter : **IDXGIAdapter1) -> HRESULT #no_context
    {
        return this.vtable.EnumAdapters1 (this, Adapter, ppAdapter);
    }

    IsCurrent :: inline (this : *IDXGIFactory1) -> BOOL #no_context
    {
        return this.vtable.IsCurrent (this);
    }
}

IDXGIFactory2_UUID :: "50c83a1c-e072-4c48-87b0-3630fa36a6d0";
IDXGIFactory2 :: struct
{
    UUID :: GUID.{0x50c83a1c,0xe072,0x4c48,.[0x87,0xb0,0x36,0x30,0xfa,0x36,0xa6,0xd0]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory1;

    #place base;
    vtable : *IDXGIFactory2VTable;

    IsWindowedStereoEnabled :: inline (this : *IDXGIFactory2) -> BOOL #no_context
    {
        return this.vtable.IsWindowedStereoEnabled (this);
    }

    CreateSwapChainForHwnd :: inline (this : *IDXGIFactory2, 
        pDevice : *IUnknown,
        hWnd : HWND,
        pDesc : *DXGI_SWAP_CHAIN_DESC1,
        pFullscreenDesc : *DXGI_SWAP_CHAIN_FULLSCREEN_DESC,
        pRestrictToOutput : *IDXGIOutput,
        ppSwapChain : **IDXGISwapChain1
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSwapChainForHwnd (this, pDevice, hWnd, pDesc, pFullscreenDesc, pRestrictToOutput, ppSwapChain);
    }

    CreateSwapChainForCoreWindow :: inline (this : *IDXGIFactory2, 
        pDevice : *IUnknown,
        pWindow : *IUnknown,
        pDesc : *DXGI_SWAP_CHAIN_DESC1,
        pRestrictToOutput : *IDXGIOutput,
        ppSwapChain : **IDXGISwapChain1
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSwapChainForCoreWindow (this, pDevice, pWindow, pDesc, pRestrictToOutput, ppSwapChain);
    }

    GetSharedResourceAdapterLuid :: inline (this : *IDXGIFactory2, hResource : HANDLE, pLuid : *LUID) -> HRESULT #no_context
    {
        return this.vtable.GetSharedResourceAdapterLuid (this, hResource, pLuid);
    }

    RegisterStereoStatusWindow :: inline (this : *IDXGIFactory2, WindowHandle : HWND, wMsg : u32, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterStereoStatusWindow (this, WindowHandle, wMsg, pdwCookie);
    }

    RegisterStereoStatusEvent :: inline (this : *IDXGIFactory2, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterStereoStatusEvent (this, hEvent, pdwCookie);
    }

    UnregisterStereoStatus :: inline (this : *IDXGIFactory2, dwCookie : u32) #no_context
    {
        this.vtable.UnregisterStereoStatus (this, dwCookie);
    }

    RegisterOcclusionStatusWindow :: inline (this : *IDXGIFactory2, WindowHandle : HWND, wMsg : u32, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterOcclusionStatusWindow (this, WindowHandle, wMsg, pdwCookie);
    }

    RegisterOcclusionStatusEvent :: inline (this : *IDXGIFactory2, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterOcclusionStatusEvent (this, hEvent, pdwCookie);
    }

    UnregisterOcclusionStatus :: inline (this : *IDXGIFactory2, dwCookie : u32) #no_context
    {
        this.vtable.UnregisterOcclusionStatus (this, dwCookie);
    }

    CreateSwapChainForComposition :: inline (this : *IDXGIFactory2, 
        pDevice : *IUnknown,
        pDesc : *DXGI_SWAP_CHAIN_DESC1,
        pRestrictToOutput : *IDXGIOutput,
        ppSwapChain : **IDXGISwapChain1
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSwapChainForComposition (this, pDevice, pDesc, pRestrictToOutput, ppSwapChain);
    }
}

IDXGIFactory3_UUID :: "25483823-cd46-4c7d-86ca-47aa95b837bd";
IDXGIFactory3 :: struct
{
    UUID :: GUID.{0x25483823,0xcd46,0x4c7d,.[0x86,0xca,0x47,0xaa,0x95,0xb8,0x37,0xbd]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory2;

    #place base;
    vtable : *IDXGIFactory3VTable;

    GetCreationFlags :: inline (this : *IDXGIFactory3) -> u32 #no_context
    {
        return this.vtable.GetCreationFlags (this);
    }
}

IDXGIFactory4_UUID :: "1bc6ea02-ef36-464f-bf0c-21ca39e5168a";
IDXGIFactory4 :: struct
{
    UUID :: GUID.{0x1bc6ea02,0xef36,0x464f,.[0xbf,0xc,0x21,0xca,0x39,0xe5,0x16,0x8a]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory3;

    #place base;
    vtable : *IDXGIFactory4VTable;

    EnumAdapterByLuid :: inline (this : *IDXGIFactory4, AdapterLuid : LUID, riid : *GUID, ppvAdapter : **void) -> HRESULT #no_context
    {
        return this.vtable.EnumAdapterByLuid (this, AdapterLuid, riid, ppvAdapter);
    }

    EnumWarpAdapter :: inline (this : *IDXGIFactory4, riid : *GUID, ppvAdapter : **void) -> HRESULT #no_context
    {
        return this.vtable.EnumWarpAdapter (this, riid, ppvAdapter);
    }
}

IDXGIFactory5_UUID :: "7632e1f5-ee65-4dca-87fd-84cd75f8838d";
IDXGIFactory5 :: struct
{
    UUID :: GUID.{0x7632e1f5,0xee65,0x4dca,.[0x87,0xfd,0x84,0xcd,0x75,0xf8,0x83,0x8d]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory4;

    #place base;
    vtable : *IDXGIFactory5VTable;

    CheckFeatureSupport :: inline (this : *IDXGIFactory5, Feature : DXGI_FEATURE, pFeatureSupportData : *void, FeatureSupportDataSize : u32) -> HRESULT #no_context
    {
        return this.vtable.CheckFeatureSupport (this, Feature, pFeatureSupportData, FeatureSupportDataSize);
    }
}

IDXGIFactory6_UUID :: "c1b6694f-ff09-44a9-b03c-77900a0a1d17";
IDXGIFactory6 :: struct
{
    UUID :: GUID.{0xc1b6694f,0xff09,0x44a9,.[0xb0,0x3c,0x77,0x90,0xa,0xa,0x1d,0x17]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory5;

    #place base;
    vtable : *IDXGIFactory6VTable;

    EnumAdapterByGpuPreference :: inline (this : *IDXGIFactory6, 
        Adapter : u32,
        GpuPreference : DXGI_GPU_PREFERENCE,
        riid : *GUID,
        ppvAdapter : **void
    ) -> HRESULT #no_context
    {
        return this.vtable.EnumAdapterByGpuPreference (this, Adapter, GpuPreference, riid, ppvAdapter);
    }
}

IDXGIFactory7_UUID :: "a4966eed-76db-44da-84c1-ee9a7afb20a8";
IDXGIFactory7 :: struct
{
    UUID :: GUID.{0xa4966eed,0x76db,0x44da,.[0x84,0xc1,0xee,0x9a,0x7a,0xfb,0x20,0xa8]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIFactory6;

    #place base;
    vtable : *IDXGIFactory7VTable;

    RegisterAdaptersChangedEvent :: inline (this : *IDXGIFactory7, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #no_context
    {
        return this.vtable.RegisterAdaptersChangedEvent (this, hEvent, pdwCookie);
    }

    UnregisterAdaptersChangedEvent :: inline (this : *IDXGIFactory7, dwCookie : u32) -> HRESULT #no_context
    {
        return this.vtable.UnregisterAdaptersChangedEvent (this, dwCookie);
    }
}

IDXGIFactoryMedia_UUID :: "41e7d1f2-a591-4f7b-a2e5-fa9c843e1c12";
IDXGIFactoryMedia :: struct
{
    UUID :: GUID.{0x41e7d1f2,0xa591,0x4f7b,.[0xa2,0xe5,0xfa,0x9c,0x84,0x3e,0x1c,0x12]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIFactoryMediaVTable;

    CreateSwapChainForCompositionSurfaceHandle :: inline (this : *IDXGIFactoryMedia, 
        pDevice : *IUnknown,
        hSurface : HANDLE,
        pDesc : *DXGI_SWAP_CHAIN_DESC1,
        pRestrictToOutput : *IDXGIOutput,
        ppSwapChain : **IDXGISwapChain1
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSwapChainForCompositionSurfaceHandle (this, pDevice, hSurface, pDesc, pRestrictToOutput, ppSwapChain);
    }

    CreateDecodeSwapChainForCompositionSurfaceHandle :: inline (this : *IDXGIFactoryMedia, 
        pDevice : *IUnknown,
        hSurface : HANDLE,
        pDesc : *DXGI_DECODE_SWAP_CHAIN_DESC,
        pYuvDecodeBuffers : *IDXGIResource,
        pRestrictToOutput : *IDXGIOutput,
        ppSwapChain : **IDXGIDecodeSwapChain
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateDecodeSwapChainForCompositionSurfaceHandle (this, pDevice, hSurface, pDesc, pYuvDecodeBuffers, pRestrictToOutput, ppSwapChain);
    }
}

IDXGIInfoQueue_UUID :: "d67441c7-672a-476f-9e82-cd55b44949ce";
IDXGIInfoQueue :: struct
{
    UUID :: GUID.{0xd67441c7,0x672a,0x476f,.[0x9e,0x82,0xcd,0x55,0xb4,0x49,0x49,0xce]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIInfoQueueVTable;

    SetMessageCountLimit :: inline (this : *IDXGIInfoQueue, Producer : GUID, MessageCountLimit : u64) -> HRESULT #no_context
    {
        return this.vtable.SetMessageCountLimit (this, Producer, MessageCountLimit);
    }

    ClearStoredMessages :: inline (this : *IDXGIInfoQueue, Producer : GUID) #no_context
    {
        this.vtable.ClearStoredMessages (this, Producer);
    }

    GetMessage :: inline (this : *IDXGIInfoQueue, 
        Producer : GUID,
        MessageIndex : u64,
        pMessage : *DXGI_INFO_QUEUE_MESSAGE,
        pMessageByteLength : *u64
    ) -> HRESULT #no_context
    {
        return this.vtable.GetMessage (this, Producer, MessageIndex, pMessage, pMessageByteLength);
    }

    GetNumStoredMessagesAllowedByRetrievalFilters :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetNumStoredMessagesAllowedByRetrievalFilters (this, Producer);
    }

    GetNumStoredMessages :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetNumStoredMessages (this, Producer);
    }

    GetNumMessagesDiscardedByMessageCountLimit :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetNumMessagesDiscardedByMessageCountLimit (this, Producer);
    }

    GetMessageCountLimit :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetMessageCountLimit (this, Producer);
    }

    GetNumMessagesAllowedByStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetNumMessagesAllowedByStorageFilter (this, Producer);
    }

    GetNumMessagesDeniedByStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #no_context
    {
        return this.vtable.GetNumMessagesDeniedByStorageFilter (this, Producer);
    }

    AddStorageFilterEntries :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #no_context
    {
        return this.vtable.AddStorageFilterEntries (this, Producer, pFilter);
    }

    GetStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER, pFilterByteLength : *u64) -> HRESULT #no_context
    {
        return this.vtable.GetStorageFilter (this, Producer, pFilter, pFilterByteLength);
    }

    ClearStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) #no_context
    {
        this.vtable.ClearStorageFilter (this, Producer);
    }

    PushEmptyStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushEmptyStorageFilter (this, Producer);
    }

    PushDenyAllStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushDenyAllStorageFilter (this, Producer);
    }

    PushCopyOfStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushCopyOfStorageFilter (this, Producer);
    }

    PushStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #no_context
    {
        return this.vtable.PushStorageFilter (this, Producer, pFilter);
    }

    PopStorageFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) #no_context
    {
        this.vtable.PopStorageFilter (this, Producer);
    }

    GetStorageFilterStackSize :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u32 #no_context
    {
        return this.vtable.GetStorageFilterStackSize (this, Producer);
    }

    AddRetrievalFilterEntries :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #no_context
    {
        return this.vtable.AddRetrievalFilterEntries (this, Producer, pFilter);
    }

    GetRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER, pFilterByteLength : *u64) -> HRESULT #no_context
    {
        return this.vtable.GetRetrievalFilter (this, Producer, pFilter, pFilterByteLength);
    }

    ClearRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) #no_context
    {
        this.vtable.ClearRetrievalFilter (this, Producer);
    }

    PushEmptyRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushEmptyRetrievalFilter (this, Producer);
    }

    PushDenyAllRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushDenyAllRetrievalFilter (this, Producer);
    }

    PushCopyOfRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #no_context
    {
        return this.vtable.PushCopyOfRetrievalFilter (this, Producer);
    }

    PushRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #no_context
    {
        return this.vtable.PushRetrievalFilter (this, Producer, pFilter);
    }

    PopRetrievalFilter :: inline (this : *IDXGIInfoQueue, Producer : GUID) #no_context
    {
        this.vtable.PopRetrievalFilter (this, Producer);
    }

    GetRetrievalFilterStackSize :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> u32 #no_context
    {
        return this.vtable.GetRetrievalFilterStackSize (this, Producer);
    }

    AddMessage :: inline (this : *IDXGIInfoQueue, 
        Producer : GUID,
        Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY,
        Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY,
        ID : s32,
        pDescription : PSTR
    ) -> HRESULT #no_context
    {
        return this.vtable.AddMessage (this, Producer, Category, Severity, ID, pDescription);
    }

    AddApplicationMessage :: inline (this : *IDXGIInfoQueue, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY, pDescription : PSTR) -> HRESULT #no_context
    {
        return this.vtable.AddApplicationMessage (this, Severity, pDescription);
    }

    SetBreakOnCategory :: inline (this : *IDXGIInfoQueue, Producer : GUID, Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY, bEnable : BOOL) -> HRESULT #no_context
    {
        return this.vtable.SetBreakOnCategory (this, Producer, Category, bEnable);
    }

    SetBreakOnSeverity :: inline (this : *IDXGIInfoQueue, Producer : GUID, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY, bEnable : BOOL) -> HRESULT #no_context
    {
        return this.vtable.SetBreakOnSeverity (this, Producer, Severity, bEnable);
    }

    SetBreakOnID :: inline (this : *IDXGIInfoQueue, Producer : GUID, ID : s32, bEnable : BOOL) -> HRESULT #no_context
    {
        return this.vtable.SetBreakOnID (this, Producer, ID, bEnable);
    }

    GetBreakOnCategory :: inline (this : *IDXGIInfoQueue, Producer : GUID, Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY) -> BOOL #no_context
    {
        return this.vtable.GetBreakOnCategory (this, Producer, Category);
    }

    GetBreakOnSeverity :: inline (this : *IDXGIInfoQueue, Producer : GUID, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY) -> BOOL #no_context
    {
        return this.vtable.GetBreakOnSeverity (this, Producer, Severity);
    }

    GetBreakOnID :: inline (this : *IDXGIInfoQueue, Producer : GUID, ID : s32) -> BOOL #no_context
    {
        return this.vtable.GetBreakOnID (this, Producer, ID);
    }

    SetMuteDebugOutput :: inline (this : *IDXGIInfoQueue, Producer : GUID, bMute : BOOL) #no_context
    {
        this.vtable.SetMuteDebugOutput (this, Producer, bMute);
    }

    GetMuteDebugOutput :: inline (this : *IDXGIInfoQueue, Producer : GUID) -> BOOL #no_context
    {
        return this.vtable.GetMuteDebugOutput (this, Producer);
    }
}

IDXGIKeyedMutex_UUID :: "9d8e1289-d7b3-465f-8126-250e349af85d";
IDXGIKeyedMutex :: struct
{
    UUID :: GUID.{0x9d8e1289,0xd7b3,0x465f,.[0x81,0x26,0x25,0xe,0x34,0x9a,0xf8,0x5d]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDeviceSubObject;

    #place base;
    vtable : *IDXGIKeyedMutexVTable;

    AcquireSync :: inline (this : *IDXGIKeyedMutex, Key : u64, dwMilliseconds : u32) -> HRESULT #no_context
    {
        return this.vtable.AcquireSync (this, Key, dwMilliseconds);
    }

    ReleaseSync :: inline (this : *IDXGIKeyedMutex, Key : u64) -> HRESULT #no_context
    {
        return this.vtable.ReleaseSync (this, Key);
    }
}

IDXGIObject_UUID :: "aec22fb8-76f3-4639-9be0-28eb43a67a2e";
IDXGIObject :: struct
{
    UUID :: GUID.{0xaec22fb8,0x76f3,0x4639,.[0x9b,0xe0,0x28,0xeb,0x43,0xa6,0x7a,0x2e]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGIObjectVTable;

    SetPrivateData :: inline (this : *IDXGIObject, Name : *GUID, DataSize : u32, pData : *void) -> HRESULT #no_context
    {
        return this.vtable.SetPrivateData (this, Name, DataSize, pData);
    }

    SetPrivateDataInterface :: inline (this : *IDXGIObject, Name : *GUID, pUnknown : *IUnknown) -> HRESULT #no_context
    {
        return this.vtable.SetPrivateDataInterface (this, Name, pUnknown);
    }

    GetPrivateData :: inline (this : *IDXGIObject, Name : *GUID, pDataSize : *u32, pData : *void) -> HRESULT #no_context
    {
        return this.vtable.GetPrivateData (this, Name, pDataSize, pData);
    }

    GetParent :: inline (this : *IDXGIObject, riid : *GUID, ppParent : **void) -> HRESULT #no_context
    {
        return this.vtable.GetParent (this, riid, ppParent);
    }
}

IDXGIOutput_UUID :: "ae02eedb-c735-4690-8d52-5a8dc20213aa";
IDXGIOutput :: struct
{
    UUID :: GUID.{0xae02eedb,0xc735,0x4690,.[0x8d,0x52,0x5a,0x8d,0xc2,0x2,0x13,0xaa]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIOutputVTable;

    GetDesc :: inline (this : *IDXGIOutput, pDesc : *DXGI_OUTPUT_DESC) -> HRESULT #no_context
    {
        return this.vtable.GetDesc (this, pDesc);
    }

    GetDisplayModeList :: inline (this : *IDXGIOutput, 
        EnumFormat : DXGI_FORMAT,
        Flags : u32,
        pNumModes : *u32,
        pDesc : *DXGI_MODE_DESC
    ) -> HRESULT #no_context
    {
        return this.vtable.GetDisplayModeList (this, EnumFormat, Flags, pNumModes, pDesc);
    }

    FindClosestMatchingMode :: inline (this : *IDXGIOutput, pModeToMatch : *DXGI_MODE_DESC, pClosestMatch : *DXGI_MODE_DESC, pConcernedDevice : *IUnknown) -> HRESULT #no_context
    {
        return this.vtable.FindClosestMatchingMode (this, pModeToMatch, pClosestMatch, pConcernedDevice);
    }

    WaitForVBlank :: inline (this : *IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.WaitForVBlank (this);
    }

    TakeOwnership :: inline (this : *IDXGIOutput, pDevice : *IUnknown, Exclusive : BOOL) -> HRESULT #no_context
    {
        return this.vtable.TakeOwnership (this, pDevice, Exclusive);
    }

    ReleaseOwnership :: inline (this : *IDXGIOutput) #no_context
    {
        this.vtable.ReleaseOwnership (this);
    }

    GetGammaControlCapabilities :: inline (this : *IDXGIOutput, pGammaCaps : *DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT #no_context
    {
        return this.vtable.GetGammaControlCapabilities (this, pGammaCaps);
    }

    SetGammaControl :: inline (this : *IDXGIOutput, pArray : *DXGI_GAMMA_CONTROL) -> HRESULT #no_context
    {
        return this.vtable.SetGammaControl (this, pArray);
    }

    GetGammaControl :: inline (this : *IDXGIOutput, pArray : *DXGI_GAMMA_CONTROL) -> HRESULT #no_context
    {
        return this.vtable.GetGammaControl (this, pArray);
    }

    SetDisplaySurface :: inline (this : *IDXGIOutput, pScanoutSurface : *IDXGISurface) -> HRESULT #no_context
    {
        return this.vtable.SetDisplaySurface (this, pScanoutSurface);
    }

    GetDisplaySurfaceData :: inline (this : *IDXGIOutput, pDestination : *IDXGISurface) -> HRESULT #no_context
    {
        return this.vtable.GetDisplaySurfaceData (this, pDestination);
    }

    GetFrameStatistics :: inline (this : *IDXGIOutput, pStats : *DXGI_FRAME_STATISTICS) -> HRESULT #no_context
    {
        return this.vtable.GetFrameStatistics (this, pStats);
    }
}

IDXGIOutput1_UUID :: "00cddea8-939b-4b83-a340-a685226666cc";
IDXGIOutput1 :: struct
{
    UUID :: GUID.{0xcddea8,0x939b,0x4b83,.[0xa3,0x40,0xa6,0x85,0x22,0x66,0x66,0xcc]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput;

    #place base;
    vtable : *IDXGIOutput1VTable;

    GetDisplayModeList1 :: inline (this : *IDXGIOutput1, 
        EnumFormat : DXGI_FORMAT,
        Flags : u32,
        pNumModes : *u32,
        pDesc : *DXGI_MODE_DESC1
    ) -> HRESULT #no_context
    {
        return this.vtable.GetDisplayModeList1 (this, EnumFormat, Flags, pNumModes, pDesc);
    }

    FindClosestMatchingMode1 :: inline (this : *IDXGIOutput1, pModeToMatch : *DXGI_MODE_DESC1, pClosestMatch : *DXGI_MODE_DESC1, pConcernedDevice : *IUnknown) -> HRESULT #no_context
    {
        return this.vtable.FindClosestMatchingMode1 (this, pModeToMatch, pClosestMatch, pConcernedDevice);
    }

    GetDisplaySurfaceData1 :: inline (this : *IDXGIOutput1, pDestination : *IDXGIResource) -> HRESULT #no_context
    {
        return this.vtable.GetDisplaySurfaceData1 (this, pDestination);
    }

    DuplicateOutput :: inline (this : *IDXGIOutput1, pDevice : *IUnknown, ppOutputDuplication : **IDXGIOutputDuplication) -> HRESULT #no_context
    {
        return this.vtable.DuplicateOutput (this, pDevice, ppOutputDuplication);
    }
}

IDXGIOutput2_UUID :: "595e39d1-2724-4663-99b1-da969de28364";
IDXGIOutput2 :: struct
{
    UUID :: GUID.{0x595e39d1,0x2724,0x4663,.[0x99,0xb1,0xda,0x96,0x9d,0xe2,0x83,0x64]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput1;

    #place base;
    vtable : *IDXGIOutput2VTable;

    SupportsOverlays :: inline (this : *IDXGIOutput2) -> BOOL #no_context
    {
        return this.vtable.SupportsOverlays (this);
    }
}

IDXGIOutput3_UUID :: "8a6bb301-7e7e-41f4-a8e0-5b32f7f99b18";
IDXGIOutput3 :: struct
{
    UUID :: GUID.{0x8a6bb301,0x7e7e,0x41f4,.[0xa8,0xe0,0x5b,0x32,0xf7,0xf9,0x9b,0x18]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput2;

    #place base;
    vtable : *IDXGIOutput3VTable;

    CheckOverlaySupport :: inline (this : *IDXGIOutput3, EnumFormat : DXGI_FORMAT, pConcernedDevice : *IUnknown, pFlags : *u32) -> HRESULT #no_context
    {
        return this.vtable.CheckOverlaySupport (this, EnumFormat, pConcernedDevice, pFlags);
    }
}

IDXGIOutput4_UUID :: "dc7dca35-2196-414d-9f53-617884032a60";
IDXGIOutput4 :: struct
{
    UUID :: GUID.{0xdc7dca35,0x2196,0x414d,.[0x9f,0x53,0x61,0x78,0x84,0x3,0x2a,0x60]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput3;

    #place base;
    vtable : *IDXGIOutput4VTable;

    CheckOverlayColorSpaceSupport :: inline (this : *IDXGIOutput4, 
        Format : DXGI_FORMAT,
        ColorSpace : DXGI_COLOR_SPACE_TYPE,
        pConcernedDevice : *IUnknown,
        pFlags : *u32
    ) -> HRESULT #no_context
    {
        return this.vtable.CheckOverlayColorSpaceSupport (this, Format, ColorSpace, pConcernedDevice, pFlags);
    }
}

IDXGIOutput5_UUID :: "80a07424-ab52-42eb-833c-0c42fd282d98";
IDXGIOutput5 :: struct
{
    UUID :: GUID.{0x80a07424,0xab52,0x42eb,.[0x83,0x3c,0xc,0x42,0xfd,0x28,0x2d,0x98]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput4;

    #place base;
    vtable : *IDXGIOutput5VTable;

    DuplicateOutput1 :: inline (this : *IDXGIOutput5, 
        pDevice : *IUnknown,
        Flags : u32,
        SupportedFormatsCount : u32,
        pSupportedFormats : *DXGI_FORMAT,
        ppOutputDuplication : **IDXGIOutputDuplication
    ) -> HRESULT #no_context
    {
        return this.vtable.DuplicateOutput1 (this, pDevice, Flags, SupportedFormatsCount, pSupportedFormats, ppOutputDuplication);
    }
}

IDXGIOutput6_UUID :: "068346e8-aaec-4b84-add7-137f513f77a1";
IDXGIOutput6 :: struct
{
    UUID :: GUID.{0x68346e8,0xaaec,0x4b84,.[0xad,0xd7,0x13,0x7f,0x51,0x3f,0x77,0xa1]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIOutput5;

    #place base;
    vtable : *IDXGIOutput6VTable;

    GetDesc1 :: inline (this : *IDXGIOutput6, pDesc : *DXGI_OUTPUT_DESC1) -> HRESULT #no_context
    {
        return this.vtable.GetDesc1 (this, pDesc);
    }

    CheckHardwareCompositionSupport :: inline (this : *IDXGIOutput6, pFlags : *u32) -> HRESULT #no_context
    {
        return this.vtable.CheckHardwareCompositionSupport (this, pFlags);
    }
}

IDXGIOutputDuplication_UUID :: "191cfac3-a341-470d-b26e-a864f428319c";
IDXGIOutputDuplication :: struct
{
    UUID :: GUID.{0x191cfac3,0xa341,0x470d,.[0xb2,0x6e,0xa8,0x64,0xf4,0x28,0x31,0x9c]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIObject;

    #place base;
    vtable : *IDXGIOutputDuplicationVTable;

    GetDesc :: inline (this : *IDXGIOutputDuplication, pDesc : *DXGI_OUTDUPL_DESC) #no_context
    {
        this.vtable.GetDesc (this, pDesc);
    }

    AcquireNextFrame :: inline (this : *IDXGIOutputDuplication, TimeoutInMilliseconds : u32, pFrameInfo : *DXGI_OUTDUPL_FRAME_INFO, ppDesktopResource : **IDXGIResource) -> HRESULT #no_context
    {
        return this.vtable.AcquireNextFrame (this, TimeoutInMilliseconds, pFrameInfo, ppDesktopResource);
    }

    GetFrameDirtyRects :: inline (this : *IDXGIOutputDuplication, DirtyRectsBufferSize : u32, pDirtyRectsBuffer : *RECT, pDirtyRectsBufferSizeRequired : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetFrameDirtyRects (this, DirtyRectsBufferSize, pDirtyRectsBuffer, pDirtyRectsBufferSizeRequired);
    }

    GetFrameMoveRects :: inline (this : *IDXGIOutputDuplication, MoveRectsBufferSize : u32, pMoveRectBuffer : *DXGI_OUTDUPL_MOVE_RECT, pMoveRectsBufferSizeRequired : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetFrameMoveRects (this, MoveRectsBufferSize, pMoveRectBuffer, pMoveRectsBufferSizeRequired);
    }

    GetFramePointerShape :: inline (this : *IDXGIOutputDuplication, 
        PointerShapeBufferSize : u32,
        pPointerShapeBuffer : *void,
        pPointerShapeBufferSizeRequired : *u32,
        pPointerShapeInfo : *DXGI_OUTDUPL_POINTER_SHAPE_INFO
    ) -> HRESULT #no_context
    {
        return this.vtable.GetFramePointerShape (this, PointerShapeBufferSize, pPointerShapeBuffer, pPointerShapeBufferSizeRequired, pPointerShapeInfo);
    }

    MapDesktopSurface :: inline (this : *IDXGIOutputDuplication, pLockedRect : *DXGI_MAPPED_RECT) -> HRESULT #no_context
    {
        return this.vtable.MapDesktopSurface (this, pLockedRect);
    }

    UnMapDesktopSurface :: inline (this : *IDXGIOutputDuplication) -> HRESULT #no_context
    {
        return this.vtable.UnMapDesktopSurface (this);
    }

    ReleaseFrame :: inline (this : *IDXGIOutputDuplication) -> HRESULT #no_context
    {
        return this.vtable.ReleaseFrame (this);
    }
}

IDXGIResource_UUID :: "035f3ab4-482e-4e50-b41f-8a7f8bd8960b";
IDXGIResource :: struct
{
    UUID :: GUID.{0x35f3ab4,0x482e,0x4e50,.[0xb4,0x1f,0x8a,0x7f,0x8b,0xd8,0x96,0xb]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDeviceSubObject;

    #place base;
    vtable : *IDXGIResourceVTable;

    GetSharedHandle :: inline (this : *IDXGIResource, pSharedHandle : *HANDLE) -> HRESULT #no_context
    {
        return this.vtable.GetSharedHandle (this, pSharedHandle);
    }

    GetUsage :: inline (this : *IDXGIResource, pUsage : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetUsage (this, pUsage);
    }

    SetEvictionPriority :: inline (this : *IDXGIResource, EvictionPriority : DXGI_RESOURCE_PRIORITY) -> HRESULT #no_context
    {
        return this.vtable.SetEvictionPriority (this, EvictionPriority);
    }

    GetEvictionPriority :: inline (this : *IDXGIResource, pEvictionPriority : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetEvictionPriority (this, pEvictionPriority);
    }
}

IDXGIResource1_UUID :: "30961379-4609-4a41-998e-54fe567ee0c1";
IDXGIResource1 :: struct
{
    UUID :: GUID.{0x30961379,0x4609,0x4a41,.[0x99,0x8e,0x54,0xfe,0x56,0x7e,0xe0,0xc1]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIResource;

    #place base;
    vtable : *IDXGIResource1VTable;

    CreateSubresourceSurface :: inline (this : *IDXGIResource1, index : u32, ppSurface : **IDXGISurface2) -> HRESULT #no_context
    {
        return this.vtable.CreateSubresourceSurface (this, index, ppSurface);
    }

    CreateSharedHandle :: inline (this : *IDXGIResource1, 
        pAttributes : *SECURITY_ATTRIBUTES,
        dwAccess : u32,
        lpName : PWSTR,
        pHandle : *HANDLE
    ) -> HRESULT #no_context
    {
        return this.vtable.CreateSharedHandle (this, pAttributes, dwAccess, lpName, pHandle);
    }
}

IDXGISurface_UUID :: "cafcb56c-6ac3-4889-bf47-9e23bbd260ec";
IDXGISurface :: struct
{
    UUID :: GUID.{0xcafcb56c,0x6ac3,0x4889,.[0xbf,0x47,0x9e,0x23,0xbb,0xd2,0x60,0xec]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDeviceSubObject;

    #place base;
    vtable : *IDXGISurfaceVTable;

    GetDesc :: inline (this : *IDXGISurface, pDesc : *DXGI_SURFACE_DESC) -> HRESULT #no_context
    {
        return this.vtable.GetDesc (this, pDesc);
    }

    Map :: inline (this : *IDXGISurface, pLockedRect : *DXGI_MAPPED_RECT, MapFlags : u32) -> HRESULT #no_context
    {
        return this.vtable.Map (this, pLockedRect, MapFlags);
    }

    Unmap :: inline (this : *IDXGISurface) -> HRESULT #no_context
    {
        return this.vtable.Unmap (this);
    }
}

IDXGISurface1_UUID :: "4ae63092-6327-4c1b-80ae-bfe12ea32b86";
IDXGISurface1 :: struct
{
    UUID :: GUID.{0x4ae63092,0x6327,0x4c1b,.[0x80,0xae,0xbf,0xe1,0x2e,0xa3,0x2b,0x86]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISurface;

    #place base;
    vtable : *IDXGISurface1VTable;

    GetDC :: inline (this : *IDXGISurface1, Discard : BOOL, phdc : *HDC) -> HRESULT #no_context
    {
        return this.vtable.GetDC (this, Discard, phdc);
    }

    ReleaseDC :: inline (this : *IDXGISurface1, pDirtyRect : *RECT) -> HRESULT #no_context
    {
        return this.vtable.ReleaseDC (this, pDirtyRect);
    }
}

IDXGISurface2_UUID :: "aba496dd-b617-4cb8-a866-bc44d7eb1fa2";
IDXGISurface2 :: struct
{
    UUID :: GUID.{0xaba496dd,0xb617,0x4cb8,.[0xa8,0x66,0xbc,0x44,0xd7,0xeb,0x1f,0xa2]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISurface1;

    #place base;
    vtable : *IDXGISurface2VTable;

    GetResource :: inline (this : *IDXGISurface2, riid : *GUID, ppParentResource : **void, pSubresourceIndex : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetResource (this, riid, ppParentResource, pSubresourceIndex);
    }
}

IDXGISwapChain_UUID :: "310d36a0-d2e7-4c0a-aa04-6a9d23b8886a";
IDXGISwapChain :: struct
{
    UUID :: GUID.{0x310d36a0,0xd2e7,0x4c0a,.[0xaa,0x4,0x6a,0x9d,0x23,0xb8,0x88,0x6a]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGIDeviceSubObject;

    #place base;
    vtable : *IDXGISwapChainVTable;

    Present :: inline (this : *IDXGISwapChain, SyncInterval : u32, Flags : u32) -> HRESULT #no_context
    {
        return this.vtable.Present (this, SyncInterval, Flags);
    }

    GetBuffer :: inline (this : *IDXGISwapChain, Buffer : u32, riid : *GUID, ppSurface : **void) -> HRESULT #no_context
    {
        return this.vtable.GetBuffer (this, Buffer, riid, ppSurface);
    }

    SetFullscreenState :: inline (this : *IDXGISwapChain, Fullscreen : BOOL, pTarget : *IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.SetFullscreenState (this, Fullscreen, pTarget);
    }

    GetFullscreenState :: inline (this : *IDXGISwapChain, pFullscreen : *BOOL, ppTarget : **IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.GetFullscreenState (this, pFullscreen, ppTarget);
    }

    GetDesc :: inline (this : *IDXGISwapChain, pDesc : *DXGI_SWAP_CHAIN_DESC) -> HRESULT #no_context
    {
        return this.vtable.GetDesc (this, pDesc);
    }

    ResizeBuffers :: inline (this : *IDXGISwapChain, 
        BufferCount : u32,
        Width : u32,
        Height : u32,
        NewFormat : DXGI_FORMAT,
        SwapChainFlags : u32
    ) -> HRESULT #no_context
    {
        return this.vtable.ResizeBuffers (this, BufferCount, Width, Height, NewFormat, SwapChainFlags);
    }

    ResizeTarget :: inline (this : *IDXGISwapChain, pNewTargetParameters : *DXGI_MODE_DESC) -> HRESULT #no_context
    {
        return this.vtable.ResizeTarget (this, pNewTargetParameters);
    }

    GetContainingOutput :: inline (this : *IDXGISwapChain, ppOutput : **IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.GetContainingOutput (this, ppOutput);
    }

    GetFrameStatistics :: inline (this : *IDXGISwapChain, pStats : *DXGI_FRAME_STATISTICS) -> HRESULT #no_context
    {
        return this.vtable.GetFrameStatistics (this, pStats);
    }

    GetLastPresentCount :: inline (this : *IDXGISwapChain, pLastPresentCount : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetLastPresentCount (this, pLastPresentCount);
    }
}

IDXGISwapChain1_UUID :: "790a45f7-0d42-4876-983a-0a55cfe6f4aa";
IDXGISwapChain1 :: struct
{
    UUID :: GUID.{0x790a45f7,0xd42,0x4876,.[0x98,0x3a,0xa,0x55,0xcf,0xe6,0xf4,0xaa]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISwapChain;

    #place base;
    vtable : *IDXGISwapChain1VTable;

    GetDesc1 :: inline (this : *IDXGISwapChain1, pDesc : *DXGI_SWAP_CHAIN_DESC1) -> HRESULT #no_context
    {
        return this.vtable.GetDesc1 (this, pDesc);
    }

    GetFullscreenDesc :: inline (this : *IDXGISwapChain1, pDesc : *DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT #no_context
    {
        return this.vtable.GetFullscreenDesc (this, pDesc);
    }

    GetHwnd :: inline (this : *IDXGISwapChain1, pHwnd : *HWND) -> HRESULT #no_context
    {
        return this.vtable.GetHwnd (this, pHwnd);
    }

    GetCoreWindow :: inline (this : *IDXGISwapChain1, refiid : *GUID, ppUnk : **void) -> HRESULT #no_context
    {
        return this.vtable.GetCoreWindow (this, refiid, ppUnk);
    }

    Present1 :: inline (this : *IDXGISwapChain1, SyncInterval : u32, PresentFlags : u32, pPresentParameters : *DXGI_PRESENT_PARAMETERS) -> HRESULT #no_context
    {
        return this.vtable.Present1 (this, SyncInterval, PresentFlags, pPresentParameters);
    }

    IsTemporaryMonoSupported :: inline (this : *IDXGISwapChain1) -> BOOL #no_context
    {
        return this.vtable.IsTemporaryMonoSupported (this);
    }

    GetRestrictToOutput :: inline (this : *IDXGISwapChain1, ppRestrictToOutput : **IDXGIOutput) -> HRESULT #no_context
    {
        return this.vtable.GetRestrictToOutput (this, ppRestrictToOutput);
    }

    SetBackgroundColor :: inline (this : *IDXGISwapChain1, pColor : *DXGI_RGBA) -> HRESULT #no_context
    {
        return this.vtable.SetBackgroundColor (this, pColor);
    }

    GetBackgroundColor :: inline (this : *IDXGISwapChain1, pColor : *DXGI_RGBA) -> HRESULT #no_context
    {
        return this.vtable.GetBackgroundColor (this, pColor);
    }

    SetRotation :: inline (this : *IDXGISwapChain1, Rotation : DXGI_MODE_ROTATION) -> HRESULT #no_context
    {
        return this.vtable.SetRotation (this, Rotation);
    }

    GetRotation :: inline (this : *IDXGISwapChain1, pRotation : *DXGI_MODE_ROTATION) -> HRESULT #no_context
    {
        return this.vtable.GetRotation (this, pRotation);
    }
}

IDXGISwapChain2_UUID :: "a8be2ac4-199f-4946-b331-79599fb98de7";
IDXGISwapChain2 :: struct
{
    UUID :: GUID.{0xa8be2ac4,0x199f,0x4946,.[0xb3,0x31,0x79,0x59,0x9f,0xb9,0x8d,0xe7]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISwapChain1;

    #place base;
    vtable : *IDXGISwapChain2VTable;

    SetSourceSize :: inline (this : *IDXGISwapChain2, Width : u32, Height : u32) -> HRESULT #no_context
    {
        return this.vtable.SetSourceSize (this, Width, Height);
    }

    GetSourceSize :: inline (this : *IDXGISwapChain2, pWidth : *u32, pHeight : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetSourceSize (this, pWidth, pHeight);
    }

    SetMaximumFrameLatency :: inline (this : *IDXGISwapChain2, MaxLatency : u32) -> HRESULT #no_context
    {
        return this.vtable.SetMaximumFrameLatency (this, MaxLatency);
    }

    GetMaximumFrameLatency :: inline (this : *IDXGISwapChain2, pMaxLatency : *u32) -> HRESULT #no_context
    {
        return this.vtable.GetMaximumFrameLatency (this, pMaxLatency);
    }

    GetFrameLatencyWaitableObject :: inline (this : *IDXGISwapChain2) -> HANDLE #no_context
    {
        return this.vtable.GetFrameLatencyWaitableObject (this);
    }

    SetMatrixTransform :: inline (this : *IDXGISwapChain2, pMatrix : *DXGI_MATRIX_3X2_F) -> HRESULT #no_context
    {
        return this.vtable.SetMatrixTransform (this, pMatrix);
    }

    GetMatrixTransform :: inline (this : *IDXGISwapChain2, pMatrix : *DXGI_MATRIX_3X2_F) -> HRESULT #no_context
    {
        return this.vtable.GetMatrixTransform (this, pMatrix);
    }
}

IDXGISwapChain3_UUID :: "94d99bdb-f1f8-4ab0-b236-7da0170edab1";
IDXGISwapChain3 :: struct
{
    UUID :: GUID.{0x94d99bdb,0xf1f8,0x4ab0,.[0xb2,0x36,0x7d,0xa0,0x17,0xe,0xda,0xb1]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISwapChain2;

    #place base;
    vtable : *IDXGISwapChain3VTable;

    GetCurrentBackBufferIndex :: inline (this : *IDXGISwapChain3) -> u32 #no_context
    {
        return this.vtable.GetCurrentBackBufferIndex (this);
    }

    CheckColorSpaceSupport :: inline (this : *IDXGISwapChain3, ColorSpace : DXGI_COLOR_SPACE_TYPE, pColorSpaceSupport : *u32) -> HRESULT #no_context
    {
        return this.vtable.CheckColorSpaceSupport (this, ColorSpace, pColorSpaceSupport);
    }

    SetColorSpace1 :: inline (this : *IDXGISwapChain3, ColorSpace : DXGI_COLOR_SPACE_TYPE) -> HRESULT #no_context
    {
        return this.vtable.SetColorSpace1 (this, ColorSpace);
    }

    ResizeBuffers1 :: inline (this : *IDXGISwapChain3, 
        BufferCount : u32,
        Width : u32,
        Height : u32,
        Format : DXGI_FORMAT,
        SwapChainFlags : u32,
        pCreationNodeMask : *u32,
        ppPresentQueue : **IUnknown
    ) -> HRESULT #no_context
    {
        return this.vtable.ResizeBuffers1 (this, BufferCount, Width, Height, Format, SwapChainFlags, pCreationNodeMask, ppPresentQueue);
    }
}

IDXGISwapChain4_UUID :: "3d585d5a-bd4a-489e-b1f4-3dbcb6452ffb";
IDXGISwapChain4 :: struct
{
    UUID :: GUID.{0x3d585d5a,0xbd4a,0x489e,.[0xb1,0xf4,0x3d,0xbc,0xb6,0x45,0x2f,0xfb]};

    #as using, except(.["vtable", "base", "UUID"]) base : IDXGISwapChain3;

    #place base;
    vtable : *IDXGISwapChain4VTable;

    SetHDRMetaData :: inline (this : *IDXGISwapChain4, _Type : DXGI_HDR_METADATA_TYPE, Size : u32, pMetaData : *void) -> HRESULT #no_context
    {
        return this.vtable.SetHDRMetaData (this, _Type, Size, pMetaData);
    }
}

IDXGISwapChainMedia_UUID :: "dd95b90b-f05f-4f6a-bd65-25bfb264bd84";
IDXGISwapChainMedia :: struct
{
    UUID :: GUID.{0xdd95b90b,0xf05f,0x4f6a,.[0xbd,0x65,0x25,0xbf,0xb2,0x64,0xbd,0x84]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGISwapChainMediaVTable;

    GetFrameStatisticsMedia :: inline (this : *IDXGISwapChainMedia, pStats : *DXGI_FRAME_STATISTICS_MEDIA) -> HRESULT #no_context
    {
        return this.vtable.GetFrameStatisticsMedia (this, pStats);
    }

    SetPresentDuration :: inline (this : *IDXGISwapChainMedia, Duration : u32) -> HRESULT #no_context
    {
        return this.vtable.SetPresentDuration (this, Duration);
    }

    CheckPresentDurationSupport :: inline (this : *IDXGISwapChainMedia, DesiredPresentDuration : u32, pClosestSmallerPresentDuration : *u32, pClosestLargerPresentDuration : *u32) -> HRESULT #no_context
    {
        return this.vtable.CheckPresentDurationSupport (this, DesiredPresentDuration, pClosestSmallerPresentDuration, pClosestLargerPresentDuration);
    }
}

IDXGraphicsAnalysis_UUID :: "9f251514-9d4d-4902-9d60-18988ab7d4b5";
IDXGraphicsAnalysis :: struct
{
    UUID :: GUID.{0x9f251514,0x9d4d,0x4902,.[0x9d,0x60,0x18,0x98,0x8a,0xb7,0xd4,0xb5]};

    #as using, except(.["vtable", "base", "UUID"]) base : IUnknown;

    #place base;
    vtable : *IDXGraphicsAnalysisVTable;

    BeginCapture :: inline (this : *IDXGraphicsAnalysis) #no_context
    {
        this.vtable.BeginCapture (this);
    }

    EndCapture :: inline (this : *IDXGraphicsAnalysis) #no_context
    {
        this.vtable.EndCapture (this);
    }
}

// Functions

CreateDXGIFactory :: (riid : *GUID, ppFactory : **void) -> HRESULT #foreign dxgi;
CreateDXGIFactory1 :: (riid : *GUID, ppFactory : **void) -> HRESULT #foreign dxgi;
CreateDXGIFactory2 :: (Flags : u32, riid : *GUID, ppFactory : **void) -> HRESULT #foreign dxgi;
DXGIDeclareAdapterRemovalSupport :: () -> HRESULT #foreign dxgi;
DXGIGetDebugInterface1 :: (Flags : u32, riid : *GUID, pDebug : **void) -> HRESULT #foreign dxgi;

// COM interface vtables


IDXGIAdapterVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    EnumOutputs : (this : *IDXGIAdapter, Output : u32, ppOutput : **IDXGIOutput) -> HRESULT #cpp_method;
    GetDesc : (this : *IDXGIAdapter, pDesc : *DXGI_ADAPTER_DESC) -> HRESULT #cpp_method;
    CheckInterfaceSupport : (this : *IDXGIAdapter, InterfaceName : *GUID, pUMDVersion : *LARGE_INTEGER) -> HRESULT #cpp_method;
}

IDXGIAdapter1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIAdapterVTable;

    GetDesc1 : (this : *IDXGIAdapter1, pDesc : *DXGI_ADAPTER_DESC1) -> HRESULT #cpp_method;
}

IDXGIAdapter2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIAdapter1VTable;

    GetDesc2 : (this : *IDXGIAdapter2, pDesc : *DXGI_ADAPTER_DESC2) -> HRESULT #cpp_method;
}

IDXGIAdapter3VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIAdapter2VTable;

    RegisterHardwareContentProtectionTeardownStatusEvent : (this : *IDXGIAdapter3, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #cpp_method;
    UnregisterHardwareContentProtectionTeardownStatus : (this : *IDXGIAdapter3, dwCookie : u32) #cpp_method;
    QueryVideoMemoryInfo : (this : *IDXGIAdapter3, NodeIndex : u32, MemorySegmentGroup : DXGI_MEMORY_SEGMENT_GROUP, pVideoMemoryInfo : *DXGI_QUERY_VIDEO_MEMORY_INFO) -> HRESULT #cpp_method;
    SetVideoMemoryReservation : (this : *IDXGIAdapter3, NodeIndex : u32, MemorySegmentGroup : DXGI_MEMORY_SEGMENT_GROUP, Reservation : u64) -> HRESULT #cpp_method;
    RegisterVideoMemoryBudgetChangeNotificationEvent : (this : *IDXGIAdapter3, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #cpp_method;
    UnregisterVideoMemoryBudgetChangeNotification : (this : *IDXGIAdapter3, dwCookie : u32) #cpp_method;
}

IDXGIAdapter4VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIAdapter3VTable;

    GetDesc3 : (this : *IDXGIAdapter4, pDesc : *DXGI_ADAPTER_DESC3) -> HRESULT #cpp_method;
}

IDXGIDebugVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    ReportLiveObjects : (this : *IDXGIDebug, apiid : GUID, flags : DXGI_DEBUG_RLO_FLAGS) -> HRESULT #cpp_method;
}

IDXGIDebug1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDebugVTable;

    EnableLeakTrackingForThread : (this : *IDXGIDebug1) #cpp_method;
    DisableLeakTrackingForThread : (this : *IDXGIDebug1) #cpp_method;
    IsLeakTrackingEnabledForThread : (this : *IDXGIDebug1) -> BOOL #cpp_method;
}

IDXGIDecodeSwapChainVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    PresentBuffer : (this : *IDXGIDecodeSwapChain, BufferToPresent : u32, SyncInterval : u32, Flags : u32) -> HRESULT #cpp_method;
    SetSourceRect : (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #cpp_method;
    SetTargetRect : (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #cpp_method;
    SetDestSize : (this : *IDXGIDecodeSwapChain, Width : u32, Height : u32) -> HRESULT #cpp_method;
    GetSourceRect : (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #cpp_method;
    GetTargetRect : (this : *IDXGIDecodeSwapChain, pRect : *RECT) -> HRESULT #cpp_method;
    GetDestSize : (this : *IDXGIDecodeSwapChain, pWidth : *u32, pHeight : *u32) -> HRESULT #cpp_method;
    SetColorSpace : (this : *IDXGIDecodeSwapChain, ColorSpace : DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS) -> HRESULT #cpp_method;
    GetColorSpace : (this : *IDXGIDecodeSwapChain) -> DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS #cpp_method;
}

IDXGIDeviceVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    GetAdapter : (this : *IDXGIDevice, pAdapter : **IDXGIAdapter) -> HRESULT #cpp_method;
    CreateSurface : (this : *IDXGIDevice, pDesc : *DXGI_SURFACE_DESC, NumSurfaces : u32, Usage : u32, pSharedResource : *DXGI_SHARED_RESOURCE, ppSurface : **IDXGISurface) -> HRESULT #cpp_method;
    QueryResourceResidency : (this : *IDXGIDevice, ppResources : **IUnknown, pResidencyStatus : *DXGI_RESIDENCY, NumResources : u32) -> HRESULT #cpp_method;
    SetGPUThreadPriority : (this : *IDXGIDevice, Priority : s32) -> HRESULT #cpp_method;
    GetGPUThreadPriority : (this : *IDXGIDevice, pPriority : *s32) -> HRESULT #cpp_method;
}

IDXGIDevice1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDeviceVTable;

    SetMaximumFrameLatency : (this : *IDXGIDevice1, MaxLatency : u32) -> HRESULT #cpp_method;
    GetMaximumFrameLatency : (this : *IDXGIDevice1, pMaxLatency : *u32) -> HRESULT #cpp_method;
}

IDXGIDevice2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDevice1VTable;

    OfferResources : (this : *IDXGIDevice2, NumResources : u32, ppResources : **IDXGIResource, Priority : DXGI_OFFER_RESOURCE_PRIORITY) -> HRESULT #cpp_method;
    ReclaimResources : (this : *IDXGIDevice2, NumResources : u32, ppResources : **IDXGIResource, pDiscarded : *BOOL) -> HRESULT #cpp_method;
    EnqueueSetEvent : (this : *IDXGIDevice2, hEvent : HANDLE) -> HRESULT #cpp_method;
}

IDXGIDevice3VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDevice2VTable;

    Trim : (this : *IDXGIDevice3) #cpp_method;
}

IDXGIDevice4VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDevice3VTable;

    OfferResources1 : (this : *IDXGIDevice4, NumResources : u32, ppResources : **IDXGIResource, Priority : DXGI_OFFER_RESOURCE_PRIORITY, Flags : u32) -> HRESULT #cpp_method;
    ReclaimResources1 : (this : *IDXGIDevice4, NumResources : u32, ppResources : **IDXGIResource, pResults : *DXGI_RECLAIM_RESOURCE_RESULTS) -> HRESULT #cpp_method;
}

IDXGIDeviceSubObjectVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    GetDevice : (this : *IDXGIDeviceSubObject, riid : *GUID, ppDevice : **void) -> HRESULT #cpp_method;
}

IDXGIDisplayControlVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    IsStereoEnabled : (this : *IDXGIDisplayControl) -> BOOL #cpp_method;
    SetStereoEnabled : (this : *IDXGIDisplayControl, enabled : BOOL) #cpp_method;
}

IDXGIFactoryVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    EnumAdapters : (this : *IDXGIFactory, Adapter : u32, ppAdapter : **IDXGIAdapter) -> HRESULT #cpp_method;
    MakeWindowAssociation : (this : *IDXGIFactory, WindowHandle : HWND, Flags : u32) -> HRESULT #cpp_method;
    GetWindowAssociation : (this : *IDXGIFactory, pWindowHandle : *HWND) -> HRESULT #cpp_method;
    CreateSwapChain : (this : *IDXGIFactory, pDevice : *IUnknown, pDesc : *DXGI_SWAP_CHAIN_DESC, ppSwapChain : **IDXGISwapChain) -> HRESULT #cpp_method;
    CreateSoftwareAdapter : (this : *IDXGIFactory, Module : HINSTANCE, ppAdapter : **IDXGIAdapter) -> HRESULT #cpp_method;
}

IDXGIFactory1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactoryVTable;

    EnumAdapters1 : (this : *IDXGIFactory1, Adapter : u32, ppAdapter : **IDXGIAdapter1) -> HRESULT #cpp_method;
    IsCurrent : (this : *IDXGIFactory1) -> BOOL #cpp_method;
}

IDXGIFactory2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory1VTable;

    IsWindowedStereoEnabled : (this : *IDXGIFactory2) -> BOOL #cpp_method;
    CreateSwapChainForHwnd : (this : *IDXGIFactory2, pDevice : *IUnknown, hWnd : HWND, pDesc : *DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc : *DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput : *IDXGIOutput, ppSwapChain : **IDXGISwapChain1) -> HRESULT #cpp_method;
    CreateSwapChainForCoreWindow : (this : *IDXGIFactory2, pDevice : *IUnknown, pWindow : *IUnknown, pDesc : *DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput : *IDXGIOutput, ppSwapChain : **IDXGISwapChain1) -> HRESULT #cpp_method;
    GetSharedResourceAdapterLuid : (this : *IDXGIFactory2, hResource : HANDLE, pLuid : *LUID) -> HRESULT #cpp_method;
    RegisterStereoStatusWindow : (this : *IDXGIFactory2, WindowHandle : HWND, wMsg : u32, pdwCookie : *u32) -> HRESULT #cpp_method;
    RegisterStereoStatusEvent : (this : *IDXGIFactory2, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #cpp_method;
    UnregisterStereoStatus : (this : *IDXGIFactory2, dwCookie : u32) #cpp_method;
    RegisterOcclusionStatusWindow : (this : *IDXGIFactory2, WindowHandle : HWND, wMsg : u32, pdwCookie : *u32) -> HRESULT #cpp_method;
    RegisterOcclusionStatusEvent : (this : *IDXGIFactory2, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #cpp_method;
    UnregisterOcclusionStatus : (this : *IDXGIFactory2, dwCookie : u32) #cpp_method;
    CreateSwapChainForComposition : (this : *IDXGIFactory2, pDevice : *IUnknown, pDesc : *DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput : *IDXGIOutput, ppSwapChain : **IDXGISwapChain1) -> HRESULT #cpp_method;
}

IDXGIFactory3VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory2VTable;

    GetCreationFlags : (this : *IDXGIFactory3) -> u32 #cpp_method;
}

IDXGIFactory4VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory3VTable;

    EnumAdapterByLuid : (this : *IDXGIFactory4, AdapterLuid : LUID, riid : *GUID, ppvAdapter : **void) -> HRESULT #cpp_method;
    EnumWarpAdapter : (this : *IDXGIFactory4, riid : *GUID, ppvAdapter : **void) -> HRESULT #cpp_method;
}

IDXGIFactory5VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory4VTable;

    CheckFeatureSupport : (this : *IDXGIFactory5, Feature : DXGI_FEATURE, pFeatureSupportData : *void, FeatureSupportDataSize : u32) -> HRESULT #cpp_method;
}

IDXGIFactory6VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory5VTable;

    EnumAdapterByGpuPreference : (this : *IDXGIFactory6, Adapter : u32, GpuPreference : DXGI_GPU_PREFERENCE, riid : *GUID, ppvAdapter : **void) -> HRESULT #cpp_method;
}

IDXGIFactory7VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIFactory6VTable;

    RegisterAdaptersChangedEvent : (this : *IDXGIFactory7, hEvent : HANDLE, pdwCookie : *u32) -> HRESULT #cpp_method;
    UnregisterAdaptersChangedEvent : (this : *IDXGIFactory7, dwCookie : u32) -> HRESULT #cpp_method;
}

IDXGIFactoryMediaVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    CreateSwapChainForCompositionSurfaceHandle : (this : *IDXGIFactoryMedia, pDevice : *IUnknown, hSurface : HANDLE, pDesc : *DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput : *IDXGIOutput, ppSwapChain : **IDXGISwapChain1) -> HRESULT #cpp_method;
    CreateDecodeSwapChainForCompositionSurfaceHandle : (this : *IDXGIFactoryMedia, pDevice : *IUnknown, hSurface : HANDLE, pDesc : *DXGI_DECODE_SWAP_CHAIN_DESC, pYuvDecodeBuffers : *IDXGIResource, pRestrictToOutput : *IDXGIOutput, ppSwapChain : **IDXGIDecodeSwapChain) -> HRESULT #cpp_method;
}

IDXGIInfoQueueVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    SetMessageCountLimit : (this : *IDXGIInfoQueue, Producer : GUID, MessageCountLimit : u64) -> HRESULT #cpp_method;
    ClearStoredMessages : (this : *IDXGIInfoQueue, Producer : GUID) #cpp_method;
    GetMessage : (this : *IDXGIInfoQueue, Producer : GUID, MessageIndex : u64, pMessage : *DXGI_INFO_QUEUE_MESSAGE, pMessageByteLength : *u64) -> HRESULT #cpp_method;
    GetNumStoredMessagesAllowedByRetrievalFilters : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    GetNumStoredMessages : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    GetNumMessagesDiscardedByMessageCountLimit : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    GetMessageCountLimit : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    GetNumMessagesAllowedByStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    GetNumMessagesDeniedByStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> u64 #cpp_method;
    AddStorageFilterEntries : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #cpp_method;
    GetStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER, pFilterByteLength : *u64) -> HRESULT #cpp_method;
    ClearStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) #cpp_method;
    PushEmptyStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushDenyAllStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushCopyOfStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #cpp_method;
    PopStorageFilter : (this : *IDXGIInfoQueue, Producer : GUID) #cpp_method;
    GetStorageFilterStackSize : (this : *IDXGIInfoQueue, Producer : GUID) -> u32 #cpp_method;
    AddRetrievalFilterEntries : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #cpp_method;
    GetRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER, pFilterByteLength : *u64) -> HRESULT #cpp_method;
    ClearRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID) #cpp_method;
    PushEmptyRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushDenyAllRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushCopyOfRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID) -> HRESULT #cpp_method;
    PushRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID, pFilter : *DXGI_INFO_QUEUE_FILTER) -> HRESULT #cpp_method;
    PopRetrievalFilter : (this : *IDXGIInfoQueue, Producer : GUID) #cpp_method;
    GetRetrievalFilterStackSize : (this : *IDXGIInfoQueue, Producer : GUID) -> u32 #cpp_method;
    AddMessage : (this : *IDXGIInfoQueue, Producer : GUID, Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY, ID : s32, pDescription : PSTR) -> HRESULT #cpp_method;
    AddApplicationMessage : (this : *IDXGIInfoQueue, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY, pDescription : PSTR) -> HRESULT #cpp_method;
    SetBreakOnCategory : (this : *IDXGIInfoQueue, Producer : GUID, Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY, bEnable : BOOL) -> HRESULT #cpp_method;
    SetBreakOnSeverity : (this : *IDXGIInfoQueue, Producer : GUID, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY, bEnable : BOOL) -> HRESULT #cpp_method;
    SetBreakOnID : (this : *IDXGIInfoQueue, Producer : GUID, ID : s32, bEnable : BOOL) -> HRESULT #cpp_method;
    GetBreakOnCategory : (this : *IDXGIInfoQueue, Producer : GUID, Category : DXGI_INFO_QUEUE_MESSAGE_CATEGORY) -> BOOL #cpp_method;
    GetBreakOnSeverity : (this : *IDXGIInfoQueue, Producer : GUID, Severity : DXGI_INFO_QUEUE_MESSAGE_SEVERITY) -> BOOL #cpp_method;
    GetBreakOnID : (this : *IDXGIInfoQueue, Producer : GUID, ID : s32) -> BOOL #cpp_method;
    SetMuteDebugOutput : (this : *IDXGIInfoQueue, Producer : GUID, bMute : BOOL) #cpp_method;
    GetMuteDebugOutput : (this : *IDXGIInfoQueue, Producer : GUID) -> BOOL #cpp_method;
}

IDXGIKeyedMutexVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDeviceSubObjectVTable;

    AcquireSync : (this : *IDXGIKeyedMutex, Key : u64, dwMilliseconds : u32) -> HRESULT #cpp_method;
    ReleaseSync : (this : *IDXGIKeyedMutex, Key : u64) -> HRESULT #cpp_method;
}

IDXGIObjectVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    SetPrivateData : (this : *IDXGIObject, Name : *GUID, DataSize : u32, pData : *void) -> HRESULT #cpp_method;
    SetPrivateDataInterface : (this : *IDXGIObject, Name : *GUID, pUnknown : *IUnknown) -> HRESULT #cpp_method;
    GetPrivateData : (this : *IDXGIObject, Name : *GUID, pDataSize : *u32, pData : *void) -> HRESULT #cpp_method;
    GetParent : (this : *IDXGIObject, riid : *GUID, ppParent : **void) -> HRESULT #cpp_method;
}

IDXGIOutputVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    GetDesc : (this : *IDXGIOutput, pDesc : *DXGI_OUTPUT_DESC) -> HRESULT #cpp_method;
    GetDisplayModeList : (this : *IDXGIOutput, EnumFormat : DXGI_FORMAT, Flags : u32, pNumModes : *u32, pDesc : *DXGI_MODE_DESC) -> HRESULT #cpp_method;
    FindClosestMatchingMode : (this : *IDXGIOutput, pModeToMatch : *DXGI_MODE_DESC, pClosestMatch : *DXGI_MODE_DESC, pConcernedDevice : *IUnknown) -> HRESULT #cpp_method;
    WaitForVBlank : (this : *IDXGIOutput) -> HRESULT #cpp_method;
    TakeOwnership : (this : *IDXGIOutput, pDevice : *IUnknown, Exclusive : BOOL) -> HRESULT #cpp_method;
    ReleaseOwnership : (this : *IDXGIOutput) #cpp_method;
    GetGammaControlCapabilities : (this : *IDXGIOutput, pGammaCaps : *DXGI_GAMMA_CONTROL_CAPABILITIES) -> HRESULT #cpp_method;
    SetGammaControl : (this : *IDXGIOutput, pArray : *DXGI_GAMMA_CONTROL) -> HRESULT #cpp_method;
    GetGammaControl : (this : *IDXGIOutput, pArray : *DXGI_GAMMA_CONTROL) -> HRESULT #cpp_method;
    SetDisplaySurface : (this : *IDXGIOutput, pScanoutSurface : *IDXGISurface) -> HRESULT #cpp_method;
    GetDisplaySurfaceData : (this : *IDXGIOutput, pDestination : *IDXGISurface) -> HRESULT #cpp_method;
    GetFrameStatistics : (this : *IDXGIOutput, pStats : *DXGI_FRAME_STATISTICS) -> HRESULT #cpp_method;
}

IDXGIOutput1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutputVTable;

    GetDisplayModeList1 : (this : *IDXGIOutput1, EnumFormat : DXGI_FORMAT, Flags : u32, pNumModes : *u32, pDesc : *DXGI_MODE_DESC1) -> HRESULT #cpp_method;
    FindClosestMatchingMode1 : (this : *IDXGIOutput1, pModeToMatch : *DXGI_MODE_DESC1, pClosestMatch : *DXGI_MODE_DESC1, pConcernedDevice : *IUnknown) -> HRESULT #cpp_method;
    GetDisplaySurfaceData1 : (this : *IDXGIOutput1, pDestination : *IDXGIResource) -> HRESULT #cpp_method;
    DuplicateOutput : (this : *IDXGIOutput1, pDevice : *IUnknown, ppOutputDuplication : **IDXGIOutputDuplication) -> HRESULT #cpp_method;
}

IDXGIOutput2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutput1VTable;

    SupportsOverlays : (this : *IDXGIOutput2) -> BOOL #cpp_method;
}

IDXGIOutput3VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutput2VTable;

    CheckOverlaySupport : (this : *IDXGIOutput3, EnumFormat : DXGI_FORMAT, pConcernedDevice : *IUnknown, pFlags : *u32) -> HRESULT #cpp_method;
}

IDXGIOutput4VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutput3VTable;

    CheckOverlayColorSpaceSupport : (this : *IDXGIOutput4, Format : DXGI_FORMAT, ColorSpace : DXGI_COLOR_SPACE_TYPE, pConcernedDevice : *IUnknown, pFlags : *u32) -> HRESULT #cpp_method;
}

IDXGIOutput5VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutput4VTable;

    DuplicateOutput1 : (this : *IDXGIOutput5, pDevice : *IUnknown, Flags : u32, SupportedFormatsCount : u32, pSupportedFormats : *DXGI_FORMAT, ppOutputDuplication : **IDXGIOutputDuplication) -> HRESULT #cpp_method;
}

IDXGIOutput6VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIOutput5VTable;

    GetDesc1 : (this : *IDXGIOutput6, pDesc : *DXGI_OUTPUT_DESC1) -> HRESULT #cpp_method;
    CheckHardwareCompositionSupport : (this : *IDXGIOutput6, pFlags : *u32) -> HRESULT #cpp_method;
}

IDXGIOutputDuplicationVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIObjectVTable;

    GetDesc : (this : *IDXGIOutputDuplication, pDesc : *DXGI_OUTDUPL_DESC) #cpp_method;
    AcquireNextFrame : (this : *IDXGIOutputDuplication, TimeoutInMilliseconds : u32, pFrameInfo : *DXGI_OUTDUPL_FRAME_INFO, ppDesktopResource : **IDXGIResource) -> HRESULT #cpp_method;
    GetFrameDirtyRects : (this : *IDXGIOutputDuplication, DirtyRectsBufferSize : u32, pDirtyRectsBuffer : *RECT, pDirtyRectsBufferSizeRequired : *u32) -> HRESULT #cpp_method;
    GetFrameMoveRects : (this : *IDXGIOutputDuplication, MoveRectsBufferSize : u32, pMoveRectBuffer : *DXGI_OUTDUPL_MOVE_RECT, pMoveRectsBufferSizeRequired : *u32) -> HRESULT #cpp_method;
    GetFramePointerShape : (this : *IDXGIOutputDuplication, PointerShapeBufferSize : u32, pPointerShapeBuffer : *void, pPointerShapeBufferSizeRequired : *u32, pPointerShapeInfo : *DXGI_OUTDUPL_POINTER_SHAPE_INFO) -> HRESULT #cpp_method;
    MapDesktopSurface : (this : *IDXGIOutputDuplication, pLockedRect : *DXGI_MAPPED_RECT) -> HRESULT #cpp_method;
    UnMapDesktopSurface : (this : *IDXGIOutputDuplication) -> HRESULT #cpp_method;
    ReleaseFrame : (this : *IDXGIOutputDuplication) -> HRESULT #cpp_method;
}

IDXGIResourceVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDeviceSubObjectVTable;

    GetSharedHandle : (this : *IDXGIResource, pSharedHandle : *HANDLE) -> HRESULT #cpp_method;
    GetUsage : (this : *IDXGIResource, pUsage : *u32) -> HRESULT #cpp_method;
    SetEvictionPriority : (this : *IDXGIResource, EvictionPriority : DXGI_RESOURCE_PRIORITY) -> HRESULT #cpp_method;
    GetEvictionPriority : (this : *IDXGIResource, pEvictionPriority : *u32) -> HRESULT #cpp_method;
}

IDXGIResource1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGIResourceVTable;

    CreateSubresourceSurface : (this : *IDXGIResource1, index : u32, ppSurface : **IDXGISurface2) -> HRESULT #cpp_method;
    CreateSharedHandle : (this : *IDXGIResource1, pAttributes : *SECURITY_ATTRIBUTES, dwAccess : u32, lpName : PWSTR, pHandle : *HANDLE) -> HRESULT #cpp_method;
}

IDXGISurfaceVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDeviceSubObjectVTable;

    GetDesc : (this : *IDXGISurface, pDesc : *DXGI_SURFACE_DESC) -> HRESULT #cpp_method;
    Map : (this : *IDXGISurface, pLockedRect : *DXGI_MAPPED_RECT, MapFlags : u32) -> HRESULT #cpp_method;
    Unmap : (this : *IDXGISurface) -> HRESULT #cpp_method;
}

IDXGISurface1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISurfaceVTable;

    GetDC : (this : *IDXGISurface1, Discard : BOOL, phdc : *HDC) -> HRESULT #cpp_method;
    ReleaseDC : (this : *IDXGISurface1, pDirtyRect : *RECT) -> HRESULT #cpp_method;
}

IDXGISurface2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISurface1VTable;

    GetResource : (this : *IDXGISurface2, riid : *GUID, ppParentResource : **void, pSubresourceIndex : *u32) -> HRESULT #cpp_method;
}

IDXGISwapChainVTable :: struct
{
    #as using, except(.["base"]) base : IDXGIDeviceSubObjectVTable;

    Present : (this : *IDXGISwapChain, SyncInterval : u32, Flags : u32) -> HRESULT #cpp_method;
    GetBuffer : (this : *IDXGISwapChain, Buffer : u32, riid : *GUID, ppSurface : **void) -> HRESULT #cpp_method;
    SetFullscreenState : (this : *IDXGISwapChain, Fullscreen : BOOL, pTarget : *IDXGIOutput) -> HRESULT #cpp_method;
    GetFullscreenState : (this : *IDXGISwapChain, pFullscreen : *BOOL, ppTarget : **IDXGIOutput) -> HRESULT #cpp_method;
    GetDesc : (this : *IDXGISwapChain, pDesc : *DXGI_SWAP_CHAIN_DESC) -> HRESULT #cpp_method;
    ResizeBuffers : (this : *IDXGISwapChain, BufferCount : u32, Width : u32, Height : u32, NewFormat : DXGI_FORMAT, SwapChainFlags : u32) -> HRESULT #cpp_method;
    ResizeTarget : (this : *IDXGISwapChain, pNewTargetParameters : *DXGI_MODE_DESC) -> HRESULT #cpp_method;
    GetContainingOutput : (this : *IDXGISwapChain, ppOutput : **IDXGIOutput) -> HRESULT #cpp_method;
    GetFrameStatistics : (this : *IDXGISwapChain, pStats : *DXGI_FRAME_STATISTICS) -> HRESULT #cpp_method;
    GetLastPresentCount : (this : *IDXGISwapChain, pLastPresentCount : *u32) -> HRESULT #cpp_method;
}

IDXGISwapChain1VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISwapChainVTable;

    GetDesc1 : (this : *IDXGISwapChain1, pDesc : *DXGI_SWAP_CHAIN_DESC1) -> HRESULT #cpp_method;
    GetFullscreenDesc : (this : *IDXGISwapChain1, pDesc : *DXGI_SWAP_CHAIN_FULLSCREEN_DESC) -> HRESULT #cpp_method;
    GetHwnd : (this : *IDXGISwapChain1, pHwnd : *HWND) -> HRESULT #cpp_method;
    GetCoreWindow : (this : *IDXGISwapChain1, refiid : *GUID, ppUnk : **void) -> HRESULT #cpp_method;
    Present1 : (this : *IDXGISwapChain1, SyncInterval : u32, PresentFlags : u32, pPresentParameters : *DXGI_PRESENT_PARAMETERS) -> HRESULT #cpp_method;
    IsTemporaryMonoSupported : (this : *IDXGISwapChain1) -> BOOL #cpp_method;
    GetRestrictToOutput : (this : *IDXGISwapChain1, ppRestrictToOutput : **IDXGIOutput) -> HRESULT #cpp_method;
    SetBackgroundColor : (this : *IDXGISwapChain1, pColor : *DXGI_RGBA) -> HRESULT #cpp_method;
    GetBackgroundColor : (this : *IDXGISwapChain1, pColor : *DXGI_RGBA) -> HRESULT #cpp_method;
    SetRotation : (this : *IDXGISwapChain1, Rotation : DXGI_MODE_ROTATION) -> HRESULT #cpp_method;
    GetRotation : (this : *IDXGISwapChain1, pRotation : *DXGI_MODE_ROTATION) -> HRESULT #cpp_method;
}

IDXGISwapChain2VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISwapChain1VTable;

    SetSourceSize : (this : *IDXGISwapChain2, Width : u32, Height : u32) -> HRESULT #cpp_method;
    GetSourceSize : (this : *IDXGISwapChain2, pWidth : *u32, pHeight : *u32) -> HRESULT #cpp_method;
    SetMaximumFrameLatency : (this : *IDXGISwapChain2, MaxLatency : u32) -> HRESULT #cpp_method;
    GetMaximumFrameLatency : (this : *IDXGISwapChain2, pMaxLatency : *u32) -> HRESULT #cpp_method;
    GetFrameLatencyWaitableObject : (this : *IDXGISwapChain2) -> HANDLE #cpp_method;
    SetMatrixTransform : (this : *IDXGISwapChain2, pMatrix : *DXGI_MATRIX_3X2_F) -> HRESULT #cpp_method;
    GetMatrixTransform : (this : *IDXGISwapChain2, pMatrix : *DXGI_MATRIX_3X2_F) -> HRESULT #cpp_method;
}

IDXGISwapChain3VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISwapChain2VTable;

    GetCurrentBackBufferIndex : (this : *IDXGISwapChain3) -> u32 #cpp_method;
    CheckColorSpaceSupport : (this : *IDXGISwapChain3, ColorSpace : DXGI_COLOR_SPACE_TYPE, pColorSpaceSupport : *u32) -> HRESULT #cpp_method;
    SetColorSpace1 : (this : *IDXGISwapChain3, ColorSpace : DXGI_COLOR_SPACE_TYPE) -> HRESULT #cpp_method;
    ResizeBuffers1 : (this : *IDXGISwapChain3, BufferCount : u32, Width : u32, Height : u32, Format : DXGI_FORMAT, SwapChainFlags : u32, pCreationNodeMask : *u32, ppPresentQueue : **IUnknown) -> HRESULT #cpp_method;
}

IDXGISwapChain4VTable :: struct
{
    #as using, except(.["base"]) base : IDXGISwapChain3VTable;

    SetHDRMetaData : (this : *IDXGISwapChain4, _Type : DXGI_HDR_METADATA_TYPE, Size : u32, pMetaData : *void) -> HRESULT #cpp_method;
}

IDXGISwapChainMediaVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    GetFrameStatisticsMedia : (this : *IDXGISwapChainMedia, pStats : *DXGI_FRAME_STATISTICS_MEDIA) -> HRESULT #cpp_method;
    SetPresentDuration : (this : *IDXGISwapChainMedia, Duration : u32) -> HRESULT #cpp_method;
    CheckPresentDurationSupport : (this : *IDXGISwapChainMedia, DesiredPresentDuration : u32, pClosestSmallerPresentDuration : *u32, pClosestLargerPresentDuration : *u32) -> HRESULT #cpp_method;
}

IDXGraphicsAnalysisVTable :: struct
{
    #as using, except(.["base"]) base : IUnknownVTable;

    BeginCapture : (this : *IDXGraphicsAnalysis) #cpp_method;
    EndCapture : (this : *IDXGraphicsAnalysis) #cpp_method;
}

// System libraries

#scope_file

dxgi :: #system_library "dxgi";

