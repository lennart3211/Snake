#pragma once

#include <GLFW/glfw3.h>
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>
#include <iostream>
#include <cstdlib>

#ifdef _WIN32
#include <vector>
#include <windows.h>
#else
#include <unistd.h>
#endif

class Launcher {
private:
    const uint16_t WIDTH = 400, HEIGHT = 600;
    GLFWwindow *window;

  public:
    Launcher();
    ~Launcher();

    void Run();

private:
    void InitGLFW();
};