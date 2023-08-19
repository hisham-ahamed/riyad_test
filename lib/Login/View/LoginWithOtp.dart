import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:riyad_test/HomePage/View/HomePage.dart';
import 'package:riyad_test/Login/Controller/PhoneTextController.dart';
import 'package:riyad_test/Login/Controller/login-registration-request.dart';
import 'package:riyad_test/Login/Model/otp_validation_response.dart';
import 'package:riyad_test/Login/View/user-registration.dart';
import 'package:sizer/sizer.dart';

class LoginWithOtp extends StatelessWidget {
  LoginWithOtp({Key? key}) : super(key: key);
  final phoneTextController = Get.put(PhoneTextController());
  final addUserDataFromResponse = Get.put(UserData());
  final userDetailsState = Get.put(UserDetailsState());

  onAlertButtonPressed(BuildContext context,
      UserDetailsRequestResponse response, AlertType alertType) {
    Alert(
      context: context,
      type: alertType,
      style: const AlertStyle(isCloseButton: false),
      title: response.message,
      buttons: [
        DialogButton(
          onPressed: () => {Navigator.pop(context)},
          width: 120,
          color: const Color(0xff088F8F),
          child: const Text(
            "ok",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ).show().then((_) => transferToScreen(response.responseCode));
  }

  loginValidation(BuildContext context, UserDetailsRequestResponse response) {
    switch (response.responseCode) {
      case 1:
        onAlertButtonPressed(context, response, AlertType.error);
        break;
      case 2:
        onAlertButtonPressed(context, response, AlertType.success);
        break;
      case 4:
        onAlertButtonPressed(context, response, AlertType.success);
        break;
    }
  }

  transferToScreen(int responseCode) {
    switch (responseCode) {
      case 1:
        break;
      case 2:
        UserDataValue.mobileNumber =
            phoneTextController.mobileNumber.value.toString();
        Get.to(UserRegistration());
        break;
      case 4:
        phoneTextController
            .saveToken(addUserDataFromResponse.userData.value.token);
        UserDataValue.userData =
            addUserDataFromResponse.userData.value.userDetails;
        Get.offAll(HomePage());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.white,
      content: Text(
        phoneTextController.responseMessageOnPhoneNumberPostRequest.value,
        style: const TextStyle(color: Color(0xff088F8F)),
      ),
    );
    Future.delayed(const Duration(milliseconds: 200),
        () => ScaffoldMessenger.of(context).showSnackBar(snackBar));

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
                                "Enter OTP to \nLogin",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 31.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 2.h),
                              child: OTPTextField(
                                length: 4,
                                width: double.infinity,
                                fieldWidth: 5.h,
                                spaceBetween: 0,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                ),
                                outlineBorderRadius: 1.h,
                                otpFieldStyle: OtpFieldStyle(
                                    backgroundColor: const Color(0xffE8E8E8),
                                    // borderColor: Colors.lightBlue,
                                    // disabledBorderColor: ColorConstants.appThemeColorRed,
                                    focusBorderColor: const Color(0xffE8E8E8),
                                    enabledBorderColor:
                                        const Color(0xffE8E8E8)),
                                style: TextStyle(fontSize: 15.sp),
                                textFieldAlignment:
                                    MainAxisAlignment.spaceAround,
                                fieldStyle: FieldStyle.box,
                                onCompleted: (pin) {
                                  if (kDebugMode) {
                                    print("Completed: $pin");
                                    phoneTextController.setOtp(pin);
                                  }
                                },
                                onChanged: (pin) {
                                  if (kDebugMode) {
                                    print("onchange : $pin");
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Didn't receive yet ? ",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 13.sp,
                                      color: Colors.black.withOpacity(1),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("Resend OTP",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 13.sp,
                                      color: const Color(0xff099F9F),
                                      fontWeight: FontWeight.w600,
                                      height: 1.1,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 5.7.h,
                              child: phoneTextController.loginLoadingState.value
                                  ? ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff088F8F),
                                          foregroundColor:
                                              const Color(0xff099F9F)
                                                  .withOpacity(0.9),
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
                                            .setLoginLoadingState(true);
                                        UserDetailsRequestResponse response =
                                            await ApiRequests.postOTPValidation(
                                                phoneNumber: phoneTextController
                                                    .mobileNumber.value
                                                    .toString(),
                                                otp: phoneTextController
                                                    .otp.value);
                                        addUserDataFromResponse
                                            .setUserDataResponse(response);
                                        phoneTextController
                                            .setLoginLoadingState(false);
                                        loginValidation(context, response);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff088F8F),
                                          foregroundColor:
                                              const Color(0xff099F9F)
                                                  .withOpacity(0.9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1.h),
                                          )),
                                      child: Text(
                                        "Login",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
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
}
