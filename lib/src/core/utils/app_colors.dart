import 'package:flutter/material.dart';

class AppColors {
  static Color transparent = Colors.transparent;
  static Color white = Colors.white;
  // static Color purple = Colors.deepPurpleAccent;
  static Color red800 = fromHex('#d91717');
  static Color purple = fromHex('71d4d9');
  static Color gray900 = fromHex('#051238');
  static Color yellow = fromHex('f4cd68');
  static Color blue = fromHex('71d4d9');
  static Color pink = fromHex('f2d1dc');
  static Color gray100 = fromHex('#f3f2f5');
  static Color black = Colors.black;
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static String _colorToHex(Color c) {
    return "#${(c.value & 0xFFFFFFFF).toRadixString(16).padLeft(8, '0').toUpperCase()}";
  }

  static Color _hexToColor(String h) {
    return Color(int.parse(h, radix: 16));
  }
}
