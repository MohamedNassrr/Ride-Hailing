import 'package:flutter/material.dart';
import 'package:uber_clone/core/themes/custom_themes/custom_text_theme.dart';

class AppTheme {
  static ThemeData lightMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.white,
    ),
    textTheme: CustomTextTheme.lightTextTheme,
  );
  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xff28C76F),
    scaffoldBackgroundColor: const Color(0xff0D0D0D),
    textTheme: CustomTextTheme.darkTextTheme,
  );
}