import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension for easy access to l10n localizations.
extension BuildContextL10n on BuildContext {
  /// Getter for l10n localizations.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
