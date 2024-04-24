#include "launcher.h"

#include <wlanapi.h>
#include <codecvt>
#include <locale>
#pragma comment(lib, "Wlanapi.lib")

Launcher::Launcher() {
    InitGLFW();
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();

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

}

void Launcher::Run() {

    HANDLE hClient = NULL;
    DWORD dwMaxClient = 2;
    DWORD dwCurVersion = 0;
    DWORD dwResult = 0;
    PWLAN_INTERFACE_INFO_LIST pIfList = NULL;
    PWLAN_INTERFACE_INFO pIfInfo = NULL;

    std::string wifiName = "None";
    std::wstring_convert<std::codecvt_utf8<wchar_t>> converter;


    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        // Open a handle to the WLAN API
        dwResult = WlanOpenHandle(dwMaxClient, NULL, &dwCurVersion, &hClient);
        if (dwResult != ERROR_SUCCESS) {
          std::cout << "Failed to open WLAN API handle. Error: " << dwResult << std::endl;
          return;
        }

        // Enumerate the wireless interfaces
        dwResult = WlanEnumInterfaces(hClient, NULL, &pIfList);
        if (dwResult != ERROR_SUCCESS) {
          std::cout << "Failed to enumerate interfaces. Error: " << dwResult << std::endl;
          WlanCloseHandle(hClient, NULL);
          return;
        }

        if (pIfList->dwNumberOfItems > 0) {
          pIfInfo = (WLAN_INTERFACE_INFO *)&pIfList->InterfaceInfo[0];

          // Get the connection attributes
          DWORD dwSize = 0;
          PWLAN_CONNECTION_ATTRIBUTES pConnAttributes;
          dwResult = WlanQueryInterface(hClient, &pIfInfo->InterfaceGuid, wlan_intf_opcode_current_connection, NULL, &dwSize, (PVOID *)&pConnAttributes, NULL);
          if (dwResult == ERROR_SUCCESS) {
            if (pConnAttributes->isState == wlan_interface_state_connected) {
              wifiName = converter.to_bytes(pConnAttributes->strProfileName);
            } else {
              wifiName = "None";
            }
            WlanFreeMemory(pConnAttributes);
          } else {
            wifiName = "None";
          }
        }

        if (pIfList != NULL) {
          WlanFreeMemory(pIfList);
        }
        WlanCloseHandle(hClient, NULL);

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
            system("gradlew run");
        }

        ImGui::SetCursorPosX((WIDTH - buttonSize.x + 100) / 2);
        ImGui::Text(("WIFI: " + wifiName).c_str());

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

Launcher::~Launcher() {
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();
}
