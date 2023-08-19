import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LanguageController.dart';

class LanguageSelectionPage extends StatelessWidget {
  final LanguageController languageController = Get.find<LanguageController>();
  final SharedPreferences preferences = Get.find();

  LanguageSelectionPage({super.key});

  void _changeLanguage(String languageCode) {
    languageController.changeLocale(languageCode);
    preferences.setString('locale', languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(('change_language'.tr)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _changeLanguage('en'),
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('ar'),
              child: const Text('Arabic'),
            ),
          ],
        ),
      ),
    );
  }
}
