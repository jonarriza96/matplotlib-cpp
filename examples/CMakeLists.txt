cmake_minimum_required(VERSION 3.14)
project(matplotlibcpp_examples)

# set path to motplit_lib installation( comment if installed in /usr/local)
set(CMAKE_PREFIX_PATH ${CMAKE_SOURCE_DIR}/../install/lib/cmake)

# to avoid PCL warnings
set(CMAKE_SUPPRESS_DEVELOPER_WARNINGS 1 CACHE INTERNAL "No dev warnings") # bypass PCL warnings

# find motplit_lib package
find_package(matplotlibcpp_lib REQUIRED)

# add executable and link libraries
add_executable(animated_3d animated_3d.cpp)
target_link_libraries(animated_3d matplotlibcpp_lib)

add_executable(minimal minimal.cpp)
target_link_libraries(minimal matplotlibcpp_lib)