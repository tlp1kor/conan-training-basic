#!/bin/bash

# Step 1: Remove the existing build directory (if any)
# The '-rf' option forces removal of files and directories recursively.
# '__build' is the name of the build directory being removed.
echo "Removing existing build directory..."
rm -rf __build

# Step 2: Set the build directory name
# This variable stores the name of the directory where CMake will place the build files.
build_dir=__build

# Step 3: Create a new build directory
# '-p' ensures the parent directories are created if they don't exist.
echo "Creating a new build directory $build_dir..."
mkdir -p $build_dir

# Step 4: Run CMake to configure the project
# '.' means CMake will look for CMakeLists.txt in the current directory.
# '-B' option specifies the binary directory where the build files should be created.
echo "Configuring the project with CMake..."
cmake . -B $build_dir

# Step 5: Build the project
# '--build' tells CMake to start the build process in the specified build directory.
echo "Building the project..."
cmake --build $build_dir

# Step 6: Notify that the build is complete
echo "Build complete!"
