import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HeaderWhite extends StatelessWidget {
  final String text;


  const HeaderWhite({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _text(text);
  }
  _text(String text){
    if(text=='null'){
      return Text(
        '',
        style: GoogleFonts.titilliumWeb(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    else if(text!='null'){
      return Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 17.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          )      );
    }
  }
}