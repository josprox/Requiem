#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>
#include <windows.h>
#include <fstream>
#include <string>

#include "flutter_window.h"
#include "utils.h"

void LogInfo(const std::string& msg) {
    std::ofstream out("X:\\joss_log.txt", std::ios::app);
    out << msg << "\n";
    out.flush();
}

int APIENTRY wWinMain(_In_ HINSTANCE instance, _In_opt_ HINSTANCE prev,
                      _In_ wchar_t *command_line, _In_ int show_command) {
  LogInfo("Application starting...");
  
  if (!::AttachConsole(ATTACH_PARENT_PROCESS) && ::IsDebuggerPresent()) {
    CreateAndAttachConsole();
  }

  LogInfo("Initializing COM...");
  HRESULT hr = ::CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
  if (FAILED(hr)) {
    LogInfo("CoInitializeEx failed with HRESULT: " + std::to_string(hr));
  } else {
    LogInfo("COM initialized.");
  }

  LogInfo("Creating Dart project...");
  flutter::DartProject project(L"data");

  std::vector<std::string> command_line_arguments = GetCommandLineArguments();
  project.set_dart_entrypoint_arguments(std::move(command_line_arguments));

  LogInfo("Creating Flutter Window...");
  FlutterWindow window(project);
  Win32Window::Point origin(10, 10);
  Win32Window::Size size(1280, 720);
  if (!window.Create(L"Joss Tools", origin, size)) {
    LogInfo("Failed to create Flutter Window!");
    return EXIT_FAILURE;
  }
  LogInfo("Window created successfully.");
  window.SetQuitOnClose(true);

  LogInfo("Entering message loop...");
  ::MSG msg;
  while (::GetMessage(&msg, nullptr, 0, 0)) {
    ::TranslateMessage(&msg);
    ::DispatchMessage(&msg);
  }

  LogInfo("Exiting cleanly.");
  ::CoUninitialize();
  return EXIT_SUCCESS;
}

