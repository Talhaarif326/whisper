import 'package:flutter/material.dart';

class ColorManager {
  static const Color seedColor = Color(0xFF97A87A);

  /// Derives the app color palette from its seed and requested brightness.
  static ColorScheme colorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(seedColor: seedColor, brightness: brightness);
  }
}
