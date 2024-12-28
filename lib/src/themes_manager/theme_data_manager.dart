import 'package:flutter/material.dart';
import 'package:sarang_app/src/themes_manager/color_manager.dart';
import 'package:sarang_app/src/themes_manager/font_manager.dart';

/// Mengatur setiap tema di aplikasi jika sama
ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      elevation: 0,
    ),
    fontFamily: FontFamilyManager.fontFamily,
  );
}