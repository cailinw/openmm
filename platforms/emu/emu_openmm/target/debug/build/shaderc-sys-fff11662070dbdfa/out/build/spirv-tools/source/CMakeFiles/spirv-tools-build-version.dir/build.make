# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build

# Utility rule file for spirv-tools-build-version.

# Include the progress variables for this target.
include spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/progress.make

spirv-tools/source/CMakeFiles/spirv-tools-build-version: spirv-tools/build-version.inc


spirv-tools/build-version.inc: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-tools/utils/update_build_version.py
spirv-tools/build-version.inc: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-tools/CHANGES
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Update build-version.inc in the SPIRV-Tools build directory (if necessary)."
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/spirv-tools/source && /usr/bin/python3 /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-tools/utils/update_build_version.py /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-tools /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/spirv-tools/build-version.inc

spirv-tools-build-version: spirv-tools/source/CMakeFiles/spirv-tools-build-version
spirv-tools-build-version: spirv-tools/build-version.inc
spirv-tools-build-version: spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/build.make

.PHONY : spirv-tools-build-version

# Rule to build all files generated by this target.
spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/build: spirv-tools-build-version

.PHONY : spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/build

spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/clean:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/spirv-tools/source && $(CMAKE_COMMAND) -P CMakeFiles/spirv-tools-build-version.dir/cmake_clean.cmake
.PHONY : spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/clean

spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/depend:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-tools/source /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/spirv-tools/source /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : spirv-tools/source/CMakeFiles/spirv-tools-build-version.dir/depend

