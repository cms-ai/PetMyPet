import 'package:flutter/material.dart';

class Themes {
  final ThemeData _lightTheme = ThemeData(
     colorScheme: const ColorScheme.light()
  );
  ThemeData get lightTheme => _lightTheme;
}