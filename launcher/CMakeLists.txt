cmake_minimum_required(VERSION 3.0)
project(Launcher)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add GLFW library
add_subdirectory(vendor/GLFW)
include_directories(vendor/GLFW/include)

# Add ImGui library
include_directories(vendor/ImGui)
file(GLOB IMGUI_SOURCES vendor/ImGui/*.cpp)

# Add source files
file(GLOB SOURCES *.cpp)

# Create the executable
add_executable(Launcher ${SOURCES} ${IMGUI_SOURCES})

# Link the necessary libraries
target_link_libraries(Launcher glfw ${GLFW_LIBRARIES})

# Add OpenGL library
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIRS})
target_link_libraries(Launcher ${OPENGL_LIBRARIES})
