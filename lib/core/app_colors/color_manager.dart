import 'package:flutter/material.dart';

class ColorManager {
  static const Color seedColor = Color(0xFF97A87A);

  static ColorScheme colorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(seedColor: seedColor, brightness: brightness);
  }
}
