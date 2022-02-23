import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations? locale(String key) {
    return AppLocalizations.of(this);
  }

  NavigatorState navigator(){
    return Navigator.of(this);
  }

  ThemeData theme(){
    return Theme.of(this);
  }
}
