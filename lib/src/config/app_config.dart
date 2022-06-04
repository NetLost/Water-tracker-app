import 'package:water_tracker/src/config/debug_oprtions.dart';

/// Application configuration.
class AppConfig {
  /// Additional application settings in debug mode.
  final DebugOptions debugOptions;

  /// Create an instance [AppConfig].
  AppConfig({
    required this.debugOptions,
  });

  /// Create an instance [AppConfig] with modified parameters.
  AppConfig copyWith({
    DebugOptions? debugOptions,
  }) =>
      AppConfig(
        debugOptions: debugOptions ?? this.debugOptions,
      );
}
