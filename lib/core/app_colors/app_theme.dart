import 'package:flutter/material.dart';
import 'package:whisper/core/app_colors/color_manager.dart';
import 'package:whisper/core/constants/app_size.dart';

class AppTheme {
  static const double contentWidth = AppSize.sizeDouble420;
  static const double screenInset = AppPadding.padding24;
  static const double cornerRadius = AppSize.sizeDouble16;
  static const double avatarRadius = AppSize.sizeDouble48;
  static const double contactAvatarRadius = AppSize.sizeDouble24;
  static const double avatarIconSize = AppSize.sizeDouble48;
  static const double buttonHeight = AppSize.sizeDouble52;
  static const double messageWidthFactor = 0.78;
  static const double messageTailRadius = AppSize.sizeDouble4;
  static const double focusBorderWidth = 1.5;
  static const double brandLetterSpacing = 1.5;
  static const double subduedTextOpacity = 0.75;
  static const double noElevation = 0;

  /// Builds the shared Material theme using the palette for the given brightness.
  static ThemeData fromSeed({Brightness brightness = Brightness.light}) {
    final colors = ColorManager.colorScheme(brightness);
    final rounded = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(cornerRadius),
    );
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(cornerRadius),
      borderSide: BorderSide(color: colors.outlineVariant),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colors,
      fontFamily: 'Roboto',
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontSize: AppSize.sizeDouble28,
          height: AppSize.sizeDouble34 / AppSize.sizeDouble28,
          fontWeight: FontWeight.w700,
          color: colors.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: AppSize.sizeDouble15,
          height: AppSize.sizeDouble20 / AppSize.sizeDouble15,
          fontWeight: FontWeight.w500,
          color: colors.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: AppSize.sizeDouble15,
          height: AppSize.sizeDouble20 / AppSize.sizeDouble15,
          color: colors.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: AppSize.sizeDouble13,
          height: AppSize.sizeDouble18 / AppSize.sizeDouble13,
          color: colors.onSurfaceVariant,
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: colors.primary,
        textColor: colors.onSurface,
        titleTextStyle: TextStyle(
          fontFamily: 'Roboto',
          fontSize: AppSize.sizeDouble15,
          height: AppSize.sizeDouble20 / AppSize.sizeDouble15,
          fontWeight: FontWeight.w500,
          color: colors.onSurface,
        ),
        subtitleTextStyle: TextStyle(
          fontFamily: 'Roboto',
          fontSize: AppSize.sizeDouble13,
          height: AppSize.sizeDouble18 / AppSize.sizeDouble13,
          color: colors.onSurfaceVariant,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppPadding.padding16,
          vertical: AppPadding.padding8,
        ),
        shape: rounded,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(shape: rounded),
      ),
      scaffoldBackgroundColor: colors.surface,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleSpacing: screenInset,
        scrolledUnderElevation: 0,
        backgroundColor: colors.surface,
        foregroundColor: colors.onSurface,
        surfaceTintColor: colors.surface,
        elevation: noElevation,
        iconTheme: IconThemeData(color: colors.primary),
        titleTextStyle: TextStyle(
          fontFamily: 'Roboto',
          color: colors.onSurface,
          fontSize: AppSize.sizeDouble28,
          height: AppSize.sizeDouble34 / AppSize.sizeDouble28,
          fontWeight: FontWeight.w700,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surfaceContainerLowest,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppPadding.padding16,
          vertical: AppPadding.padding16,
        ),
        hintStyle: TextStyle(
          fontSize: AppSize.sizeDouble13,
          height: AppSize.sizeDouble18 / AppSize.sizeDouble13,
          color: colors.onSurfaceVariant,
        ),
        border: border,
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(
            color: colors.primary,
            width: focusBorderWidth,
          ),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error, width: focusBorderWidth),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          minimumSize: const Size(AppSize.sizeDouble64, buttonHeight),
          elevation: noElevation,
          shape: rounded,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.outlineVariant),
          shape: rounded,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          textStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: AppSize.sizeDouble13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: colors.surfaceContainerLow,
        surfaceTintColor: colors.surfaceContainerLow,
        elevation: noElevation,
        shape: rounded.copyWith(side: BorderSide(color: colors.outlineVariant)),
      ),
      dividerTheme: DividerThemeData(color: colors.outlineVariant),
      iconTheme: IconThemeData(color: colors.primary),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colors.primary),
    );
  }
}
