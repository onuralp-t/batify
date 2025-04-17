@echo off
        
rem .cpp .exe NAMES
set SRC_NAMES=main.cpp
set EXE_NAME=main.exe

set exe=-o %EXE_NAME%
set asm=-S -masm=intel

rem Flags to put before source code, specify executable or assembly
set before_flags=-static -std=c++23 -O2 %exe%

rem Include directories
set include1=C:\dev\libraries\raylib\src
set include_dir=-I"%include1%"

rem Library directories
set lib1=C:\dev\libraries\raylib\src
set lib_dir=-L"%lib1%"

rem Libraries to link
set linking=-l:libraylib.a -lopengl32 -lgdi32 -lwinmm

@echo on
g++ %before_flags% %SRC_NAMES% %include_dir% %lib_dir% %linking%
@echo off

@echo off
%EXE_NAME% && del %EXE_NAME%
