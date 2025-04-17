@echo off

g++ -static -std=c++17 -O3 -o batify.exe batify.cpp

cd bat_scripts_to_test

rem ..\batify.exe .\test_colon.bat
rem ..\batify.exe .\create_test_colon.bat
rem ..\batify.exe .\create_create_test_colon.bat
rem ..\batify.exe .\create_create_create_test_colon.bat

rem ..\batify.exe .\test_rem.bat
rem ..\batify.exe .\create_test_rem.bat
rem ..\batify.exe .\create_create_test_rem.bat
rem ..\batify.exe .\create_create_create_test_rem.bat