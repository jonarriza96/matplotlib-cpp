# MATPLOTLIBCPP - FORKED BY ARRI

This is a fork of the original [matplotlib-cpp](https://github.com/lava/matplotlib-cpp). Its characterized for being:

- minimal: Just the necessary files.
- library: Install it as a library for usage in other projects.
- extended 3D rendering: Copied from [this video](https://www.youtube.com/watch?v=NOZDyFmWDtw)

## Installation

Build and install the library with `install.sh` as follows:

```bash
source install_cpp.sh
```

## Usage

If you have successfully built the project, you are ready to start using the installed library. By default matplotlibcpp will be installed as a shared library in `/path/to/matplotlibcpp/install/`, and thereby, it can easily be linked to other projects using CMakeLists.txt as follows:

```cmake
set(CMAKE_PREFIX_PATH ${CMAKE_SOURCE_DIR}/../install/lib/cmake)

find_package(matplotlibcpp_lib REQUIRED)

add_executable(my_excutable my_executable.cpp)
target_link_libraries(my_executable matplotlibcpp_lib)

```

For exemplary files that showcase how to use the library can be found in [the examples folder](examples/). You can run an example by running:

```bash
bash examples/run_examples.sh
```
