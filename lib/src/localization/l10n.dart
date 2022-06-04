import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension for easy access to l10n localizations.
extension BuildContextL10n on BuildContext {
  /// Getter for l10n localizations.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

// Extension for easy access to l10n localizations from ElementaryWidget based on It's WM.
// ignore: public_member_api_docs
extension ElementaryL10n on WidgetModel {
  /// Getter for l10n localizations.
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  AppLocalizations get l10n => AppLocalizations.of(context)!;
}
