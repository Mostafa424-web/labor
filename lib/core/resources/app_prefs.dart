import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_constance.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'language_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  String isIntroView = '';
  String isLoggedIn = "PREFS_KEY_IS_USER_LOGGED_IN";
  SharedPreferences get sharedPreferences => _sharedPreferences;

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(AppConstance.appLanguage);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.english.getValue();
    }
  }

  Future<void> changeAppLanguage() async {
    String? currentLanguage = await getAppLanguage();

    if (currentLanguage == LanguageType.arabic.getValue()) {
      // set english
      _sharedPreferences.setString(
          AppConstance.appLanguage, LanguageType.arabic.getValue());
    } else {
      // set arabic
      _sharedPreferences.setString(
          AppConstance.appLanguage, LanguageType.english.getValue());
    }
  }

  Future<Locale> getLocale() async {
    String? currentLanguage = await getAppLanguage();

    if (currentLanguage == LanguageType.arabic.getValue()) {
      return arabicLocale;
    } else {
      return englishLocale;
    }
  }

  Future<void> setOnBoardingScreenViewed() async {
    _sharedPreferences.setBool(isIntroView, true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return _sharedPreferences.getBool(isIntroView) ??
        false;
  }

  //login

  Future<void> setUserLoggedIn() async {
    _sharedPreferences.setBool(isLoggedIn, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(isLoggedIn) ?? false;
  }
}