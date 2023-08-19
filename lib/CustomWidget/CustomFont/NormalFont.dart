import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NormalFont extends StatelessWidget {
  final String text;


  const NormalFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 10.sp,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}

class NormalFontWhite extends StatelessWidget {
  final String text;


  const NormalFontWhite({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 10.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}


class NormalFontWhiteBold extends StatelessWidget {
  final String text;


  const NormalFontWhiteBold({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 10.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          )      );
    }
  }

}
class NormalFontAppbackColor extends StatelessWidget {
  final String text;


  const NormalFontAppbackColor({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 10.sp,
          color:  Color(0xff06807F),
          fontWeight: FontWeight.w700,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: Color(0xff06807F),
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}
class NormalFontGrey extends StatelessWidget {
  final String text;


  const NormalFontGrey({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 10.sp,
          color:  Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color:  Colors.grey,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}