import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomFieldNum extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomFieldNum({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 0.h,bottom: 2.h),
      child: Container(
        width: double.infinity,
        height: 6.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(.7.h),
          color: Color(0xffE8E8E8),
        ),
        child: Padding(
          padding:EdgeInsets.only(left: 3.h,),
          child: TextFormField(
            // readOnly: true,
            style: GoogleFonts.titilliumWeb(
              fontSize: 14.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(maxHeight: 0),
              contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0), // icon is 48px widget.
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.titilliumWeb(
                fontSize: 13.sp,
                color: Color(0xff808285),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
