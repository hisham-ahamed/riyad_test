import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SubHeaderBlack extends StatelessWidget {
  final String text;


  const SubHeaderBlack({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 12.sp,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}


class SubHeaderWhite extends StatelessWidget {
  final String text;


  const SubHeaderWhite({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 12.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          )      );
    }
  }
}