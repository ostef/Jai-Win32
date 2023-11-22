@echo off

jai generate.jai - -clean ^
    Foundation ^
    System.Console ^
    System.Memory ^
    System.Performance ^
    System.Time ^
    System.LibraryLoader ^
    System.SystemInformation ^
    Storage.FileSystem ^
    UI.WindowsAndMessaging ^
    Graphics.Gdi ^
    Graphics.OpenGL

type Generated\*.jai 2> nul | find /c /v ""
