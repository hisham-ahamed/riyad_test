import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/HomePage/View/HomePage.dart';
import 'package:riyad_test/Login/Controller/PhoneTextController.dart';
import 'package:riyad_test/Login/Controller/login-registration-request.dart';
import 'package:riyad_test/Login/Model/otp_validation_response.dart';
import 'package:sizer/sizer.dart';

import '../../CustomWidget/CustomFieldNum.dart';
import '../../CustomWidget/CustomTextField.dart';

class UserRegistration extends StatelessWidget {
  UserRegistration({Key? key}) : super(key: key);
  final phoneTextController = Get.put(PhoneTextController());
  final addUserDataFromResponse = Get.put(UserData());
  final lastNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController =
      TextEditingController(text: UserDataValue.mobileNumber);
  final referralCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(milliseconds: 100))
    //     .then((value) => numberController.value.text = 'dd');
    return GetBuilder<PhoneTextController>(
        init: PhoneTextController(),
        builder: (_) => Scaffold(
              extendBodyBehindAppBar: true,
              body: ListView(
                children: [
                  Container(
                    // height: double.infinity,
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
                                    "Enter Your Details \nbelow",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 31.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      height: 1.1,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                CustomField(
                                  controller: firstNameController,
                                  hintText: 'First Name',
                                ),
                                CustomField(
                                  controller: lastNameController,
                                  hintText: 'Last Name',
                                ),
                                CustomField(
                                  controller: emailController,
                                  hintText: 'Email',
                                ),
                                CustomFieldNum(
                                  controller: numberController,
                                  hintText: 'Mobile Number',
                                ),
                                CustomFieldNum(
                                  controller: referralCode,
                                  hintText: 'Referral Code',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.h),
                                  child: Text(
                                      "Communications and transaction history from Riyadi will be sent to the verified email address",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 11.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 5.7.h,
                                  child: phoneTextController
                                          .registerLoadingState.value
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
                                          child:
                                              const CircularProgressIndicator(
                                                  color: Colors.white),
                                        )
                                      : ElevatedButton(
                                          onPressed: () async {
                                            phoneTextController
                                                .setRegisterLoadingState(true);
                                            print(
                                                firstNameController.value.text);
                                            UserDetails userDetails = UserDetails(
                                                id: 0,
                                                email:
                                                    emailController.value.text,
                                                firstName: firstNameController
                                                    .value.text,
                                                lastName: lastNameController
                                                    .value.text,
                                                imageUrl:
                                                    '/C:/Users/HP/Desktop/2014-Audi-RS5-Cabriolet-Buyers-Guide-Black-Optics-vs-Matte-Aluminum-Optics-61-800x418.webp',
                                                mobileNumber: numberController
                                                    .value.text);

                                            UserDetailsRequestResponse
                                                response = await ApiRequests
                                                    .registerNewUser(
                                                        userDetails:
                                                            userDetails);
                                            phoneTextController
                                                .saveToken(response.token);
                                            UserDetailsRequestResponse
                                                userRequestResponse =
                                                await ApiRequests
                                                    .postOTPValidation(
                                                        phoneNumber:
                                                            phoneTextController
                                                                .mobileNumber
                                                                .value
                                                                .toString(),
                                                        otp: phoneTextController
                                                            .otp.value);
                                            addUserDataFromResponse
                                                .setUserDataResponse(
                                                    userRequestResponse);
                                            phoneTextController
                                                .setRegisterLoadingState(true);
                                            print(response.token);
                                            UserDataValue.userData =
                                                addUserDataFromResponse
                                                    .userData.value.userDetails;
                                            Get.offAll(HomePage());
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
                ],
              ),
            ));
  }
}
