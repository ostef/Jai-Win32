// Sentinel module, to import different Windows stuff under the same namespace

#module_parameters(
    Threads := false,
    Time := false,
    Console := false,
    File_System := false,
    Memory := false,
    GDI_Basics := false,
    Windows_And_Messaging := false,
    WGL := false,
    Library_Loader := false,
    Input := false,
    HiDpi := false
);

#scope_file

_Basics     :: #import "Win32/Basics";

#if Threads
    _Threads    :: #import "Win32/Threads";
#if Time
    _Time       :: #import "Win32/Time";
#if Console
    _Console    :: #import "Win32/Console";
#if File_System
    _File_System :: #import "Win32/File_System";
#if Memory
    _Memory     :: #import "Win32/Memory";
#if GDI_Basics
    _GDI_Basics :: #import "Win32/GDI_Basics";
#if Windows_And_Messaging
    _Windows_And_Messaging :: #import "Win32/Windows_And_Messaging";
#if WGL
    _WGL :: #import "Win32/WGL";
#if Library_Loader
    _Library_Loader :: #import "Win32/Library_Loader";
#if Input
    _Input :: #import "Win32/Input";
#if HiDpi
    _HiDpi :: #import "Win32/HiDpi";

#scope_export

using _Basics;

#if Threads
    using _Threads;
#if Time
    using _Time;
#if Console
    using _Console;
#if File_System
    using _File_System;
#if Memory
    using _Memory;
#if GDI_Basics
    using _GDI_Basics;
#if Windows_And_Messaging
    using _Windows_And_Messaging;
#if WGL
    using _WGL;
#if Library_Loader
    using _Library_Loader;
#if Input
    using _Input;
#if HiDpi
    using _HiDpi;
