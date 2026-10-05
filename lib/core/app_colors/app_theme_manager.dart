import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whisper/core/app_colors/app_theme.dart';

class AppThemeManager {
  AppThemeManager._();

  static final ValueNotifier<ThemeMode> _themeMode = ValueNotifier(
    ThemeMode.system,
  );

  static ValueListenable<ThemeMode> get themeMode => _themeMode;
  static ThemeMode get currentMode => _themeMode.value;

  static final ThemeData lightTheme = AppTheme.fromSeed(
    brightness: Brightness.light,
  );
  static final ThemeData darkTheme = AppTheme.fromSeed(
    brightness: Brightness.dark,
  );

  static const List<ThemeMode> availableModes = [
    ThemeMode.system,
    ThemeMode.light,
    ThemeMode.dark,
  ];

  /// Returns the user-facing name of a theme mode.
  static String labelFor(ThemeMode mode) => switch (mode) {
    ThemeMode.system => 'System default',
    ThemeMode.light => 'Light',
    ThemeMode.dark => 'Dark',
  };

  /// Updates the theme mode listened to by the root application widget.
  static void setThemeMode(ThemeMode mode) {
    _themeMode.value = mode;
  }
}
