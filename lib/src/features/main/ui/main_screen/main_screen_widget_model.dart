import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_tracker/src/features/app/di/base/app_scope_interface.dart';
import 'package:water_tracker/src/features/main/ui/main_screen/main_screen.dart';
import 'package:water_tracker/src/features/main/ui/main_screen/main_screen_model.dart';

/// Factory for [MainScreenWidgetModel].
MainScreenWidgetModel defaultMainScreenWidgetModelFactory(
  BuildContext context,
) {
  // It is an example of di.
  // ignore: unused_local_variable
  final appComponent = context.read<IAppScope>();
  final model = MainScreenModel();

  return MainScreenWidgetModel(
    model: model,
  );
}

/// Default [WidgetModel] for MainScreen.
class MainScreenWidgetModel extends WidgetModel<MainScreen, MainScreenModel>
    implements IMainScreenWidgetModel {
  /// Create an instance [MainScreenWidgetModel].
  MainScreenWidgetModel({required MainScreenModel model}) : super(model);
}

/// Interface of [MainScreenWidgetModel].
abstract class IMainScreenWidgetModel extends IWidgetModel {}
