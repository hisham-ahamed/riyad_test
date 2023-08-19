import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Login/View/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          'Assets/Splash.svg',
          height: 7.h,
          width: 0,
        ),
      ),
    );
  }

  @override
  void initState() {
    checkPrefUser();
    super.initState();
  }

  checkPrefUser() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      Get.to(const LoginPage());
    });
  }
}
