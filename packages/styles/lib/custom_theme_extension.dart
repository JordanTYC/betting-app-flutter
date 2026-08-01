import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color footer;
  final Color oddProbabilityHigh;
  final Color oddProbabilityMedium;
  final Color oddProbabilityLow;
  final Color oddButtonActive;

  const CustomThemeExtension({
    required this.footer,
    required this.oddProbabilityHigh,
    required this.oddProbabilityMedium,
    required this.oddProbabilityLow,
    required this.oddButtonActive,
  });

  @override
  CustomThemeExtension copyWith({
    Color? footer,
    Color? oddProbabilityHigh,
    Color? oddProbabilityMedium,
    Color? oddProbabilityLow,
    Color? oddButtonActive,
  }) {
    return CustomThemeExtension(
      footer: footer ?? this.footer,
      oddProbabilityHigh: oddProbabilityHigh ?? this.oddProbabilityHigh,
      oddProbabilityMedium: oddProbabilityMedium ?? this.oddProbabilityMedium,
      oddProbabilityLow: oddProbabilityLow ?? this.oddProbabilityLow,
      oddButtonActive: oddButtonActive ?? this.oddButtonActive,
    );
  }

  @override
  CustomThemeExtension lerp(
    ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) {
      return this;
    }

    return CustomThemeExtension(
      footer: Color.lerp(footer, other.footer, t)!,

      oddProbabilityHigh: Color.lerp(
        oddProbabilityHigh,
        other.oddProbabilityHigh,
        t,
      )!,

      oddProbabilityMedium: Color.lerp(
        oddProbabilityMedium,
        other.oddProbabilityMedium,
        t,
      )!,

      oddProbabilityLow: Color.lerp(
        oddProbabilityLow,
        other.oddProbabilityLow,
        t,
      )!,

      oddButtonActive: Color.lerp(
        oddProbabilityLow,
        other.oddProbabilityLow,
        t,
      )!,
    );
  }
}
