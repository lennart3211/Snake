#include "launcher.h"

Launcher::Launcher() {
    InitGLFW();
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();

    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 130");
}

void Launcher::InitGLFW() {
    if (!glfwInit()) {
        throw std::runtime_error("Failed to initialize GLFW");
    }

    window = glfwCreateWindow(WIDTH, HEIGHT, "Snake Launcher", nullptr, nullptr);
    if (!window) {
        glfwTerminate();
        throw std::runtime_error("Failed to create Window");
    }

    glfwMakeContextCurrent(window);

    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE);

    snake.mainClass = "Main";
    snake.dependencies = {
                "Java-WebSocket-1.5.6.jar",
                "slf4j-api-2.0.9.jar",
                "logback-classic-1.5.3.jar",
                "logback-core-1.5.3.jar"
    };
}

void Launcher::Run() {
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        ImGui::SetNextWindowPos(ImVec2(0, 0));
        ImGui::SetNextWindowSize(ImVec2(WIDTH, HEIGHT));
        ImGui::Begin("ImGui Window", nullptr,
                     ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);

        ImVec2 buttonSize(200, 50);

        ImGui::SetCursorPos(
            ImVec2((WIDTH - buttonSize.x) / 2, (HEIGHT - buttonSize.y) / 2));

        if (ImGui::Button("Launch Snake", buttonSize)) {
          LaunchJavaApp(snake);
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
}

bool Launcher::LaunchJavaApp(const JavaApp &app) {
    std::string dependencies = ".\"";
    for (auto dependency : app.dependencies) {
        dependencies += ';' + dependency;
    }
    dependencies += "\" ";
    if (dependencies.size() < 4) { dependencies = " "; }

#ifdef _WIN32
    std::string launchCommand = "java -cp ";
    launchCommand += dependencies;
    launchCommand += app.mainClass;

    std::cout << "Launch Command: " << launchCommand << std::endl;

    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));
    if (!CreateProcess(nullptr,
                       (LPSTR) launchCommand.c_str(),
                       nullptr,
                       nullptr,
                       false,
                       0,
                       nullptr,
                       nullptr,
                       &si, &pi))
    {
        std::cerr << "[ERROR] Failed to launch Snake" << std::endl;
        return false;
    }
#else
    if (fork() == 0)
    {
        execlp("java", "java", "-cp", "dependencies", "Main", nullptr);
        std::cerr << "[ERROR] Failed to launch Snake" << std::endl;
    }
    else
    {
        return false;
    }
#endif
    return true;
}

Launcher::~Launcher() {
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();
}
