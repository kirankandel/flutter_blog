import 'package:blog/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final darkMode = ThemeData.dark().copyWith(
      primaryColor: Colors.black,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: _border(AppPalette.borderColor),
        focusedBorder: _border(AppPalette.gradient2),
      ));
}
