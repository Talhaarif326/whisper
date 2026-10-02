import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whisper/core/app_colors/app_theme.dart';
import 'package:whisper/core/app_colors/app_theme_manager.dart';
import 'package:whisper/core/app_colors/color_manager.dart';

void main() {
  test('app themes use the seed color for light and dark palettes', () {
    final light = AppTheme.fromSeed(brightness: Brightness.light);
    final dark = AppTheme.fromSeed(brightness: Brightness.dark);

    expect(light.colorScheme.brightness, Brightness.light);
    expect(dark.colorScheme.brightness, Brightness.dark);
    expect(
      light.colorScheme.primary,
      ColorManager.colorScheme(Brightness.light).primary,
    );
    expect(
      dark.colorScheme.primary,
      ColorManager.colorScheme(Brightness.dark).primary,
    );
    expect(light.cardTheme.color, light.colorScheme.surfaceContainerLow);
    expect(dark.cardTheme.color, dark.colorScheme.surfaceContainerLow);
  });

  test('app theme mode defaults to and can return to system brightness', () {
    expect(AppThemeManager.currentMode, ThemeMode.system);

    AppThemeManager.setThemeMode(ThemeMode.dark);
    expect(AppThemeManager.currentMode, ThemeMode.dark);

    AppThemeManager.setThemeMode(ThemeMode.system);
    expect(AppThemeManager.currentMode, ThemeMode.system);
  });
}
