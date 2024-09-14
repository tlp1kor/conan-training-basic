#!/bin/bash

# Define build directory
build_dir=__build

# Remove old build directory if exists
rm -rf $build_dir

# Create new build directory
mkdir -p $build_dir

# Get the full path to the directory where the script is located
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Installation of conan configurations from local
conan config install $ROOT_DIR/conan_conf

# Profile file to be used
profile=profile_x86_debug

# Run Conan install with specified build folder
conan install $ROOT_DIR -pr:a $profile --build=missing

# Generate png file to showcase dependency
conan graph info $ROOT_DIR -pr:a $profile --format=dot > $build_dir/dependencies.dot
dot -Tpng $build_dir/dependencies.dot -o $build_dir/dependencies.png

# Run CMake configuration and build
conan build $ROOT_DIR -pr:a $profile 

# Run Conan create to build and package
conan export-pkg $ROOT_DIR -pr:a $profile
 