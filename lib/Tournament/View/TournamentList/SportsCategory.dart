// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
// import '../../../AppConstants/ColorConstants.dart';
// import '../../../CustomWidget/CustomFont/BottomGreyFont.dart';
// import '../../../CustomWidget/CustomFont/NormalFont.dart';
// import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';
// import 'TournamnetSingleView.dart';
//
//
//
//
// class SportsCategory extends StatelessWidget {
//   // const SportsCategory({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Column(children: [
//             Container(
//                 height: 14.h,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("Assets/banner.png"),
//                       fit: BoxFit.cover),
//                   borderRadius: BorderRadius.all(Radius.circular(13)),
//                   color: ColorConstants.lightGrey,
//                 )),
//             SizedBox(
//               height: 1.5.h,
//             ),
//             ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 padding: EdgeInsets.zero,
//                 shrinkWrap: true,
//                 // itemExtent: 80.0,
//                 itemCount: 4,
//                 itemBuilder: (
//                     BuildContext context,
//                     int index,
//                     ) {
//                   return Padding(
//                     padding: EdgeInsets.only(bottom: 2.h),
//                     child: Container(
//                       // height: 22.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2.h),
//                           color: Colors.white,
//                           border: Border.all(
//                             color: Colors.grey,
//                             style: BorderStyle.solid,
//                             width: .3,
//                           ),
//                         ),
//                         child: Column(
//                           children: [
//                             InkWell(
//                               onTap: () {
//                                 Get.to(TournamnetSingleView());
//
//                               },
//                               child: Container(
//                                 height: 14.h,
//                                 margin: EdgeInsets.all(.6.h),
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                           "https://th.bing.com/th/id/OIP.JM-Q4CLwydTsz4Sz82aXMQAAAA?pid=ImgDet&rs=1"),
//                                       fit: BoxFit.cover),
//                                   borderRadius:
//                                   BorderRadius.all(Radius.circular(13)),
//                                   color: ColorConstants.lightGrey,
//                                 ),
//
//                                 child: Center(
//                                   child: Image.asset('Assets/SoccerTournament.png',height:11.h )
//                                 ),
//
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 2.h, right: 2.h),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//
//                                   SizedBox(
//                                     height: 1.h,
//                                   ),
//
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "Soccer Tournament 2023",
//                                             style: GoogleFonts.titilliumWeb(
//                                                 fontSize: 12.sp,
//                                                 color: Color(0xff06807F),
//                                                 fontWeight: FontWeight.w700,
//                                                 height: .15.h),
//                                           ),
//                                           SizedBox(
//                                             height: 1.h,
//                                           ),
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.calendar_month,
//                                                 size: 1.5.h,
//                                                 color: Colors.grey,
//                                               ),
//                                               SizedBox(
//                                                 width: .3.h,
//                                               ),
//                                               SmallGreyFont(
//                                                 text: '14 Feb 2023',
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(
//                                             height: .3.h,
//                                           ),
//                                         ],
//                                       ),
//                                       Container(
//                                         // height: 7.h,
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                             BorderRadius.circular(.9.h),
//                                             color: ColorConstants.boxColor,
//                                             border: Border.all(
//                                               color: Color(0xff047472),
//                                               width: 1,
//                                             ),
//                                           ),
//                                           child: Padding(
//                                             padding: EdgeInsets.only(
//                                                 left: .7.h,
//                                                 right: 1.h,
//                                                 top: .5.h,
//                                                 bottom: 1.h),
//                                             child: Row(
//                                               children: [
//                                                 SizedBox(
//                                                     height: 2.h,
//                                                     child: Image(
//                                                         image: AssetImage(
//                                                             "Assets/foot.png"))),
//                                                 SizedBox(width: .5.h,),
//                                                 Column(
//                                                   children: [
//                                                     SmallBoldFont(text: '7x7'),
//                                                     SmallBoldFont(text: 'Football'),
//                                                   ],
//                                                 )
//                                               ],
//                                             ),
//                                           )),
//                                     ],
//                                   ),
//                               SizedBox(height: .5.h,),
//
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Icon(
//                                         Icons.access_time_filled_rounded,
//                                         size: 1.5.h,
//                                         color: Colors.grey,
//                                       ),
//                                       SizedBox(
//                                         width: .3.h,
//                                       ),
//                                       SmallGreyFont(
//                                         text: '9:30 pm',
//                                       ),
//                                     ],
//                                   ),
//                                   RichText(
//                                     text: TextSpan(
//                                       children: [
//                                         TextSpan(
//                                           text: 'Team Registration Fee: ',
//                                           style: GoogleFonts.titilliumWeb(
//                                             fontSize: 8.sp,
//                                             color: Colors.grey,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                         TextSpan(
//                                           text: '500 QR',
//                                           style: GoogleFonts.titilliumWeb(
//                                             fontSize: 8.sp,
//                                             color: Color(0xff099F9F),
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//
//
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     children: [
//
//
//
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.location_on,
//                                             size: 1.5.h,
//                                             color: Colors.grey,
//                                           ),
//                                           SizedBox(
//                                             width: .3.h,
//                                           ),
//                                           SmallGreyFont(
//                                             text: 'Racing Club, Al Rayyan',
//                                           ),
//                                         ],
//                                       ),
//                                       RichText(
//                                         text: TextSpan(
//                                           children: [
//                                             TextSpan(
//                                               text: 'Tournament Prize: ',
//                                               style: GoogleFonts.titilliumWeb(
//                                                 fontSize: 8.sp,
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                             TextSpan(
//                                               text: '100000 QR',
//                                               style: GoogleFonts.titilliumWeb(
//                                                 fontSize: 8.sp,
//                                                 color: Color(0xff099F9F),
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//
//                                   SizedBox(
//                                     height: 1.h,
//                                   ),
//
//                                   SizedBox(height: 1.h,),
//                                   Row(
//                                     children: [
//                                       Expanded(
//                                           flex: 1,
//                                           child: SizedBox(
//                                             height: 3.5.h,
//                                             width: double.infinity,
//                                             child: ElevatedButton(
//                                               onPressed: () {
//                                                 // Get.to(TicketUi());
//                                               },
//                                               style: ElevatedButton.styleFrom(
//                                                   backgroundColor:
//                                                   Color.fromRGBO(8, 147, 147, 0.15) ,
//                                                   foregroundColor:
//                                                   ColorConstants
//                                                       .appBackColorWhite,
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                     BorderRadius.circular(
//                                                         1.h),
//                                                   )),
//                                               child: NormalFontWhite(
//                                                 text: '19/32 slots left',
//                                               ),
//                                             ),
//                                           )),
//                                       SizedBox(width: 1.5.h,),
//
//                                       Expanded(
//                                           flex: 1,
//                                           child: SizedBox(
//                                             height:3.5.h,
//                                             width: double.infinity,
//                                             child: ElevatedButton(
//                                               onPressed: () {
//                                                 // Get.to(TicketUi());
//                                               },
//                                               style: ElevatedButton.styleFrom(
//                                                   backgroundColor:
//                                                   ColorConstants
//                                                       .buttonColor,
//                                                   foregroundColor:
//                                                   ColorConstants
//                                                       .appBackColorWhite,
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                     BorderRadius.circular(
//                                                         1.h),
//                                                   )),
//                                               child: NormalFontWhite(
//                                                 text: 'Join',
//                                               ),
//                                             ),
//                                           ))
//
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 2.h,
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         )),
//                   );
//                 }),
//             SizedBox(height: 5.h,),
//           ]),
//         ));
//   }
// }
