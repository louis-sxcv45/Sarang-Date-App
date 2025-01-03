import 'package:flutter/material.dart';

/// Kelas ini bertanggung jawab untuk mengelola warna tema aplikasi.
/// Ini mencakup definisi warna utama, warna sekunder, dan warna lainnya
/// yang digunakan di seluruh aplikasi untuk memastikan konsistensi tampilan.

class ColorManager {
  static Color primary = HexColor.fromHex('#03091C');
  static Color secondary = HexColor.fromHex('#262F4B');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color pink = HexColor.fromHex('#EA887B');
  static Color purple = HexColor.fromHex('#CE92E3');
  static Color black60 = HexColor.fromHex('#737D9C');
  static Color black30 = HexColor.fromHex('#8D93A8');
  static Color black = HexColor.fromHex('#5B6279');
  static Color grey = HexColor.fromHex('#D9D9D9');
  static Color grey60 = HexColor.fromHex('#A9A9AC');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6){
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}