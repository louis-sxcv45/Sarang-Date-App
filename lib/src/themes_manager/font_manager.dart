import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Kelas ini bertanggung jawab untuk mengelola jenis huruf dalam aplikasi.

class FontFamilyManager {
  static String fontFamily = GoogleFonts.poppins.toString();
}

class FontWeightManager {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
}

class FontSizeManager {
  static const double f12 = 12.0;
  static const double f14 = 14.0;
  static const double f16 = 16.0;
  static const double f18 = 18.0;
  static const double f20 = 20.0;
  static const double f22 = 22.0;
  static const double f24 = 24.0;
  static const double f28 = 28.0;
}