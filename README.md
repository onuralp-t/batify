# Batify

* CLI tool for creating batch script generators.

## Building

* Run `build.bat` or compile with `g++ -static -std=c++17 -O3 -o batify.exe batify.cpp`.

## Usage

* Running `batify <input>.bat` generates a batch script named `create_<input>.bat`.  Running `create_<input>.bat` generates `generated_<input>.bat` which is equivalent to `<input>.bat` in function, only difference being the file name.

## TODO

* add functionality to specify prefixes of generated files

## Warning

Nested batifying like in the comments of `build.bat` may have horrifying results...