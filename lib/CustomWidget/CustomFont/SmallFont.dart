import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SmallFont extends StatelessWidget {
  final String text;


  const SmallFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 7.sp,
          color: Color(0xff06807F),
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 7.sp,
            color:  Color(0xff06807F),
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}


class SmallGreyColor extends StatelessWidget {
  final String text;


  const SmallGreyColor({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 7.sp,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 7.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}

class SmallBlackColor extends StatelessWidget {
  final String text;


  const SmallBlackColor({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 8.sp,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 8.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}