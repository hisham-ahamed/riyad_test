import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget venueButton( String text){
  return SizedBox(
    height: 5.8.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        // Get.to(BookingReciept());

        // Get.to(LoginWithOtp());
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor:
          Color(0xff099F9F).withOpacity(.9),
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(1.h),
          )),
      child: Text(
        text,
        style: GoogleFonts.titilliumWeb(
          fontSize: 15.sp,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}