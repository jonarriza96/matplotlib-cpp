#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "matplotlibcpp_lib" for configuration ""
set_property(TARGET matplotlibcpp_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(matplotlibcpp_lib PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/home/jonarriza96/papor/external/matplotlibcpp/install/lib/libmatplotlibcpp_lib.so"
  IMPORTED_SONAME_NOCONFIG "libmatplotlibcpp_lib.so"
  )

list(APPEND _cmake_import_check_targets matplotlibcpp_lib )
list(APPEND _cmake_import_check_files_for_matplotlibcpp_lib "/home/jonarriza96/papor/external/matplotlibcpp/install/lib/libmatplotlibcpp_lib.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
