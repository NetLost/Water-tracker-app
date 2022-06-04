import 'package:flutter/material.dart';
import 'package:water_tracker/src/features/main/ui/main_screen/main_screen_route.dart';

/// All routes of the app.
class AppRouter {
  /// Path to MainScreen.
  static const String mainScreen = '/';

  /// List of routes.
  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
  };
}
