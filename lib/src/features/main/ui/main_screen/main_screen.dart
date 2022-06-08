import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/src/features/main/ui/main_screen/main_screen_widget_model.dart';
import 'package:water_tracker/src/localization/l10n.dart';

/// [ElementaryWidget] for MainScreen.
class MainScreen extends ElementaryWidget<MainScreenWidgetModel> {
  /// Create an instance of [MainScreen].
  const MainScreen({
    Key? key,
    WidgetModelFactory wmFactory = defaultMainScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(MainScreenWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: Text(wm.ctx.l10n.exampleString),
      ),
    );
  }
}
