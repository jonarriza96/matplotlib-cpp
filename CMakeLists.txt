# CMakeLists.txt
cmake_minimum_required(VERSION 3.15)
project("example" LANGUAGES CXX)


set(CMAKE_SUPPRESS_DEVELOPER_WARNINGS 1 CACHE INTERNAL "No dev warnings") # bypass dev warnings

# find python libraries
find_package(Python3 COMPONENTS Interpreter Development NumPy REQUIRED)
find_package(PythonLibs 3.0 REQUIRED)
include_directories(${PYTHON3_INCLUDE_DIRS} ${NumPy_INCLUDE_DIRS})

# populate matplotlib repository
include_directories(include/)

# add executable
add_executable(minimal examples/minimal.cpp)

# link python and numpy
target_link_libraries(minimal
    PRIVATE
        ${PYTHON_LIBRARIES}
        Python3::NumPy
)