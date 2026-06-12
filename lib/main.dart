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

      WindowOptions windowOptions = const WindowOptions(
        size: Size(1280, 720),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
        title: 'Joss Red Installer',
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
      child: JossRedApp(startInDesktopToolsMode: !isWinPE && !Platform.isLinux),
    ),
  );
}

class JossRedApp extends StatelessWidget {
  final bool startInDesktopToolsMode;
  const JossRedApp({
    super.key,
    bool? startInBuilderMode,
    bool startInDesktopToolsMode = false,
  }) : startInDesktopToolsMode =
           startInDesktopToolsMode || (startInBuilderMode ?? false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joss Red Installer',
      theme: JossRedTheme.darkTheme,
      home: startInDesktopToolsMode
          ? const PostInstallScreen()
          : const LandingScreen(),
    );
  }
}
