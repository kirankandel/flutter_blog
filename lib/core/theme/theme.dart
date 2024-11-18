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
      scaffoldBackgroundColor: AppPalette.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppPalette.backgroundColor,
        iconTheme: IconThemeData(color: AppPalette.whiteColor),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppPalette.whiteColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
        hintStyle: const TextStyle(color: AppPalette.greyColor),
        enabledBorder: _border(AppPalette.borderColor),
        focusedBorder: _border(AppPalette.gradient2),
      ));
}
