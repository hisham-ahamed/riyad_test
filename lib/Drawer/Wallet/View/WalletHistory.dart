import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';

class WalletHistory extends StatelessWidget {
  const WalletHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 3.h),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalBoldFont(text: 'Amount Added Wallet'),
                        SizedBox(height: 1.h),
                        NormalFontGrey(text: '14 Feb 2023 at 9.31 AM'),
                      ],
                    ),
                    trailing: Text(
                      '+250 QR',
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: Color(0xff43B01C),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }
}