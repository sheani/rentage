import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rentage/core/localization/locale_base.dart';
import 'package:rentage/core/localization/locales/en.dart';
import 'package:rentage/core/localization/locales/ru.dart';

class Locals {
  Locals(this.locale, this.localizedValues) {
    current = localizedValues[locale.languageCode];
  }

  final Map<String, BaseLocale> localizedValues;
  BaseLocale current;
  final Locale locale;
  static BaseLocale lastLocale = RuLocale();
}

Map<String, BaseLocale> initializeLocales() {
  final Map<String, BaseLocale> values = <String, BaseLocale>{};
  values['ru'] = RuLocale();
  values['en'] = EnLocale();
  return values;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<Locals> {
  AppLocalizationsDelegate(this.localizedValues);

  Map<String, BaseLocale> localizedValues;

  @override
  bool isSupported(Locale locale) =>
      localizedValues.keys.toList().contains(locale.languageCode);

  @override
  Future<Locals> load(Locale locale) {
    return SynchronousFuture<Locals>(
        Locals(
            isSupported(locale) ? locale : const Locale('ru'),
            localizedValues
        )
    );
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
