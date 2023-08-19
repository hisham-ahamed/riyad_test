import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BottomGreyFont extends StatelessWidget {
  final String text;


  const BottomGreyFont({Key? key, required this.text,}) : super(key: key);

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
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 9.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}


class SmallGreyFont extends StatelessWidget {
  final String text;


  const SmallGreyFont({Key? key, required this.text,}) : super(key: key);

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
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 8.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          )      );
    }
  }
}
