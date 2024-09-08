cmake_minimum_required(VERSION 3.10)
project(Calculator_MonolithicProject)

# Add subdirectories for libraries
add_subdirectory(add_lib)
add_subdirectory(mul_lib)

# Create the main executable
add_executable(Calculator_MonolithicProject main.cpp)

# Link libraries to the main executable
target_link_libraries(Calculator_MonolithicProject add_lib mul_lib)

# Include directories for add_lib and mul_lib headers
target_include_directories(Calculator_MonolithicProject PUBLIC add_lib mul_lib)
