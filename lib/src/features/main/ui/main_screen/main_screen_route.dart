import 'package:flutter/material.dart';
import 'package:water_tracker/src/features/main/ui/main_screen/main_screen.dart';

/// [MaterialPageRoute] for [MainScreen].
class MainScreenRoute extends MaterialPageRoute<void> {
  /// Create an instance of [MainScreen].
  MainScreenRoute() : super(builder: (ctx) => const MainScreen());
}
