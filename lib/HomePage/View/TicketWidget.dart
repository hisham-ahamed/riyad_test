import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DayPasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            // height: 9.h,
            // width: 4.h,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("Assets/DayPass/DayPass.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 1.5.h,
                  ),
                  RotatedBox(
                    quarterTurns: 3, // Rotate text 90 degrees counter-clockwise
                    child: Text(
                      "Day Pass",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 9.sp,
                        color: Color(0xff1D6573)..withOpacity(.3),
                        fontWeight: FontWeight.w700,
                        height: .2.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 1.3.h),
                  // Add spacing between the rotated text and columns
                  Column(
                    children: [
                      Text(
                        "Marriot Hotel",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 13.sp,
                          color: Color(0xff216774),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Entry to Spa,Pool & Buffet",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: .6.h),
                            child: Text(
                              "13-03-2023",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 7.sp,
                                color: Color(0xff06807F),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: .3.h,
                                    right: .3.h,
                                    top: .1.h,
                                    bottom: .1.h),
                                child: Text(
                                  "QR 400",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9.sp),
                                ),
                              ),
                              color: Color(0xff10A9C6).withOpacity(.7),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      )
                    ],
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
            // height: 9.h,
            // width: 4.h,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("Assets/DayPass/DayPass.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 1.5.h,
                  ),
                  RotatedBox(
                    quarterTurns: 3, // Rotate text 90 degrees counter-clockwise
                    child: Text(
                      "Day Pass",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 9.sp,
                        color: Color(0xff1D6573)..withOpacity(.3),
                        fontWeight: FontWeight.w700,
                        height: .2.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 1.h),
                  // Add spacing between the rotated text and columns
                  Column(
                    children: [
                      Text(
                        "Marriot Hotel",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 13.sp,
                          color: Color(0xff216774),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Entry to Spa,Pool & Buffet",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: .6.h),
                            child: Text(
                              "13-03-2023",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 7.sp,
                                color: Color(0xff06807F),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: .3.h,
                                    right: .3.h,
                                    top: .1.h,
                                    bottom: .1.h),
                                child: Text(
                                  "QR 400",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9.sp),
                                ),
                              ),
                              color: Color(0xff68C3D4).withOpacity(.7),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

// child: Stack(
//   alignment: Alignment.center,
//   children: [
//     Container(
//       height: 8.h,
//       // width:MediaQuery.of(context).size.width * 0.4,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color(0xff68C3D4).withOpacity(.7),
//             Color(0xff047472).withOpacity(.6),
//             Color(0xff047472).withOpacity(.6),
//             Color(0xff68C3D4).withOpacity(.7),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding:EdgeInsets.only(left: 1.h,),
//             child: RotatedBox(
//               quarterTurns: 3,
//               child: Text("Day Pass",
//                       style: GoogleFonts.titilliumWeb(
//                           fontSize: 9.sp,
//                           color: Color(0xff06807F)..withOpacity(.3),
//                           fontWeight: FontWeight.w700,
//                           height: .2.h,
//
//                       ),),
//
//               // child: RichText(
//               //   text: TextSpan(
//               //     text: 'Day Pass',
//               //       style: GoogleFonts.titilliumWeb(
//               //           fontSize: 9.sp,
//               //           color: Color(0xff06807F),
//               //           fontWeight: FontWeight.w700,
//               //           height: .2.h,
//               //
//               //       ),
//               //     children: [
//               //       WidgetSpan(
//               //         child:
//               //         Padding(
//               //           padding:EdgeInsets.only(top: .2.h),
//               //           child:
//
//               //         )
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),
//           VerticalDivider(
//             color: Colors.white,
//             thickness: .5,
//           ),
//
//
//           Padding(
//             padding:EdgeInsets.only(left: .5.h,top: .5.h),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Marriot Hotel",
//                   style: GoogleFonts.titilliumWeb(
//                     fontSize: 13.sp,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//
//                   ),
//                 ),
//                 Text("Entry to Spa,Pool & Buffet",
//                   style: GoogleFonts.titilliumWeb(
//                     fontSize: 7.sp,
//                     color: Color(0xff06807F).withOpacity(.7),
//                     fontWeight: FontWeight.w700,
//
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: .6.h),
//                       child: Text("13-03-2023",
//                         style: GoogleFonts.titilliumWeb(
//                           fontSize: 7.sp,
//                           color: Color(0xff06807F),
//                           fontWeight: FontWeight.w700,
//
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 1.h),
//                       child: Container(
//                         child: Padding(
//                           padding:EdgeInsets.only(left: .3.h,right: .3.h,top: .1.h,bottom: .1.h),
//                           child: Text("QR 400",style: TextStyle(
//                               color: Colors.white,fontSize: 9.sp
//                           ),),
//                         ),
//                         color:Color(0xff68C3D4).withOpacity(.7) ,
//                       ),
//                     )
//
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//     Positioned(
//         left: -5,
//         child: Container(
//           height: 10,
//           width: 10,
//           decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle
//           ),
//         )),
//     Positioned(
//         right: -5,
//         child: Container(
//           height: 10,
//           width: 10,
//           decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle
//           ),
//
//         )),
//   ],
// ),
