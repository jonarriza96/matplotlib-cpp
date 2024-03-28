include(CMakeFindDependencyMacro)

find_dependency(Python3 COMPONENTS Interpreter Development NumPy REQUIRED)
find_dependency(PythonLibs 3.0 REQUIRED)

get_filename_component(SELF_DIR ${CMAKE_CURRENT_LIST_DIR} PATH)
include(${SELF_DIR}/cmake/matplotlibcpp_lib.cmake)