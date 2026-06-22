import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:provider/provider.dart';
import 'core/theme.dart';
import 'ui/screens/landing_screen.dart';
import 'ui/screens/post_install_screen.dart';
import 'services/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Detect if running in WinPE (X:\Windows drive)
  final bool isWinPE = Directory('X:\\Windows').existsSync();

  if (!isWinPE) {
    try {
      // Initialize window manager (only in normal Windows, not in WinPE)
      await windowManager.ensureInitialized();

      // Determine default title
      final bool isLinuxOrWinPE = Platform.isLinux || isWinPE;
      final String appTitle = isLinuxOrWinPE ? 'Requiem Installer' : 'Requiem Tools';

      WindowOptions windowOptions = WindowOptions(
        size: const Size(1280, 720),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
        title: appTitle,
      );

      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    } catch (e) {
      debugPrint('Failed to initialize window_manager: $e');
    }
  }

  runApp(
    ChangeNotifierProvider(
      create: (_) => MainController(),
      child: RequiemApp(startInDesktopToolsMode: !isWinPE && !Platform.isLinux),
    ),
  );
}

class RequiemApp extends StatelessWidget {
  final bool startInDesktopToolsMode;
  const RequiemApp({
    super.key,
    bool? startInBuilderMode,
    bool startInDesktopToolsMode = false,
  }) : startInDesktopToolsMode =
           startInDesktopToolsMode || (startInBuilderMode ?? false);

  @override
  Widget build(BuildContext context) {
    final bool isLinuxOrWinPE = Platform.isLinux || Directory('X:\\Windows').existsSync();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: isLinuxOrWinPE ? 'Requiem Installer' : 'Requiem Tools',
      theme: RequiemTheme.darkTheme,
      home: startInDesktopToolsMode
          ? const PostInstallScreen()
          : const LandingScreen(),
    );
  }
}
