#import "Basic";

#import "DirectX/DXGI";
#import "DirectX/Direct3D";
#import "DirectX/Direct3D12";

main :: ()
{
    factory : *IDXGIFactory4;
    debug_controller : *ID3D12Debug3;

    dxgi_factory_flags : u32;

    dc : *ID3D12Debug;
    if D3D12GetDebugInterface (*dc.UUID, xx *dc) >= 0
    {
        if dc.QueryInterface (dc, debug_controller.UUID, xx *debug_controller) >= 0
        {
            dxgi_factory_flags |= DXGI_CREATE_FACTORY_DEBUG;

            debug_controller.EnableDebugLayer (debug_controller);
            debug_controller.SetEnableGPUBasedValidation (debug_controller, 1);
        }
        else
        {
            print ("QueryInterface failed for %\n", type_of (debug_controller));
        }

        dc.Release (dc);
        dc = null;
    }

    result := CreateDXGIFactory2 (dxgi_factory_flags, *factory.UUID, xx *factory);
}
