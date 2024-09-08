cmake_minimum_required(VERSION 3.10)
project(Calculator_MicroserviceProject)

# Set up Conan dependencies
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

# Add executable
add_executable(Calculator_MicroserviceProject main.cpp)

# Link libraries provided by Conan
find_package(addition_lib REQUIRED)
find_package(multiplication_lib REQUIRED)

target_link_libraries(Calculator_MicroserviceProject addition_lib::addition_lib multiplication_lib::multiplication_lib)


