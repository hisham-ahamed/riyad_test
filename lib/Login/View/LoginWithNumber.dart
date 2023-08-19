import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/Login/Controller/PhoneTextController.dart';
import 'package:riyad_test/Login/Controller/login-registration-request.dart';
import 'package:riyad_test/Login/Model/phone-number-request-response.dart';
import 'package:riyad_test/Login/View/LoginWithOtp.dart';
import 'package:sizer/sizer.dart';

class LoginWithNumber extends StatelessWidget {
  LoginWithNumber({Key? key}) : super(key: key);

  final phoneTextController = Get.put(PhoneTextController());
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PhoneTextController>(
        init: PhoneTextController(),
        builder: (_) => Scaffold(
              extendBodyBehindAppBar: true,
              body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/Login_bg.png'))),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 5.h, right: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Colors.black,
                        iconSize: 4.h,
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 9.h, left: 2.h),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Login or create an account",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 31.sp,
                                  color: Colors.black,
                                  height: 1.1,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              width: double.infinity,
                              height: 6.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(.7.h),
                                color: const Color(0xffE8E8E8),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.h, left: .5.h),
                                          child: Container(
                                            height: 3.h,
                                            width: 3.h,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "Assets/Qatar logo.png"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: .7.h,
                                        ),
                                        Text(
                                          "+974",
                                          style: GoogleFonts.titilliumWeb(
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      controller: phoneController,
                                      onChanged: (phoneNumber) {
                                        try {
                                          phoneTextController.setPhoneNumber(
                                              int.parse(phoneNumber));

                                          phoneTextController.setErrorText('');
                                        } catch (e) {
                                          Get.find<PhoneTextController>()
                                              .setErrorText(
                                                  'Only Number Expected');
                                        }
                                      },
                                      decoration: InputDecoration(
                                        errorText: phoneTextController
                                                    .errorMessage.value ==
                                                ''
                                            ? null
                                            : phoneTextController
                                                .errorMessage.value,
                                        prefixIconConstraints:
                                            const BoxConstraints(maxHeight: 0),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 0.0),
                                        border: InputBorder.none,
                                        prefixIcon: const Padding(
                                          padding: EdgeInsets.all(
                                              0.0), // icon is 48px widget.
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                            SizedBox(
                              width: double.infinity,
                              height: 5.7.h,
                              child: phoneTextController
                                      .continueLoadingState.value
                                  ? ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff088F8F),
                                          foregroundColor:
                                              const Color(0xff099F9F)
                                                  .withOpacity(.9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1.h),
                                          )),
                                      child: const CircularProgressIndicator(
                                          color: Colors.white),
                                    )
                                  : ElevatedButton(
                                      onPressed: () async {
                                        phoneTextController
                                            .setContinueLoadingState(true);
                                        PhoneNumberRequestResponse response =
                                            await ApiRequests.postPhoneNumber(
                                                phoneNumber: phoneTextController
                                                    .mobileNumber.value
                                                    .toString());
                                        phoneTextController
                                            .setContinueLoadingState(false);
                                        phoneTextController.setResponseMessage(
                                            response.message);
                                        Get.to(LoginWithOtp());
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff088F8F),
                                          foregroundColor:
                                              const Color(0xff099F9F)
                                                  .withOpacity(.9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1.h),
                                          )),
                                      child: Text(
                                        "Continue",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          "By Registering you are accepting our",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 12.sp,
                                        color: Colors.black.withOpacity(1),
                                        fontWeight: FontWeight.w500,
                                      )),
                                  TextSpan(
                                      text: " terms of use",
                                      style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: const Color(0xff099F9F),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              const Color(0xff099F9F))),
                                  TextSpan(
                                    text: ' and ',
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy policy',
                                    style: GoogleFonts.titilliumWeb(
                                        fontSize: 12.sp,
                                        color: const Color(0xff099F9F),
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            const Color(0xff099F9F)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
  //
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty<PhoneTextController>(
  //       'PhoneNumberController', PhoneNumberController));
  // }
}
