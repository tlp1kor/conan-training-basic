from conan import ConanFile
from conan.tools.cmake import CMake, CMakeDeps, CMakeToolchain
from conan.tools.files import copy
import os

class IntegrationAppConan(ConanFile):
    name = "microservice_app"
    version = "2.0"
    license = "MIT"
    description = "Application integrating addition and multiplication libraries"
    settings = "os", "compiler", "build_type", "arch"

    def layout(self):
        self.folders.source = "."
        self.folders.build = "__build"
        self.folders.generators = "__build"

    # Define the dependencies in the `requirements` method
    def requirements(self):
        self.requires("addition_lib/2.0")
        self.requires("multiplication_lib/2.0")

    def generate(self):
        # Generate CMake toolchain and dependencies files
        tc = CMakeToolchain(self)
        tc.generate()

        deps = CMakeDeps(self)
        deps.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        # Copy built executables to the package bin folder
        copy(self, "Calculator_MicroserviceProject", src=os.path.join(self.build_folder), dst=os.path.join(self.package_folder, "bin"))
        copy(self, "*.dll", src=os.path.join(self.build_folder, "bin"), dst=os.path.join(self.package_folder, "bin"))
        copy(self, "*.dylib", src=os.path.join(self.build_folder, "bin"), dst=os.path.join(self.package_folder, "bin"))
        copy(self, "*.so", src=os.path.join(self.build_folder, "bin"), dst=os.path.join(self.package_folder, "bin"))

    def package_info(self):
        # Package information for consumers
        self.cpp_info.bindirs = ["bin"]
