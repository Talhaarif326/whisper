import 'package:flutter/material.dart';

class ColorManager {
  static const Color seedColor = Color(0xFF3F72AF);

  static ColorScheme colorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(seedColor: seedColor, brightness: brightness);
  }

  static Color get primaryColor => colorScheme(Brightness.light).primary;
}
