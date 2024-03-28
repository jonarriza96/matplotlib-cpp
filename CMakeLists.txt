# CMakeLists.txt
cmake_minimum_required(VERSION 3.15)
project(matplotlibcpp LANGUAGES CXX)

# set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/install) # comment this if you want to install in /usr/local
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/") # neede for include(...)

set(CMAKE_SUPPRESS_DEVELOPER_WARNINGS 1 CACHE INTERNAL "No dev warnings") # bypass dev warnings

# -------------------------------------------------------------------------- #
#                              Build C++ library                             #
# -------------------------------------------------------------------------- #

set(LIBRARY_NAME matplotlibcpp_lib)

# find python libraries
find_package(Python3 COMPONENTS Interpreter Development NumPy REQUIRED)
find_package(PythonLibs 3.0 REQUIRED)
include_directories(${PYTHON3_INCLUDE_DIRS} ${NumPy_INCLUDE_DIRS})

# add library
add_library(${LIBRARY_NAME} SHARED
    src/matplotlibcpp.cpp
)

target_include_directories(${LIBRARY_NAME} PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/src>
)

target_link_libraries(${LIBRARY_NAME}
        ${PYTHON_LIBRARIES}
        Python3::NumPy
)

set_target_properties(
    ${LIBRARY_NAME}
      PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO
)

# -------------------------------------------------------------------------- #
#                                   Install                                  #
# -------------------------------------------------------------------------- #
install(TARGETS ${LIBRARY_NAME} 
        EXPORT ${LIBRARY_NAME} 
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)

install(EXPORT ${LIBRARY_NAME} 
        FILE ${LIBRARY_NAME}.cmake
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake)

install(FILES cmake/${LIBRARY_NAME}-config.cmake
        DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake)

install(DIRECTORY include/
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include)

install(DIRECTORY src/
        DESTINATION ${CMAKE_INSTALL_PREFIX}/src)