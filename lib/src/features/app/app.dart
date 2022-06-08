// ignore_for_file: avoid_redundant_argument_values
import 'package:flutter/material.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:water_tracker/src/assets/theme/app_theme.dart';
import 'package:water_tracker/src/config/debug_oprtions.dart';
import 'package:water_tracker/src/features/app/di/app_scope.dart';
import 'package:water_tracker/src/features/app/di/base/app_scope_interface.dart';
import 'package:water_tracker/src/features/common/widgets/di_scope/di_scope.dart';
import 'package:water_tracker/src/features/navigation/app_router.dart';
import 'package:water_tracker/src/localization/l10n.dart';

/// App widget.
class App extends StatefulWidget {
  /// Create an instance App.
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late IAppScope _scope;

  @override
  void initState() {
    super.initState();

    _scope = AppScope();
  }

  @override
  Widget build(BuildContext context) {
    return DiScope<IAppScope>(
      key: ObjectKey(_scope),
      factory: () => _scope,
      child: MaterialApp(
        /// Debug configuration.
        showPerformanceOverlay: DebugOptions.showPerformanceOverlay,
        debugShowMaterialGrid: DebugOptions.debugShowMaterialGrid,
        checkerboardRasterCacheImages:
            DebugOptions.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: DebugOptions.checkerboardOffscreenLayers,
        showSemanticsDebugger: DebugOptions.showSemanticsDebugger,
        debugShowCheckedModeBanner: DebugOptions.debugShowCheckedModeBanner,

        initialRoute: AppRouter.mainScreen,
        onGenerateRoute: (routeSettings) =>
            AppRouter.routes[routeSettings.name]!(routeSettings.arguments),

        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('ru', ''), // Russia, no country code
          Locale('RU', ''), // Russia, no country code
        ],
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
