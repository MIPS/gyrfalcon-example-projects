cmake_minimum_required(VERSION 3.10)

set(CMAKE_C_COMPILER "riscv64-mti-elf-gcc")
set(CMAKE_CXX_COMPILER "riscv64-mti-elf-c++")

# set the project name and version
project(example.elf VERSION 1.0)

add_compile_options(
  "-Wall" "-Wpedantic" "-Wextra" "-fexceptions"
  "$<$<CONFIG:DEBUG>:-O3;-g>"
)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Set compile commands for clangd to ON
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# Turn debugging on
set(CMAKE_BUILD_TYPE Release)

# Add an executable with the above sources
add_executable(example.elf src/Rectangle.cpp src/main.cpp)

target_include_directories(example.elf PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           )
