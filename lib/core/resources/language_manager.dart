import 'package:labor_a/core/resources/app_constance.dart';
import 'package:flutter/widgets.dart';

enum LanguageType { english, arabic }

const Locale arabicLocale = Locale("ar", "SA");
const Locale englishLocale = Locale("en", "US");
const String assetsPathLocalization = "assets/translations";

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return AppConstance.english;
      case LanguageType.arabic:
        return AppConstance.arabic;
    }
  }
}
