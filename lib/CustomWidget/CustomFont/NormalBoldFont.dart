import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NormalBoldFont extends StatelessWidget {
  final String text;


  const NormalBoldFont({Key? key, required this.text,}) : super(key: key);

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
            fontWeight: FontWeight.w700,
          )      );
    }
  }
}