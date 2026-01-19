import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale _locale = const Locale('ar', 'YE');

  Locale get locale => _locale;

  bool get isArabic => _locale.languageCode == 'ar';

  void toggleLanguage() {
    if (isArabic) {
      setLocale(const Locale('en', 'US'));
    } else {
      setLocale(const Locale('ar', 'YE'));
    }
  }

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    Get.updateLocale(newLocale);
    update();
  }
}
