@echo off
> generated_create_create_test_colon.bat (
echo @echo off
echo ^> generated_create_test_colon.bat ^(
echo echo @echo off
echo echo ^^^> generated_test_colon.bat ^^^(
echo echo echo @echo off
echo echo echo.        
echo echo echo ^^^^^^^:^^^^^^^: .cpp .exe NAMES
echo echo echo set SRC_NAMES^^^^^^^=main.cpp
echo echo echo set EXE_NAME^^^^^^^=main.exe
echo echo echo.
echo echo echo set exe^^^^^^^=-o %%%%%%%%EXE_NAME%%%%%%%%
echo echo echo set asm^^^^^^^=-S -masm^^^^^^^=intel
echo echo echo.
echo echo echo ^^^^^^^:^^^^^^^: Flags to put before source code, specify executable or assembly
echo echo echo set before_flags^^^^^^^=-static -std^^^^^^^=c++23 -O2 %%%%%%%%exe%%%%%%%%
echo echo echo.
echo echo echo ^^^^^^^:^^^^^^^: Include directories
echo echo echo set include1^^^^^^^=C^^^^^^^:\dev\libraries\raylib\src
echo echo echo set include_dir^^^^^^^=-I"%%%%%%%%include1%%%%%%%%"
echo echo echo.
echo echo echo ^^^^^^^:^^^^^^^: Library directories
echo echo echo set lib1^^^^^^^=C^^^^^^^:\dev\libraries\raylib\src
echo echo echo set lib_dir^^^^^^^=-L"%%%%%%%%lib1%%%%%%%%"
echo echo echo.
echo echo echo ^^^^^^^:^^^^^^^: Libraries to link
echo echo echo set linking^^^^^^^=-l^^^^^^^:libraylib.a -lopengl32 -lgdi32 -lwinmm
echo echo echo.
echo echo echo @echo on
echo echo echo g++ %%%%%%%%before_flags%%%%%%%% %%%%%%%%SRC_NAMES%%%%%%%% %%%%%%%%include_dir%%%%%%%% %%%%%%%%lib_dir%%%%%%%% %%%%%%%%linking%%%%%%%%
echo echo echo @echo off
echo echo echo.
echo echo echo @echo off
echo echo echo %%%%%%%%EXE_NAME%%%%%%%% ^^^^^^^&^^^^^^^& del %%%%%%%%EXE_NAME%%%%%%%%
echo echo ^^^)
echo ^)
)