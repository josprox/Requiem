import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:provider/provider.dart';
import 'core/theme.dart';
import 'ui/screens/landing_screen.dart';
import 'ui/screens/iso_builder_screen.dart';
import 'services/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize window manager
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

  // Detect if running in WinPE (X: drive) or normal Windows
  final bool isWinPE = Directory('X:\\Windows').existsSync();

  runApp(
    ChangeNotifierProvider(
      create: (_) => MainController(),
      child: JossRedApp(startInBuilderMode: !isWinPE),
    ),
  );
}

class JossRedApp extends StatelessWidget {
  final bool startInBuilderMode;
  const JossRedApp({super.key, this.startInBuilderMode = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joss Red Installer',
      theme: JossRedTheme.darkTheme,
      home: startInBuilderMode ? const IsoBuilderScreen() : const LandingScreen(),
    );
  }
}
