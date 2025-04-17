# Batify

CLI tool for creating batch script generators.

## Building

Run `build_batify.bat` or compile with `g++ -static -std=c++17 -O3 -o batify.exe batify.cpp`.

## Usage

Running `batify <input>.bat` creates a batch script named `create_<input>.bat` which, when run, creates `generated_<input>.bat`.

## Warning

Nested batifying like in the comments of `build.bat` may have horrifying results...