#import "Basic";

Win32 :: #import "Win32";
#import "DirectX/DXGI";
#import "DirectX/Direct3D";
#import "DirectX/Direct3D12";

GraphicsContext :: struct
{
    factory : *IDXGIFactory4;
    device : *ID3D12Device8;
    debug_device : *ID3D12DebugDevice2;
    command_queue : *ID3D12CommandQueue;
    command_allocator : *ID3D12CommandAllocator;
}

InitGraphicsContext :: (using ctx : *GraphicsContext, $Debug := true) -> bool
{
    dxgi_factory_flags : u32;

    #if Debug
    {
        dc : *ID3D12Debug;
        if D3D12GetDebugInterface (dc.UUID, xx *dc) >= 0
        {
            dxgi_factory_flags |= DXGI_CREATE_FACTORY_DEBUG;

            dc.EnableDebugLayer (dc);
            print ("D3D12: Enabled debug layer\n");

            dc.Release (dc);
            dc = null;
        }
    }

    result := CreateDXGIFactory2 (dxgi_factory_flags, factory.UUID, xx *factory);
    if result < 0
        return false;

    // Find best suited adapter and create device
    adapter_index : u32 = 0;
    adapter, best_adapter : *IDXGIAdapter4;
    while factory.EnumAdapters1 (factory, adapter_index, xx *adapter) != DXGI_ERROR_NOT_FOUND
    {
        defer adapter_index += 1;

        adapter_desc : DXGI_ADAPTER_DESC1;
        adapter.GetDesc1 (adapter, *adapter_desc);

        #if Debug
        {
            description_text := WideToUtf8 (adapter_desc.Description.data,, temp);
            print (
#string END
D3D12: Found adapter %:
  vendor id: %
  device id: %
  dedicated video mem:  % MB
  dedicated system mem: % MB
  shared system mem:    % MB
  flags: %

END,
                description_text,
                adapter_desc.VendorId,
                adapter_desc.DeviceId,
                adapter_desc.DedicatedVideoMemory / (1024 * 1024),
                adapter_desc.DedicatedSystemMemory / (1024 * 1024),
                adapter_desc.SharedSystemMemory / (1024 * 1024),
                cast (DXGI_ADAPTER_FLAG) adapter_desc.Flags
            );
        }

        if !best_adapter
        {
            best_adapter = adapter;
        }
        else
        {
            adapter_is_better : bool;

            best_adapter_desc : DXGI_ADAPTER_DESC1;
            best_adapter.GetDesc1 (best_adapter, *best_adapter_desc);

            if !(adapter_desc.Flags & DXGI_ADAPTER_FLAG_SOFTWARE) && (best_adapter_desc.Flags & DXGI_ADAPTER_FLAG_SOFTWARE)
                adapter_is_better = true;

            if adapter_desc.DedicatedVideoMemory > best_adapter_desc.DedicatedVideoMemory
                adapter_is_better = true;

            if adapter_is_better
            {
                best_adapter.Release (best_adapter);
                best_adapter = adapter;
            }
        }
    }

    adapter = null;
    best_adapter_desc : DXGI_ADAPTER_DESC1;
    best_adapter.GetDesc1 (best_adapter, *best_adapter_desc);
    print ("D3D12: Using adapter %\n", WideToUtf8 (best_adapter_desc.Description.data,, temp));

    result = D3D12CreateDevice (best_adapter, D3D_FEATURE_LEVEL_12_0, device.UUID, xx *device);
    if result < 0
        return false;

    best_adapter.Release (best_adapter);

    #if Debug
        print ("D3D12: Created device\n");

    #if Debug
    {
        result = device.QueryInterface (device, debug_device.UUID, xx *debug_device);
        if result < 0
            print ("D3D12: Could not create debug device\n");
    }

    // Create command queue and allocator
    queue_desc : D3D12_COMMAND_QUEUE_DESC;
    queue_desc.Flags = D3D12_COMMAND_QUEUE_FLAG_NONE;
    queue_desc._Type = D3D12_COMMAND_LIST_TYPE_DIRECT;

    result = device.CreateCommandQueue (device, *queue_desc, command_queue.UUID, xx *command_queue);
    if result < 0
        return false;

    result = device.CreateCommandAllocator (device, queue_desc._Type, command_allocator.UUID, xx *command_allocator);
    if result < 0
        return false;

    #if Debug
        print ("D3D12: Created command queue and allocator\n");

    return true;
}

main :: ()
{
    ctx : GraphicsContext;
    if !InitGraphicsContext (*ctx)
        print ("Could not initialize D3D12\n");
}

// The result is null terminated even though a Jai string is returned
WideToUtf8 :: (data : *u16) -> string #must, success : bool
{
    result_length := Win32.WideCharToMultiByte (Win32.CP_UTF8, 0, data, -1, null, 0, null, null);
    if result_length <= 0
        return "", false;

    utf8_data := cast (*u8) alloc (result_length);

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
Utf8ToWide :: (utf8_str : string) -> wide_str : *u16 #must, length : s32
{
    if !utf8_str
    {
        wide_str := cast (*u16) alloc (size_of (u16));
        wide_str[0] = 0;

        return wide_str, 0;
    }

    result_length := Win32.MultiByteToWideChar (Win32.CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, null, 0);
    if result_length <= 0
        return null, 0;

    wide_str := cast (*u16) alloc ((result_length + 1) * size_of (u16));
    written := Win32.MultiByteToWideChar (Win32.CP_UTF8, 0, utf8_str.data, cast (s32) utf8_str.count, wide_str, result_length);
    if written > 0
    {
        wide_str[written] = 0;

        return wide_str, written;
    }

    return null, 0;
}
