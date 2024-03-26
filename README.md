# [Jai-Win32](https://github.com/ostef/Jai-Win32)

Win32 auto-generated bindings for the Jai programming language.

`> git clone https://github.com/ostef/Jai-Win32 Win32`

This module uses the metadata from Microsoft to generate the bindings: https://github.com/marlersoft/win32json, as well as my fork of the Jaison library to parse Json files: https://github.com/ostef/jaison.
Ideally we wouldn't be relying on those Json files, since all the API metadata is present on Windows machines, which we can read ourselves. For now we live with this dependency but the plan for the future is to read those metadata files directly.

## How to generate
This generator does not execute at compile time by default because parsing the API metadata is very slow.

`> jai generate.jai && generate`

## How to use
There are two ways to import this module. The first and most straightforward way is to import the part of the Win32 API that you want directly (e.g. `#import "Win32/Memory"`)

The other way is to import Win32 and choose the parts of the Win32 API using module parameters (e.g. `#import "Win32" (Memory = true)`).
The advantage of this is that you can namespace the Win32 APIs under the same name for convenience:
`Win32 :: #import "Win32" (Memory = true, Threads = true)` will import Basics, Memory and Threads stuff into a Win32 namespace.

The only modules that you cannot import like this are the DXGI, DXC, Direct3D and Direct3D12 modules, since these are not typically modules that you would namespace. See Examples/direct3d12.jai
