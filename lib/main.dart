import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'Splash/SplashScreen.dart';
import 'lang/LanguageController.dart';
import 'lang/LanguageSelectionPage.dart';
import 'lang/translation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  SharedPreferences preferences = await SharedPreferences.getInstance();

  // Set initial locale based on saved preference
  String? savedLocale = preferences.getString('locale');

  // Create an instance of the LanguageController
  LanguageController languageController = Get.put(LanguageController());

  if (savedLocale != null && savedLocale.isNotEmpty) {
    languageController.changeLocale(savedLocale);
  } else {
    languageController
        .changeLocale(TranslationService.fallbackLocale.languageCode);
  }

  // Register SharedPreferences in the Getx dependency injection system
  Get.put(preferences);
  await GetStorage.init(); // Initialize Get Storage

  // Ensure that the app stays in portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);

      return
          // MultiBlocProvider(
          // providers: [
          //   BlocProvider<LoginBloc>(create: (context) => LoginBloc(),),
          //   // BlocProvider<CategoryBloc>(create: (context) => CategoryBloc(),)
          // ],
          // child:
          GetMaterialApp(
        translations: TranslationService(),
        locale: Get.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        getPages: [
          GetPage(
            name: '/languageSelection',
            page: () => LanguageSelectionPage(),
          ),
        ],
      );
      // );
    });
  }
}
