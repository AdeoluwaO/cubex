import 'package:flutter/material.dart';

class AppDimensions {
  static const double zero = 0;
  static const double tiny = 4;
  static const double small = 8;
  static const double medium = 16;
  static const double big = 24;
  static const double large = 32;
  static double getTranslationValue(
      {required BuildContext context, required double targetTranslation}) {
    double screenWidth = MediaQuery.of(context).size.width;
    double targetScreenWidth =
        360.0; // Choose a reference screen width, for example, iPhone 6/7/8 screen width
    double scaleFactor = screenWidth / targetScreenWidth;
    return targetTranslation * scaleFactor;
  }
}
