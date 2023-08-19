import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ar_EG.dart';
import 'en_US.dart';



class TranslationService extends Translations {
  static final fallbackLocale = Locale('en');

  @override
  static final Map<String, Map<String, String>> translations = {
    'ar': ar_EG,
    'en': en_US,
  };

  @override
  Map<String, Map<String, String>> get keys => translations;

  static String translate(String key) {
    return translations[Get.locale!.languageCode]![key] ?? key;
  }
}