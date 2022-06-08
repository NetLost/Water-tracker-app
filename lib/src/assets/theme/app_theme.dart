import 'package:flutter/material.dart';
import 'package:water_tracker/src/assets/colors/app_colors.dart';
import 'package:water_tracker/src/assets/typography/app_typography.dart';

/// Тема цветовая приложения
class AppTheme {
  /// [lightTheme] getter for light theme
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Montserrat',
      textTheme: AppTextStyles.textStyle,
      colorScheme: AppColorScheme.lightColorScheme,
      backgroundColor: AppColors.background,
    );
  }
}

/// Color scheme for app
class AppColorScheme {
  /// [lightColorScheme] getter for light colors scheme
  static ColorScheme get lightColorScheme => const ColorScheme(
        primary: AppColors.primary,
        onPrimary: AppColors.primary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.secondary,
        surface: AppColors.surface,
        onSurface: AppColors.surface,
        background: AppColors.background,
        onBackground: AppColors.background,
        error: AppColors.error,
        onError: AppColors.error,
        brightness: Brightness.light,
      );
}

/// TextTheme for app
class AppTextStyles {
  /// [textStyle] getter for text style
  static TextTheme get textStyle => const TextTheme(
        titleMedium: AppTypography.body1,

        // TODO(NetLost): Add all text styles, https://github.com/NetLost/Water-tracker-app/issues/11
      );
}
