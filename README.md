# Jai Win32
Win32 bindings generator for the Jai programming language.

This module uses the metadata from Microsoft to generate the bindings: https://github.com/marlersoft/win32json, as well as my fork of the Jaison library to parse Json files: https://github.com/ostef/jaison

Usage: `jai generate.jai - module_names`

A module name can end with a `*` to match all modules starting with what is before the `*`

You can also ignore types, functions and libraries that cause problems or that you don't need by adding them to a blacklist.json file.

Example:
```
[
    {"Type":"GENERIC_MAPPING"},
    {"Function":"AreShortNamesEnabled"},
    {"DllImport":"api-ms-win-core-ioring-l1-1-0"}
]
```
