import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: const TextTheme(
        headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}
