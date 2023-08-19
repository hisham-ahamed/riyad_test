import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget elevattedButton( String text,onpressed()){
  return SizedBox(
    height: 5.8.h,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        onpressed();
        // Get.to(BookingReciept());

        // Get.to(LoginWithOtp());
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff088F8F),
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
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}