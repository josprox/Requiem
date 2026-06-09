#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <set>
#include <filesystem>
#include <algorithm>
#include <windows.h>

namespace fs = std::filesystem;

// Helper to convert string to lowercase
std::string to_lower(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(), [](unsigned char c){ return std::tolower(c); });
    return s;
}

int main() {
    std::cout << "==========================================\n";
    std::cout << " Joss Red Installer - DLL Dependency Scanner\n";
    std::cout << "==========================================\n\n";

    std::set<std::string> current_dlls;
    std::vector<fs::path> files_to_scan;

    // Scan current directory for files
    try {
        for (const auto& entry : fs::directory_iterator(".")) {
            if (entry.is_regular_file()) {
                std::string ext = to_lower(entry.path().extension().string());
                std::string name = to_lower(entry.path().filename().string());
                if (ext == ".exe" || ext == ".dll") {
                    files_to_scan.push_back(entry.path());
                    if (ext == ".dll") {
                        current_dlls.insert(name);
                    }
                }
            }
        }
    } catch (const std::exception& e) {
        std::cerr << "Error listing directory: " << e.what() << "\n";
        std::cout << "\nPress Enter to exit...";
        std::cin.get();
        return 1;
    }

    std::set<std::string> missing_dlls;

    for (const auto& path : files_to_scan) {
        std::string filename = path.filename().string();
        // Skip scanning ourselves
        if (to_lower(filename) == "diagnose.exe") {
            continue;
        }

        std::cout << "Scanning " << filename << "...\n";

        std::ifstream file(path, std::ios::binary);
        if (!file.is_open()) {
            std::cerr << "  Error: Could not open file.\n";
            continue;
        }

        // Read file in chunks
        std::string buffer;
        char ch;
        while (file.get(ch)) {
            // Check if char is valid for a filename
            if (std::isalnum(static_cast<unsigned char>(ch)) || ch == '_' || ch == '-' || ch == '.') {
                buffer += ch;
            } else {
                if (buffer.length() > 4) {
                    std::string lower_buf = to_lower(buffer);
                    if (lower_buf.length() >= 4 && lower_buf.substr(lower_buf.length() - 4) == ".dll") {
                        // Validate it matches a reasonable dll name pattern
                        if (lower_buf.find_first_not_of("abcdefghijklmnopqrstuvwxyz0123456789_.-") == std::string::npos) {
                            // Check if this DLL exists in the app folder
                            if (current_dlls.find(lower_buf) == current_dlls.end()) {
                                // Use LoadLibraryExA with DONT_RESOLVE_DLL_REFERENCES to check if the loader can find it.
                                // This automatically resolves API sets, downlevel directories, and PATH variables.
                                HMODULE hMod = LoadLibraryExA(lower_buf.c_str(), NULL, DONT_RESOLVE_DLL_REFERENCES);
                                if (hMod == NULL) {
                                    // Make sure it's not a false positive string from binary garbage
                                    // A valid DLL name shouldn't contain multiple dots or consecutive dashes
                                    if (lower_buf.find("..") == std::string::npos && 
                                        lower_buf.length() > 6 &&
                                        lower_buf != "libglesv2.dll" && // Flutter optional GLES
                                        lower_buf != "libegl.dll") {     // Flutter optional EGL
                                        missing_dlls.insert(lower_buf);
                                    }
                                } else {
                                    FreeLibrary(hMod);
                                }
                            }
                        }
                    }
                }
                buffer.clear();
            }
        }
    }

    std::cout << "\nChecking dependency status...\n\n";

    if (missing_dlls.empty()) {
        std::cout << "[SUCCESS] No missing DLLs detected! If it still fails, the issue is not a missing DLL.\n";
    } else {
        std::cout << "[ERROR] Found " << missing_dlls.size() << " missing DLL(s):\n";
        for (const auto& dll : missing_dlls) {
            std::cout << "  - [MISSING] " << dll << "\n";
        }
        std::cout << "\nPlease copy these DLLs from C:\\Windows\\System32 on your host into the assets/dlls folder.\n";
    }

    std::cout << "\nPress Enter to exit...";
    std::cin.get();
    return 0;
}
