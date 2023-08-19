// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'package:google_fonts/google_fonts.dart';
// import 'package:riyad_test/AppConstants/ColorConstants.dart';
// import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderFont.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../Checkout/View/Checkout.dart';
// import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
// import '../../CustomWidget/CustomFont/BottomFont.dart';
//
// import '../../CustomWidget/CustomFont/SmallFont.dart';
//
// class BookingBottomsheet extends StatefulWidget {
//   @override
//   State<BookingBottomsheet> createState() => _BookingBottomsheetState();
// }
//
// class _BookingBottomsheetState extends State<BookingBottomsheet> {
//   int selectedIndex = 0;
//   DateTime now = DateTime.now();
//   late DateTime lastDayOfMonth;
//
//   @override
//   void initState() {
//     super.initState();
//     lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
//   }
//
//   int _selectedCategoryIndex = -1;
//   int _selectDuration = -1;
//   int _selectTime = -1;
//   final List<String> _categories = [
//     '6x6 pitch 1',
//     '6x6 pitch 2',
//     '8x8 pitch 1',
//     '8x8 pitch 2',
//   ];
//   final List<String> _durationCategories = [
//     '60 minutes',
//     '80 minutes',
//     '90 minutes',
//   ];
//
//   final List<String> _timeCategories = [
//     '4:30 PM',
//     '7:30 PM',
//     '8:30 PM',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//             bottomLeft: Radius.zero,
//             bottomRight: Radius.zero),
//         // color: Color.fromRGBO(255, 255, 255, 0.5),
//         color: Colors.white,
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 2.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Aspire Zone, Aziziya",
//                     style: GoogleFonts.titilliumWeb(
//                       fontSize: 15.sp,
//                       color: Color(0xff06807F),
//                       fontWeight: FontWeight.w700,
//                     )),
//                 InkWell(
//                     onTap: () {
//                       // Get.back();
//                     },
//                     child: Icon(Icons.favorite_border, color: Colors.black))
//               ],
//             ),
//             SizedBox(
//               height: .8.h,
//             ),
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(1.5.h),
//                       // color: Color.fromRGBO(255, 255, 255, 0.5),
//                       color: ColorConstants.appThemeColorGreen),
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: .5.h, right: .5.h, top: 1.h, bottom: 1.h),
//                     child: Center(
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.location_on,
//                             color: Colors.white,
//                             size: 1.5.h,
//                           ),
//                           SizedBox(width: .3.h),
//                           BottomFont(
//                             text: 'Al Wahab St.Doha',
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 1.h,
//                 ),
//                 Expanded(
//                     child: BottomBlackFont(
//                   text:
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, niam, quis nostrud exercipsum dolor si.',
//                 ))
//               ],
//             ),
//             SizedBox(
//               height: 1.5.h,
//             ),
//             Scrollbar(
//                 trackVisibility: false,
//                 thumbVisibility: false,
//                 // // controller: _controllerOne,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(.4.h),
//                             // color: Color.fromRGBO(255, 255, 255, 0.5),
//                             color: ColorConstants.boxColor),
//                         child: Padding(
//                           padding: EdgeInsets.all(.6.h),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.local_parking_outlined,
//                                 color: Colors.black,
//                                 size: 1.5.h,
//                               ),
//                               SizedBox(width: .3.h),
//                               BottomBlackFont(
//                                 text: 'Free Parking',
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 1.h,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(.4.h),
//                             // color: Color.fromRGBO(255, 255, 255, 0.5),
//                             color: ColorConstants.boxColor),
//                         child: Padding(
//                           padding: EdgeInsets.all(.6.h),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.local_restaurant,
//                                 color: Colors.black,
//                                 size: 1.5.h,
//                               ),
//                               SizedBox(width: .3.h),
//                               BottomBlackFont(
//                                 text: 'Restaurant',
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 1.h,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(.4.h),
//                             // color: Color.fromRGBO(255, 255, 255, 0.5),
//                             color: ColorConstants.boxColor),
//                         child: Padding(
//                           padding: EdgeInsets.all(.6.h),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.shower,
//                                 color: Colors.black,
//                                 size: 1.5.h,
//                               ),
//                               SizedBox(width: .3.h),
//                               BottomBlackFont(
//                                 text: 'Bathroom',
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 1.h,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(.4.h),
//                             // color: Color.fromRGBO(255, 255, 255, 0.5),
//                             color: ColorConstants.boxColor),
//                         child: Padding(
//                           padding: EdgeInsets.all(.6.h),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.lock_outlined,
//                                 color: Colors.black,
//                                 size: 1.5.h,
//                               ),
//                               SizedBox(width: .3.h),
//                               BottomBlackFont(
//                                 text: 'Lock Room',
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 1.h,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(.4.h),
//                             // color: Color.fromRGBO(255, 255, 255, 0.5),
//                             color: ColorConstants.boxColor),
//                         child: Padding(
//                           padding: EdgeInsets.all(.6.h),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.lock_outlined,
//                                 color: Colors.black,
//                                 size: 1.5.h,
//                               ),
//                               SizedBox(width: .3.h),
//                               BottomBlackFont(
//                                 text: 'Lock Room',
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//             SizedBox(
//               height: .4.h,
//             ),
//             new Divider(
//               color: Colors.grey.withOpacity(.6),
//             ),
//             Row(
//               children: [
//                 Container(
//                     height: 7.h,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(.9.h),
//                         color: ColorConstants.boxColor),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: 1.6.h, right: 1.6.h, top: 1.2.h),
//                       child: Column(
//                         children: [
//                           Container(
//                               height: 3.h,
//                               child:
//                                   Image(image: AssetImage("Assets/foot.png"))),
//                           Padding(
//                             padding: EdgeInsets.only(top: .3.h),
//                             child: SmallFont(text: 'Football'),
//                           )
//                         ],
//                       ),
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 2.h,
//             ),
//             SubHeaderFont(text: 'Select Field'),
//             SizedBox(
//               height: 1.h,
//             ),
//             Scrollbar(
//               thumbVisibility: false,
//               // // controller: _controllerOne,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Wrap(
//                       spacing: 8.0,
//                       runSpacing: 8.0,
//                       children: _buildCategoryfield(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             //
//             // SizedBox(height: 16.0),
//             // SingleChildScrollView(
//             //   scrollDirection: Axis.horizontal,
//             //   physics: const ClampingScrollPhysics(),
//             //   child: Row(
//             //     children: List.generate(
//             //       lastDayOfMonth.day,
//             //           (index) {
//             //         final currentDate =
//             //         lastDayOfMonth.add(Duration(days: index + 1));
//             //         final dayName = DateFormat('E').format(currentDate);
//             //         return Padding(
//             //           padding: EdgeInsets.only(
//             //               left: index == 0 ? 16.0 : 0.0, right: 16.0),
//             //           child: GestureDetector(
//             //             onTap: () => setState(() {
//             //               selectedIndex = index;
//             //             }),
//             //             child: Column(
//             //               mainAxisAlignment: MainAxisAlignment.center,
//             //               children: [
//             //                 Container(
//             //                   height: 42.0,
//             //                   width: 42.0,
//             //                   alignment: Alignment.center,
//             //                   decoration: BoxDecoration(
//             //                     color: selectedIndex == index
//             //                         ? Colors.orange
//             //                         : Colors.transparent,
//             //                     borderRadius: BorderRadius.circular(44.0),
//             //                   ),
//             //                   child: Text(
//             //                     dayName.substring(0, 1),
//             //                     style: TextStyle(
//             //                       fontSize: 24.0,
//             //                       color: selectedIndex == index
//             //                           ? Colors.white
//             //                           : Colors.black54,
//             //                       fontWeight: FontWeight.bold,
//             //                     ),
//             //                   ),
//             //                 ),
//             //                 const SizedBox(height: 8.0),
//             //                 Text(
//             //                   "${index + 1}",
//             //                   style: const TextStyle(
//             //                     fontSize: 16.0,
//             //                     color: Colors.black54,
//             //                     fontWeight: FontWeight.bold,
//             //                   ),
//             //                 ),
//             //                 const SizedBox(height: 8.0),
//             //                 Container(
//             //                   height: 2.0,
//             //                   width: 28.0,
//             //                   color: selectedIndex == index
//             //                       ? Colors.orange
//             //                       : Colors.transparent,
//             //                 ),
//             //               ],
//             //             ),
//             //           ),
//             //         );
//             //       },
//             //     ),
//             //   ),
//             // ),
//
//             SizedBox(
//               height: 2.h,
//             ),
//             SubHeaderFont(text: 'Select Duration'),
//             SizedBox(
//               height: 1.h,
//             ),
//             Scrollbar(
//               thumbVisibility: false,
//               // // controller: _controllerOne,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Wrap(
//                       spacing: 8.0,
//                       runSpacing: 8.0,
//                       children: _buildCategoryDuration(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             SizedBox(
//               height: 2.h,
//             ),
//             SubHeaderFont(text: 'Select Time'),
//             SizedBox(
//               height: 1.h,
//             ),
//             Scrollbar(
//               thumbVisibility: false,
//               // // controller: _controllerOne,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Wrap(
//                       spacing: 8.0,
//                       runSpacing: 8.0,
//                       children: _buildCategoryTime(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 2.h,
//             ),
//
//             Padding(
//               padding: EdgeInsets.only(right: 3.h),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Amount",
//                             style: GoogleFonts.titilliumWeb(
//                               fontSize: 12.sp,
//                               color: Colors.black,
//                               fontWeight: FontWeight.w600,
//                             )),
//                         Text("QAR 200",
//                             style: GoogleFonts.titilliumWeb(
//                               fontSize: 15.sp,
//                               color: Color(0xff06807F),
//                               fontWeight: FontWeight.w700,
//                             )),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 2.h,
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: SizedBox(
//                       height: 6.h,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Get.to(Checkout());
//                           // Get.to(LoginWithOtp());
//                         },
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Color(0xff088F8F),
//                             foregroundColor: Color(0xff099F9F).withOpacity(.9),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(1.h),
//                             )),
//                         child: Text(
//                           "Next",
//                           style: GoogleFonts.titilliumWeb(
//                             fontSize: 15.sp,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildCategoryfield() {
//     return List<Widget>.generate(
//       _categories.length,
//       (index) => Container(
//         height: 4.h,
//         child: RawChip(
//           showCheckmark: false,
//           backgroundColor: Color(0xffF0F0F0),
//           selectedColor: Color(0xffF0F0F0),
//           side: BorderSide(
//             color: _selectedCategoryIndex == index
//                 ? Colors.transparent
//                 : Colors.transparent,
//             width: 1.0,
//           ),
//           labelStyle: GoogleFonts.titilliumWeb(
//             fontSize: 10.sp,
//             color: _selectedCategoryIndex == index
//                 ? Color(0xff088F8F)
//                 : Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//           label: Text(_categories[index]),
//           selected: _selectedCategoryIndex == index,
//           onSelected: (selected) {
//             setState(() {
//               _selectedCategoryIndex = selected ? index : 0;
//             });
//           },
//         ),
//       ),
//     ).toList();
//   }
//
//   List<Widget> _buildCategoryDuration() {
//     return List<Widget>.generate(
//       _durationCategories.length,
//       (index) => Container(
//         height: 4.h,
//         child: RawChip(
//           showCheckmark: false,
//           backgroundColor: Color(0xffF0F0F0),
//           selectedColor: Color(0xffF0F0F0),
//           side: BorderSide(
//             color: _selectDuration == index
//                 ? Colors.transparent
//                 : Colors.transparent,
//             width: 1.0,
//           ),
//           labelStyle: GoogleFonts.titilliumWeb(
//             fontSize: 10.sp,
//             color: _selectDuration == index ? Color(0xff088F8F) : Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//           label: Text(_durationCategories[index]),
//           selected: _selectDuration == index,
//           onSelected: (selected) {
//             setState(() {
//               _selectDuration = selected ? index : 0;
//             });
//           },
//         ),
//       ),
//     ).toList();
//   }
//
//   List<Widget> _buildCategoryTime() {
//     return List<Widget>.generate(
//       _timeCategories.length,
//       (index) => Container(
//         height: 4.h,
//         child: RawChip(
//           showCheckmark: false,
//           backgroundColor: Color(0xffF0F0F0),
//           selectedColor: Color(0xffF0F0F0),
//           side: BorderSide(
//             color:
//                 _selectTime == index ? Colors.transparent : Colors.transparent,
//             width: 1.0,
//           ),
//           labelStyle: GoogleFonts.titilliumWeb(
//             fontSize: 10.sp,
//             color: _selectTime == index ? Color(0xff088F8F) : Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//           label: Text(_timeCategories[index]),
//           selected: _selectTime == index,
//           onSelected: (selected) {
//             setState(() {
//               _selectTime = selected ? index : 0;
//             });
//           },
//         ),
//       ),
//     ).toList();
//   }
// }
