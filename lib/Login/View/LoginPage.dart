import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'LoginWithNumber.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('Assets/Login.png'))),
          child: Padding(
            padding: EdgeInsets.only(top: 6.h, left: 7.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "Assets/Qatar logo.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23.h, right: 5.h),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "Assets/Login_oneClick.svg",
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
                        child: SizedBox(
                          width: double.infinity,
                          height: 5.7.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(LoginWithNumber());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor:
                                    const Color(0xff099F9F).withOpacity(0.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h),
                                )),
                            child: Text(
                              "Login",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 14.sp,
                                color: const Color(0xff046074),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 5.7.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(.08),
                            foregroundColor:
                                const Color(0xff099F9F).withOpacity(.9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                            elevation: 0,
                            side: const BorderSide(
                                width: 0.3, color: Colors.white),
                          ),
                          child: Text(
                            "Skip",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h, bottom: 1.h),
                        child: Text("Or continue by using",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "Assets/Google_icon.svg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 1.5.h,
                          ),
                          SvgPicture.asset(
                            "Assets/Facebook_icon.svg",
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                            "By Registering you are accepting our terms of use and privacy policy",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
