import 'package:flutter/material.dart';
import 'package:water_tracker/src/features/app/app.dart';

/// Run proccess of app. (init, run)
Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const App(),
  );
}
