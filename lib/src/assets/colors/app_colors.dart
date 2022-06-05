import 'dart:ui';

import 'package:flutter/material.dart';

/// Colors for app
abstract class AppColors {
  /// primary color
  static const Color primary = _blue;
  /// on primary color
  static const Color onPrimary = _white;
  /// secondary color
  static const Color secondary = _violet;
  /// on secondary color
  static const Color onSecondary = _white;
  /// teriary color
  static const Color surface = _brown;
  /// secondary color
  static const Color onSurface = _white;
  /// error color
  static const Color error = _red;
  /// on error color
  static const Color onError = _white;
  /// background color
  static const Color background = _white;
  /// on backgroung color
  static const Color onBackground = _black;
  /// outline color
  static const Color outline = _grey;

  static const Color _blue = Color(0x00534EC4);
  static const Color _violet = Color(0x005654A8);
  static const Color _brown = Color(0x009B442A);
  static const Color _red = Color(0x00BA1A1A);
  static const Color _white = Color(0x00FFFBFF);
  static const Color _grey = Color(0x00787680);
  static const Color _black = Color(0x00231B00);
}
