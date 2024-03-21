#include <GLFW/glfw3.h>
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>
#include <iostream>
#include <cstdlib>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

void LaunchSnake()
{
#ifdef _WIN32
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));
    if (!CreateProcess(nullptr,
			    (LPSTR)"java -cp \".;Java-WebSocket-1.5.6.jar;slf4j-api-2.0.9.jar;logback-classic-1.5.3.jar;logback-core-1.5.3.jar\" Main",
			    nullptr,
			    nullptr,
			    false,
			    0, 
			    nullptr,
			    nullptr,
			    &si, &pi)) 
    {
        std::cerr << "[ERROR] Failed to launch Snake" << std::endl;
    }
#else
    if (fork() == 0)
    {
        execlp("java", "java", "-cp", "Snake.jar", "Main", nullptr);
        std::cerr << "[ERROR] Failed to launch Snake" << std::endl;
    }
#endif
}

int main()
{
    if (!glfwInit())
        return -1;

    const uint16_t WIDTH = 400, HEIGHT = 600;

    GLFWwindow* window = glfwCreateWindow(WIDTH, HEIGHT, "Snake Launcher", nullptr, nullptr);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }


    glfwMakeContextCurrent(window);

    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE);

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();

    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 130");

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        ImGui::SetNextWindowPos(ImVec2(0, 0));
        ImGui::SetNextWindowSize(ImVec2(WIDTH, HEIGHT));
        ImGui::Begin("ImGui Window", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);

        ImVec2 buttonSize(200, 50);

        ImGui::SetCursorPos(ImVec2((WIDTH - buttonSize.x) / 2, (HEIGHT - buttonSize.y) / 2));

        if (ImGui::Button("Launch Snake", buttonSize))
        {
            LaunchSnake();
        }

        ImGui::End();

        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}
