import 'package:flutter/material.dart';
import 'custom_theme_extension.dart';
import 'color_tokens.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      primary: ColorTokens.brandMain,
      onPrimary: Colors.white,

      secondary: ColorTokens.brandAccent,
      onSecondary: Colors.black,

      error: ColorTokens.error,
      onError: Colors.white,

      surface: ColorTokens.surface,
      onSurface: ColorTokens.textPrimary,

      surfaceContainer: Colors.white,
    ),

    scaffoldBackgroundColor: ColorTokens.surface,

    extensions: const [
      CustomThemeExtension(
        footer: ColorTokens.footer,
        oddProbabilityHigh: ColorTokens.oddProbabilityHigh,
        oddProbabilityMedium: ColorTokens.oddProbabilityMedium,
        oddProbabilityLow: ColorTokens.oddProbabilityLow,
        oddButtonActive: ColorTokens.footer,
      ),
    ],
  );
}
