import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BottomBlackFont extends StatelessWidget {
  final String text;


  const BottomBlackFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 9.sp,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 9.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}

class BoldBlackFont extends StatelessWidget {
  final String text;


  const BoldBlackFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 9.sp,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 9.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          )      );
    }
  }
}
class IconFont extends StatelessWidget {
  final String text;


  const IconFont({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.titilliumWeb(
          fontSize: 9.sp,
          color:  const Color(0xff222222),
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.titilliumWeb(
            fontSize: 9.sp,
            color: const Color(0xff222222),
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}
