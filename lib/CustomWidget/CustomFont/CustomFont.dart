import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomFont extends StatelessWidget {
  final String text;


  const CustomFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 15.sp,
          color: Color(0xff06807F),
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
        text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15.sp,
            color: Color(0xff06807F),
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}
class CustomFontwhite extends StatelessWidget {
  final String text;


  const CustomFontwhite({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}

class CustomFontBlack extends StatelessWidget {
  final String text;


  const CustomFontBlack({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 15.sp,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}