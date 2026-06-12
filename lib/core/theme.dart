import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JossRedTheme {
  // Curated M3 Expressive Palette
  static const Color primarySeed = Color(0xFFC62828); // Rich Ruby Red
  static const Color background = Color(0xFF0F0D0D); // Deep Obsidian
  static const Color surface = Color(0xFF1C1919); // Soft Slate

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primarySeed,
        brightness: Brightness.dark,
        primary: primarySeed,
        surface: surface,
        onPrimary: Colors.white,
        secondary: const Color(0xFF45D3A5),
        tertiary: const Color(0xFF78A9FF),
      ),

      textTheme: GoogleFonts.plusJakartaSansTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 0,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 0,
          ),
          titleLarge: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5, letterSpacing: 0),
        ),
      ),

      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.white.withValues(alpha: 0.05),
            width: 1,
          ),
        ),
        color: const Color(0xFF252121),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
      ),

      navigationBarTheme: NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorColor: primarySeed.withValues(alpha: 0.2),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.05),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primarySeed, width: 2),
        ),
      ),
    );
  }
}
