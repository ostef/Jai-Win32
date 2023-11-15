# Jai Win32
Win32 bindings generator for the Jai programming language.

This module uses the metadata from Microsoft to generate the bindings: https://github.com/marlersoft/win32json, as well as my fork of the Jaison library to parse Json files: https://github.com/ostef/jaison

## Overview

Usage: `jai generate.jai - module_names [options]`\
A module name can end with a * to indicate a wildcard

Valid options are:
* `-arch ARCHITECTURE` (ARCHITECTURE must be one of X64, Arm64, X86)
* `-clean` (delete the Generated directory and its contents)
* `-import_GL` (import GL module to check for name clashes with Graphics.OpenGL)
* `-exe` (compile this into an executable; for now this removes the ability to compile the generated code automatically)

The generator will automatically compile the code that was generated, so you can easily catch and fix errors.

## Filtering

You can also filter things that cause problems or that you don't need by adding them to a filter.json file (simple wildcards are allowed).
This is useful especially for big modules such as Foundation, where there are certain things that are particularly useful, and lots of others that are not at all.

You can ignore everything using a * and hand-pick what to generate, so that only these things will generate.

A thing to keep in mind is that if something is in Ignore, it will still get generated if it is a dependency needed for another module.

Example:
```
[
    {
        "ModuleName":"Foundation",
        "Ignore":[
            "*"
        ],
        "AlwaysGenerate":[
            "INVALID_HANDLE_VALUE",
            "ERROR_*",
            "E_*"
        ]
    },
    {
        "ModuleName":"Graphics.OpenGL",
        "Ignore":[
            "GL_*",
            "gl*"
        ],
        "AlwaysGenerate":[
        ]
    }
    {
        "ModuleName":"*",
        "Ignore":[
            "AreShortNamesEnabled",
            "GetTempPath2*",
            "api-ms-win-core-ioring-l1-1-0",
            "api-ms-win-core-memory-l1-1-8"
        ],
        "AlwaysGenerate":[
        ]
    }
]
```
