import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  final String text;


  const Header({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 13.sp,
          color: Color(0xff06807F),
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 13.sp,
            color: Color(0xff06807F),
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}
class WhiteHeader extends StatelessWidget {
  final String text;


  const WhiteHeader({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 13.sp,
          color: ColorConstants.appBackColorWhite,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 13.sp,
            color: ColorConstants.appBackColorWhite,
            fontWeight: FontWeight.w600,
          )      );
    }
  }
}
