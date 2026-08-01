import 'package:flutter/material.dart';
import 'package:styles/custom_theme_extension.dart';

Color getOddProbabilityColor(BuildContext context, double odd) {
  final customTheme = Theme.of(context).extension<CustomThemeExtension>()!;

  final probability = 1 / odd;

  if (probability >= 0.65) {
    return customTheme.oddProbabilityHigh;
  }

  if (probability >= 0.35) {
    return customTheme.oddProbabilityMedium;
  }

  return customTheme.oddProbabilityLow;
}
