# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lennart/snake/launcher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lennart/snake/build

# Include any dependencies generated for this target.
include CMakeFiles/ImGuiApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ImGuiApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ImGuiApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImGuiApp.dir/flags.make

CMakeFiles/ImGuiApp.dir/main.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/main.cpp.o: /home/lennart/snake/launcher/main.cpp
CMakeFiles/ImGuiApp.dir/main.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ImGuiApp.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/main.cpp.o -MF CMakeFiles/ImGuiApp.dir/main.cpp.o.d -o CMakeFiles/ImGuiApp.dir/main.cpp.o -c /home/lennart/snake/launcher/main.cpp

CMakeFiles/ImGuiApp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/main.cpp > CMakeFiles/ImGuiApp.dir/main.cpp.i

CMakeFiles/ImGuiApp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/main.cpp -o CMakeFiles/ImGuiApp.dir/main.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_demo.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_demo.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_demo.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_demo.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_draw.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_draw.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_draw.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_draw.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_glfw.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_glfw.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_glfw.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_glfw.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_opengl3.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_opengl3.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_opengl3.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_impl_opengl3.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_tables.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_tables.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_tables.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_tables.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.s

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o: CMakeFiles/ImGuiApp.dir/flags.make
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o: /home/lennart/snake/launcher/vendor/ImGui/imgui_widgets.cpp
CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o: CMakeFiles/ImGuiApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o -MF CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o.d -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o -c /home/lennart/snake/launcher/vendor/ImGui/imgui_widgets.cpp

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lennart/snake/launcher/vendor/ImGui/imgui_widgets.cpp > CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.i

CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lennart/snake/launcher/vendor/ImGui/imgui_widgets.cpp -o CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.s

# Object files for target ImGuiApp
ImGuiApp_OBJECTS = \
"CMakeFiles/ImGuiApp.dir/main.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o" \
"CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o"

# External object files for target ImGuiApp
ImGuiApp_EXTERNAL_OBJECTS =

ImGuiApp: CMakeFiles/ImGuiApp.dir/main.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_demo.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_draw.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_glfw.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_impl_opengl3.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_tables.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/vendor/ImGui/imgui_widgets.cpp.o
ImGuiApp: CMakeFiles/ImGuiApp.dir/build.make
ImGuiApp: vendor/GLFW/src/libglfw3.a
ImGuiApp: /usr/lib/libGL.so
ImGuiApp: /usr/lib/libGLU.so
ImGuiApp: /usr/lib/librt.a
ImGuiApp: /usr/lib/libm.so
ImGuiApp: CMakeFiles/ImGuiApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/lennart/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ImGuiApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImGuiApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImGuiApp.dir/build: ImGuiApp
.PHONY : CMakeFiles/ImGuiApp.dir/build

CMakeFiles/ImGuiApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImGuiApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImGuiApp.dir/clean

CMakeFiles/ImGuiApp.dir/depend:
	cd /home/lennart/snake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lennart/snake/launcher /home/lennart/snake/launcher /home/lennart/snake/build /home/lennart/snake/build /home/lennart/snake/build/CMakeFiles/ImGuiApp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ImGuiApp.dir/depend

