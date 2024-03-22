# [Jai-Win32](https://github.com/ostef/Jai-Win32)

Win32 auto-generated bindings for the Jai programming language.

This module uses the metadata from Microsoft to generate the bindings: https://github.com/marlersoft/win32json, as well as my fork of the Jaison library to parse Json files: https://github.com/ostef/jaison.
Ideally we wouldn't be relying on those Json files, since all the API metadata is present on Windows machines, which we can read ourselves. For now we live with this dependency but the plan for the future is to read those metadata files directly.

## How to generate
This generator does not execute at compile time by default because parsing the API metadata is very slow.

`jai generate.jai && generate`

## How to use
This module is divided into different submodules, but importing these individually is inconvenient because you would not be able to namespace them with the same name.

For ease of use there is a base sentinel module that you import with the name "Win32", and you select what parts of the Win32 API you want using module parameters. See module.jai and example files for more information.

The sentinel module #imports the other modules instead of #loading them to prevent different instantiations of Win32 to create duplicate symbols.

The only exception to this is the DXGI, Direct3D and Direct3D12 modules, since these are not typically modules that you would namespace. See Examples/direct3d12.jai
