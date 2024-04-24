#include "launcher.h"

int main() {
    Launcher launcher;
    try {
        launcher.Run();
    } catch (const std::exception &e) {
        std::cerr << e.what();
    }
    return 0;

}
