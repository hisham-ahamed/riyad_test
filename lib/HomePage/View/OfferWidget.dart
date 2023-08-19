import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OffersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.3.h),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffACA9FA).withOpacity(.7),
                    Color(0xffBAB8F0).withOpacity(.6),
                    Color(0xffC7D1FF).withOpacity(.6),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 1.h,bottom: 1.h),
                child: Column(
                  children: [
                    Text(
                      "Flat 50% off",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 14.sp,
                        color: Color(0xff392D87)..withOpacity(.3),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Use coupon code",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 7.sp,
                            color: Color(0xff222222)..withOpacity(.3),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "#RIY50OFF",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 7.sp,
                            color: Color(0xff392D87)..withOpacity(.3),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Aspire Zone",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 8.sp,
                        color: Color(0xff392D87)..withOpacity(.3),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top: .7.h),
                      child: Text(
                        "Aziziya, Near Villagio",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Color(0xff222222)..withOpacity(.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          Expanded(
            flex: 1,
            child: Container(
                // height: 10.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.3.h),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffE19348).withOpacity(.7),
                      Color(0xffE1A562).withOpacity(.6),
                      Color(0xffFFF4D4).withOpacity(.6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 1.h,bottom: 1.h),
                  child: Column(
                    children: [
                      Text(
                        "QAR 60% off",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 14.sp,
                          color: Color(0xffE1A562)..withOpacity(.3),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Use coupon code",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 7.sp,
                              color: Color(0xff222222)..withOpacity(.3),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "#RIY50OFF",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 7.sp,
                              color: Color(0xffE1A562)..withOpacity(.3),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Ezdan Court",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 8.sp,
                          color: Color(0xffE1A562)..withOpacity(.3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: .7.h),
                        child: Text(
                          "Barwa Village, Wakra",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 7.sp,
                            color: Color(0xff222222)..withOpacity(.3),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}

// DotWidget(
// dashColor: Colors.white,
// dashHeight: .5,
// dashWidth: 3,
// )
