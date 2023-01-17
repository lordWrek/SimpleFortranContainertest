# Simple Fortran for Testing containers, etc

This is a simple repository that I am using to test/experiment with vs code dev containers.  It has no other purpose.

## Adding some more stuff - purpose is still just testing though

* Adding a CMakePresets.json because I can't remember how to use cmake!

### FIRST

For anyone new to using/writing CMake - RTFM! ( *Read the Fine Manual* )
    CMake has a great manual

* access it on "unix" like systems with the usual "man cmake"

* or use the [web-page](https://cmake.org/cmake/help/latest/)

Some of the issues that often come up early when writing builds are:

* "What does this buildsystem know about my current environment?" and

* "How do I change the build environment?"

For cmake builds, the following command will save a file called **SIFile.txt** with a lot of what I am looking for!

```cmake
cmake  --system-information SIFile.txt 
```

### SECOND

I have been using the following command line to build in iterm on my MacM1 (in the directory ABOVE the distribution):

```bash
rm -rf build && cmake -DCMAKE_C_COMPILER=/opt/homebrew/bin/gcc-12 -DCMAKE_FC_COMPILER=/opt/homebrew/bin/gfortran-12 -STRACE -Bbuild 
```

Inside the Ubuntu dev container I have been using (INSIDE the distribution because "workspace" is write protected!):

```bash
rm -rf build && cmake  -STRACE -Bbuild 
```

then compiling with:

```bash
cmake --build build
```

### THIRD

I discovered cmake "presets"!  Edit the preset defintions in the **CMakePresets.json** file.  Now, inside of the "TRACE" directory (same level as the toplevel CMakeLists.txt file):

```bash
cmake -S. --list-presets

cmake -S. --preset=default

cmake -S. --preset=MacM1

etc..
```
