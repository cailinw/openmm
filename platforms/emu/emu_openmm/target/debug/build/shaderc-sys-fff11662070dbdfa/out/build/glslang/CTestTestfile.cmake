# CMake generated Testfile for 
# Source directory: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang
# Build directory: /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(glslang-testsuite "bash" "runtests" "/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/localResults" "/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/StandAlone/glslangValidator" "/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/StandAlone/spirv-remap")
set_tests_properties(glslang-testsuite PROPERTIES  WORKING_DIRECTORY "/home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/Test/")
subdirs("External")
subdirs("glslang")
subdirs("OGLCompilersDLL")
subdirs("StandAlone")
subdirs("SPIRV")
subdirs("hlsl")
subdirs("gtests")
