cmake_minimum_required(VERSION 3.0.0)
project(SimpleTest VERSION 0.1.0)

enable_language(Fortran)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/run)

add_subdirectory(source)


