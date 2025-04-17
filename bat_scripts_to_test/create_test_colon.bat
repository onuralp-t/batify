@echo off
> generated_test_colon.bat (
echo @echo off
echo.        
echo ^:^: .cpp .exe NAMES
echo set SRC_NAMES^=main.cpp
echo set EXE_NAME^=main.exe
echo.
echo set exe^=-o %%EXE_NAME%%
echo set asm^=-S -masm^=intel
echo.
echo ^:^: Flags to put before source code, specify executable or assembly
echo set before_flags^=-static -std^=c++23 -O2 %%exe%%
echo.
echo ^:^: Include directories
echo set include1^=C^:\dev\libraries\raylib\src
echo set include_dir^=-I"%%include1%%"
echo.
echo ^:^: Library directories
echo set lib1^=C^:\dev\libraries\raylib\src
echo set lib_dir^=-L"%%lib1%%"
echo.
echo ^:^: Libraries to link
echo set linking^=-l^:libraylib.a -lopengl32 -lgdi32 -lwinmm
echo.
echo @echo on
echo g++ %%before_flags%% %%SRC_NAMES%% %%include_dir%% %%lib_dir%% %%linking%%
echo @echo off
echo.
echo @echo off
echo %%EXE_NAME%% ^&^& del %%EXE_NAME%%
)