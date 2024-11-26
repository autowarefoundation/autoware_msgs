from conan import ConanFile, tools
from conan.tools.cmake import CMake, CMakeToolchain, CMakeDeps, cmake_layout
from conan.tools.files import copy
import os

class App(ConanFile):
    name = "autoware_perception_msgs"
    version = "0.0.0"
    # Optional metadata
    license = " "  # Todo
    topics = ("Base")
    requires = []
    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    options = {
        "shared": [True, False],
        "fPIC": [True, False],
        "enable_test": ["ON", "OFF"],
        "enable_coverage": ["ON", "OFF"]
    }
    default_options = {
        "shared": True,
        "fPIC": True,
        "enable_test": "ON",
        "enable_coverage": "ON"
    }

    generators = "CMakeToolchain", "CMakeDeps"

    def layout(self):
        build_f = self.settings.get_safe("compiler")
        cmake_layout(self, src_folder="." , build_folder= "build/"+build_f)
        self.graph_root = os.getcwd()
        self.install_folder = self.graph_root +"/build/"
        self.install_folder = self.install_folder +build_f + "/"+ self.settings.get_safe("build_type")

    def build(self):
        self.run('export CC="/usr/lib/ccache/gcc"')
        self.run('export CXX="/usr/lib/ccache/g++"')
        self.run(
            'VERBOSE=1 colcon build --continue-on-error --event-handlers console_cohesion+ --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_EXPORT_COMPILE_COMMANDS=ON  -DBUILD_SHARED_LIBS=ON --paths="../../../../autoware_perception_msgs"')

    def package(self):
        # Define the source path where the headers are located after the build
        install_path = os.path.join(self.install_folder, "install", "autoware_perception_msgs")

        # copying headers from build_folder
        copy(self, "*", install_path, self.package_folder)

    def package_info(self):
        self.cpp_info.includedirs = ["include/autoware_perception_msgs"]
