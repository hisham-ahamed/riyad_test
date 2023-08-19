import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  final RxString currentLocale = ''.obs;

  void changeLocale(String locale) {
    currentLocale(locale);
    Get.updateLocale(Locale(locale));
  }
}
