// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../DayPass/View/DayPassList.dart';
// import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
// import '../../Notification/view/NotificationView.dart';
// import '../../Sports/View/SportList.dart';
// import '../../Event/View/EventList/EventList.dart';
// import '../../LadiesOnly/View/LadiesOnlyList/LadiesOnlyList.dart';
// import '../../Drawer/MyAccount.dart';
// import '../../Profile/UserProfile/Profile.dart';
// import '../../Recovery/View/RecoveryList/RecoveryList.dart';
// import '../../Tournament/View/TournamentList/TournamentList.dart';
// import '../HomePage/View/LadiesOnlyWidget.dart';
// import '../HomePage/View/OfferWidget.dart';
// import '../HomePage/View/RecoveryWidget.dart';
// import '../HomePage/View/SportsItemWidget.dart';
// import '../HomePage/View/TicketWidget.dart';
//
// class HomePageDemo extends StatelessWidget {
//    HomePageDemo({Key? key}) : super(key: key);
//
//   final List<Map<String, dynamic>> sportItems = [
//     {
//       'imagePath': 'Assets/foot.png',
//       'title': 'Football',
//       'backgroundColor': const Color(0xffC7D1FF),
//     },
//     {
//       'imagePath': 'Assets/Cricket.png',
//       'title': 'Cricket',
//       'backgroundColor': const Color(0xffF2FBAD),
//     },
//     {
//       'imagePath': 'Assets/Volleyball.png',
//       'title': 'Volleyball',
//       'backgroundColor': const Color(0xffFFF4D4),
//     },
//     {
//       'imagePath': 'Assets/Basketball.png',
//       'title': 'Basket ball',
//       'backgroundColor': const Color(0xffFFB485),
//     },
//     {
//       'imagePath': 'Assets/bad.png',
//       'title': 'Badminton',
//       'backgroundColor': const Color(0xffA7F1D2),
//     },
//     {
//       'imagePath': 'Assets/Golfball.png',
//       'title': 'Golf',
//       'backgroundColor': const Color(0xffA7F1D2),
//     },
//     {
//       'imagePath': 'Assets/Bowli.png',
//       'title': 'Bowling',
//       'backgroundColor': const Color(0xffB0E5FF),
//     },
//     {
//       'imagePath': 'Assets/Darts.png',
//       'title': 'Darts',
//       'backgroundColor': const Color(0xffC7D1FF),
//     },
//     {
//       'imagePath': 'Assets/Surfing.png',
//       'title': 'Surfing',
//       'backgroundColor': const Color(0xffF2FBAD),
//     },
//     {
//       'imagePath': 'Assets/tble.png',
//       'title': 'Table tennis',
//       'backgroundColor': const Color(0xffFFB485),
//     },
//   ];
//    final List<Map<String, dynamic>> gridData = [
//     {
//       'image': 'Assets/cricket-modified.jpeg',
//       'title': 'Rayyan\nCricket club',
//       'crossAxisCellCount': 1,
//       'mainAxisCellCount': 1.9,
//     },
//     {
//       'image': 'Assets/R-modified.jpeg',
//       'title': 'Al Sadd\nSportzone',
//       'crossAxisCellCount': 2,
//       'mainAxisCellCount': 0.95,
//     },
//     {
//       'image': 'Assets/bowling-modified.jpg',
//       'title': 'Bowling\nClub Katara',
//       'crossAxisCellCount': 2,
//       'mainAxisCellCount': 0.95,
//     },
//     {
//       'image': 'Assets/badminton-modified.jpeg',
//       'title': 'Ezdan\nBadminton Court',
//       'crossAxisCellCount': 1,
//       'mainAxisCellCount': 1.9,
//     },
//   ];
//
//   @override
//   // Widget build(BuildContext context) {
//   //   bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
//   //   return Scaffold(
//   //     backgroundColor: Colors.white,
//   //     body: SingleChildScrollView(
//   //       child: Column(
//   //         children: [
//   //           Container(
//   //             decoration: BoxDecoration(
//   //                 gradient: LinearGradient(
//   //                   colors: [
//   //                     const Color(0xff099F9F).withOpacity(.9),
//   //                     const Color(0xff047472).withOpacity(1),
//   //                   ],
//   //                   begin: Alignment.topCenter,
//   //                   end: Alignment.bottomCenter,
//   //                 ),
//   //                 borderRadius: const BorderRadius.only(
//   //                     topLeft: Radius.zero,
//   //                     topRight: Radius.zero,
//   //                     bottomLeft: Radius.circular(18),
//   //                     bottomRight: Radius.circular(18))),
//   //             child: Padding(
//   //               padding: EdgeInsets.only(top: 4.h),
//   //               child: Column(
//   //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                 children: [
//   //                   Row(
//   //                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                     crossAxisAlignment: CrossAxisAlignment.start,
//   //                     children: [
//   //                       Padding(
//   //                         padding: EdgeInsets.only(left: 3.h, top: 2.4.h),
//   //                         child: Align(
//   //                           alignment: Alignment.topRight,
//   //                           child: InkWell(
//   //                             onTap: () {
//   //                               Get.to(const MyAccount());
//   //                             },
//   //                             child: Container(
//   //                               height: 4.h,
//   //                               width: 4.h,
//   //                               decoration: BoxDecoration(
//   //                                 borderRadius: BorderRadius.circular(20),
//   //                                 image: const DecorationImage(
//   //                                   image: AssetImage("Assets/image 35.png"),
//   //                                   fit: BoxFit.cover,
//   //                                 ),
//   //                               ),
//   //                             ),
//   //                           ),
//   //                         ),
//   //                       ),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(left: 1.h),
//   //                         child: Column(
//   //                           crossAxisAlignment: CrossAxisAlignment.start,
//   //                           children: [
//   //                             Padding(
//   //                               padding: EdgeInsets.only(top: 2.5.h),
//   //                               child: Text(
//   //                                 "hello".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                     color: Colors.white, fontSize: 9.sp),
//   //                               ),
//   //                             ),
//   //                             Text(
//   //                               "Antony Martial",
//   //                               style: GoogleFonts.titilliumWeb(
//   //                                   color: Colors.white,
//   //                                   fontSize: 16.sp,
//   //                                   fontWeight: FontWeight.w600),
//   //                             ),
//   //                             SizedBox(
//   //                               height: .5.h,
//   //                             ),
//   //                             Container(
//   //                               height: 2.2.h,
//   //                               decoration: BoxDecoration(
//   //                                 borderRadius: BorderRadius.circular(.5.h),
//   //                                 color:
//   //                                     const Color.fromRGBO(255, 255, 255, 0.5),
//   //                               ),
//   //
//   //                               child: Row(
//   //                                 children: [
//   //                                   Image.asset("Assets/image 72.png"),
//   //                                   Padding(
//   //                                     padding: EdgeInsets.only(right: .4.h),
//   //                                     child: Text(
//   //                                       "120 RP",
//   //                                       style: TextStyle(
//   //                                           fontSize: 7.sp,
//   //                                           color: const Color(0xff035B59),
//   //                                           fontWeight: FontWeight.w800),
//   //                                     ),
//   //                                   )
//   //                                 ],
//   //                               ),
//   //                               //   fit: BoxFit.cover,
//   //                             )
//   //                           ],
//   //                         ),
//   //                       ),
//   //                       const Spacer(),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(right: 3.h, top: 3.4.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.end,
//   //                           children: [
//   //                             Align(
//   //                               alignment: Alignment.topRight,
//   //                               child: InkWell(
//   //                                 onTap: () {
//   //                                   Get.to(const NotificationView());
//   //                                 },
//   //                                 child: Icon(
//   //                                   Icons.notification_important,
//   //                                   color: Colors.white,
//   //                                   size: 4.h,
//   //                                 ),
//   //                               ),
//   //                             ),
//   //                           ],
//   //                         ),
//   //                       )
//   //                     ],
//   //                   ),
//   //                   SizedBox(
//   //                     height: 3.5.h,
//   //                   )
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //           SingleChildScrollView(
//   //             child: ListView(
//   //               physics: const NeverScrollableScrollPhysics(),
//   //               padding: EdgeInsets.zero,
//   //               shrinkWrap: true,
//   //               children: [
//   //                 Padding(
//   //                   padding: EdgeInsets.only(
//   //                     left: 4.h,
//   //                     right: 4.h,
//   //                     top: 2.h,
//   //                   ),
//   //                   child: Column(
//   //                     crossAxisAlignment: CrossAxisAlignment.start,
//   //                     children: [
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.h),
//   //                         child: Text("find_your_venue".tr,
//   //                             style: GoogleFonts.titilliumWeb(
//   //                               fontSize: 17.sp,
//   //                               color: const Color(0xff06807F),
//   //                               fontWeight: FontWeight.w700,
//   //                             )),
//   //                       ),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.5.h),
//   //                         child: TextField(
//   //                           style: TextStyle(fontSize: 10.sp),
//   //                           decoration: InputDecoration(
//   //
//   //                               // label: Text('Search'),
//   //                               hintText: 'Search',
//   //                               labelStyle: const TextStyle(
//   //                                 color: Colors.black26,
//   //                               ),
//   //                               hintStyle: TextStyle(fontSize: 10.sp),
//   //                               isDense: true,
//   //                               // Added this
//   //                               contentPadding: const EdgeInsets.all(8),
//   //                               focusedBorder: OutlineInputBorder(
//   //                                 borderRadius: BorderRadius.circular(8.0),
//   //                                 borderSide: BorderSide(
//   //                                     color: const Color(0xff099F9F)
//   //                                         .withOpacity(.9),
//   //                                     width: .1),
//   //                               ),
//   //                               enabledBorder: OutlineInputBorder(
//   //                                 borderRadius: BorderRadius.circular(8.0),
//   //                                 borderSide: const BorderSide(
//   //                                   color: Colors.grey,
//   //                                   width: 0.1,
//   //                                 ),
//   //                               ),
//   //                               errorBorder: OutlineInputBorder(
//   //                                 borderRadius: BorderRadius.circular(8.0),
//   //                                 borderSide: const BorderSide(
//   //                                   color: Colors.grey,
//   //                                   width: 0.1,
//   //                                 ),
//   //                               ),
//   //                               focusedErrorBorder: OutlineInputBorder(
//   //                                 borderRadius: BorderRadius.circular(8.0),
//   //                                 borderSide: const BorderSide(
//   //                                   color: Colors.grey,
//   //                                   width: 0.1,
//   //                                 ),
//   //                               ),
//   //
//   //                               // border: OutlineInputBorder(
//   //                               //     borderRadius: BorderRadius.circular(10),
//   //                               //     borderSide:
//   //                               //      BorderSide(width: .5, style: BorderStyle.none,color: ColorConstants.appThemeColorRed)),
//   //                               suffixIcon: IconButton(
//   //                                 icon: const Icon(Icons.search_rounded),
//   //                                 onPressed: () {},
//   //                               ),
//   //                               filled: true,
//   //                               fillColor: Colors.white),
//   //                         ),
//   //                       ),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.5.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("quick_booking".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 15.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             Text("more".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 9.sp,
//   //                                   color: const Color(0xff222222),
//   //                                   fontWeight: FontWeight.w600,
//   //                                 )),
//   //                           ],
//   //                         ),
//   //                       ),
//   //                       StaggeredGrid.count(
//   //                         crossAxisCount: 4,
//   //                         mainAxisSpacing: 5,
//   //                         crossAxisSpacing: 5,
//   //                         children: gridData.map((data) {
//   //                           return StaggeredGridTile.count(
//   //                             crossAxisCellCount:
//   //                                 data['crossAxisCellCount'] as int,
//   //                             mainAxisCellCount:
//   //                                 data['mainAxisCellCount'] as double,
//   //                             child: Container(
//   //                               decoration: BoxDecoration(
//   //                                 image: DecorationImage(
//   //                                   image: AssetImage(data['image'] as String),
//   //                                   fit: BoxFit.cover,
//   //                                 ),
//   //                                 borderRadius:
//   //                                     BorderRadius.all(Radius.circular(10)),
//   //                                 color: Colors.white,
//   //                               ),
//   //                               child: Container(
//   //                                 decoration: BoxDecoration(
//   //                                   gradient: LinearGradient(
//   //                                     colors: [
//   //                                       Colors.black.withOpacity(0.2),
//   //                                       const Color(0xff088F8F)
//   //                                           .withOpacity(0.7),
//   //                                     ],
//   //                                     begin: Alignment.center,
//   //                                     end: Alignment.bottomCenter,
//   //                                   ),
//   //                                   borderRadius: const BorderRadius.all(
//   //                                       Radius.circular(10)),
//   //                                 ),
//   //                                 child: Align(
//   //                                   alignment: Alignment.bottomLeft,
//   //                                   child: Padding(
//   //                                     padding: EdgeInsets.only(
//   //                                         left: 1.h, bottom: 1.h),
//   //                                     child: Text(
//   //                                       data['title'] as String,
//   //                                       style: TextStyle(
//   //                                           fontSize: 8.sp,
//   //                                           color: Colors.white),
//   //                                     ),
//   //                                   ),
//   //                                 ),
//   //                               ),
//   //                             ),
//   //                           );
//   //                         }).toList(),
//   //                       ),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.5.h, top: 2.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("choose_your_sport".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 15.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             Text("more".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 9.sp,
//   //                                   color: const Color(0xff222222),
//   //                                   fontWeight: FontWeight.w600,
//   //                                 )),
//   //                           ],
//   //                         ),
//   //                       ),
//   //                       SizedBox(
//   //                         height: 1.h,
//   //                       ),
//   //
//   //                       SizedBox(
//   //                         // height: 20.h,
//   //                         width: double.infinity,
//   //                         child: GridView.count(
//   //                           padding: EdgeInsets.zero,
//   //                           crossAxisCount: 5,
//   //                           shrinkWrap: true,
//   //                           physics: NeverScrollableScrollPhysics(),
//   //                           childAspectRatio: .17.w,
//   //                           mainAxisSpacing: 0.h,
//   //                           crossAxisSpacing: 1.5.w,
//   //                           children: List.generate(
//   //                             sportItems.length,
//   //                             (index) {
//   //                               return SportItemWidget(
//   //                                 imagePath: sportItems[index]['imagePath'],
//   //                                 title: sportItems[index]['title'],
//   //                                 backgroundColor: sportItems[index]
//   //                                     ['backgroundColor'],
//   //                               );
//   //                             },
//   //                           ),
//   //                         ),
//   //                       ),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.h, top: 1.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("ladies_only".tr,
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 13.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             InkWell(
//   //                               onTap: () {
//   //                                 Get.to(const LadiesOnlyList());
//   //                               },
//   //                               child: Text("more".tr,
//   //                                   style: GoogleFonts.titilliumWeb(
//   //                                     fontSize: 9.sp,
//   //                                     color: const Color(0xff222222),
//   //                                     fontWeight: FontWeight.w600,
//   //                                   )),
//   //                             ),
//   //                           ],
//   //                         ),
//   //                       ),
//   //
//   //                       LadiesOnlyWidget(),
//   //
//   //                       ///Recovery section
//   //                       ///
//   //
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("Recovery",
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 12.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             InkWell(
//   //                               onTap: () {
//   //                                 Get.to(const RecoveryList());
//   //                               },
//   //                               child: Text("More",
//   //                                   style: GoogleFonts.titilliumWeb(
//   //                                     fontSize: 9.sp,
//   //                                     color: const Color(0xff222222),
//   //                                     fontWeight: FontWeight.w600,
//   //                                   )),
//   //                             ),
//   //                           ],
//   //                         ),
//   //                       ),
//   //
//   //                       RecoveryWidget(),
//   //
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("Day Paasses",
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 12.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             InkWell(
//   //                               onTap: () {
//   //                                 Get.to(const DayPassList());
//   //                               },
//   //                               child: Text("More",
//   //                                   style: GoogleFonts.titilliumWeb(
//   //                                     fontSize: 9.sp,
//   //                                     color: const Color(0xff222222),
//   //                                     fontWeight: FontWeight.w600,
//   //                                   )),
//   //                             ),
//   //                           ],
//   //                         ),
//   //                       ),
//   //
//   //                       InkWell(
//   //                           onTap: () {
//   //                             Get.to(const DayPassList());
//   //                           },
//   //
//   //                           ///Day Pass section
//   //
//   //                           child: DayPasses()),
//   //                       Padding(
//   //                         padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
//   //                         child: Row(
//   //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                           children: [
//   //                             Text("Offers",
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 12.sp,
//   //                                   color: const Color(0xff06807F),
//   //                                   fontWeight: FontWeight.w700,
//   //                                 )),
//   //                             Text("More",
//   //                                 style: GoogleFonts.titilliumWeb(
//   //                                   fontSize: 9.sp,
//   //                                   color: const Color(0xff222222),
//   //                                   fontWeight: FontWeight.w600,
//   //                                 )),
//   //                           ],
//   //                         ),
//   //                       ),
//   //                       OffersWidget(),
//   //                       SizedBox(
//   //                         height: 2.h,
//   //                       )
//   //
//   //                       // Container(
//   //                       //   height:200,
//   //                       //   color: Colors.white,
//   //                       // )
//   //                     ],
//   //                   ),
//   //                 ),
//   //               ],
//   //             ),
//   //           )
//   //         ],
//   //       ),
//   //     ),
//   //     bottomNavigationBar: Container(
//   //       height: 7.2.h,
//   //       decoration: BoxDecoration(
//   //           gradient: LinearGradient(
//   //             colors: [
//   //               const Color(0xff099F9F).withOpacity(.9),
//   //               const Color(0xff047472).withOpacity(1),
//   //             ],
//   //             begin: Alignment.topCenter,
//   //             end: Alignment.bottomCenter,
//   //           ),
//   //           borderRadius: const BorderRadius.only(
//   //               topLeft: Radius.circular(20),
//   //               topRight: Radius.circular(20),
//   //               bottomLeft: Radius.zero,
//   //               bottomRight: Radius.zero)),
//   //       child: Padding(
//   //         padding: EdgeInsets.only(
//   //           left: 4.h,
//   //           right: 4.h,
//   //           top: 1.h,
//   //         ),
//   //         child: Row(
//   //           children: [
//   //             Expanded(
//   //                 flex: 1,
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     // Get.to(const ());
//   //                   },
//   //                   child: Column(
//   //                     children: [
//   //                       SizedBox(
//   //                           height: 2.5.h,
//   //                           child:
//   //                               Image.asset("Assets/BottomBarIcons/Home.png")),
//   //                       Text(
//   //                         "Home",
//   //                         style: GoogleFonts.titilliumWeb(
//   //                           fontSize: 8.sp,
//   //                           color: Colors.white,
//   //                           fontWeight: FontWeight.w600,
//   //                         ),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 )),
//   //             Expanded(
//   //                 flex: 1,
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     Get.to(const Profile());
//   //                   },
//   //                   child: Column(
//   //                     children: [
//   //                       SizedBox(
//   //                           height: 2.5.h,
//   //                           child: Image.asset(
//   //                               "Assets/BottomBarIcons/Account.png")),
//   //                       Text(
//   //                         "Accounts",
//   //                         style: GoogleFonts.titilliumWeb(
//   //                           fontSize: 8.sp,
//   //                           color: Colors.white,
//   //                           fontWeight: FontWeight.w600,
//   //                         ),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 )),
//   //             Expanded(
//   //                 flex: 1,
//   //                 child: Padding(
//   //                   padding: EdgeInsets.only(top: 1.6.h),
//   //                   child: Center(
//   //                     child: Text(
//   //                       "Sports",
//   //                       style: GoogleFonts.titilliumWeb(
//   //                         fontSize: 7.sp,
//   //                         color: Colors.white,
//   //                         fontWeight: FontWeight.w600,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                 )),
//   //             Expanded(
//   //                 flex: 1,
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     Get.to(const TournamentList());
//   //                   },
//   //                   child: Column(
//   //                     children: [
//   //                       SizedBox(
//   //                           height: 2.5.h,
//   //                           child: Image.asset(
//   //                               "Assets/BottomBarIcons/Tournament.png")),
//   //                       Text(
//   //                         "Tournament",
//   //                         style: GoogleFonts.titilliumWeb(
//   //                           fontSize: 8.sp,
//   //                           color: Colors.white,
//   //                           fontWeight: FontWeight.w600,
//   //                         ),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 )),
//   //             Expanded(
//   //                 flex: 1,
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     Get.to(const EventList());
//   //                   },
//   //                   child: Column(
//   //                     children: [
//   //                       SizedBox(
//   //                           height: 2.5.h,
//   //                           child:
//   //                               Image.asset("Assets/BottomBarIcons/Event.png")),
//   //                       Text(
//   //                         "Event",
//   //                         style: GoogleFonts.titilliumWeb(
//   //                           fontSize: 8.sp,
//   //                           color: Colors.white,
//   //                           fontWeight: FontWeight.w600,
//   //                         ),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 )),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//   //     floatingActionButton: Visibility(
//   //       visible: !iskeyboardOpen,
//   //       child: Padding(
//   //         padding: EdgeInsets.only(top: 2.h),
//   //         child: SizedBox(
//   //           height: 6.h,
//   //           width: 6.h,
//   //           child: FloatingActionButton(
//   //             mini: false,
//   //             shape: const RoundedRectangleBorder(
//   //                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
//   //             backgroundColor: Colors.white,
//   //             onPressed: () {},
//   //             tooltip: '',
//   //             child: Padding(
//   //               padding: EdgeInsets.all(.8.h),
//   //               child: Image.asset("Assets/BottomBarIcons/Sport.png"),
//   //             ),
//   //           ),
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
// }
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// // import 'package:get/get.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:sizer/sizer.dart';
// //
// // import '../../../DayPass/View/DayPassList.dart';
// // import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
// // import '../../Notification/view/NotificationView.dart';
// // import '../../Sports/View/SportList.dart';
// // import '../../Event/View/EventList/EventList.dart';
// // import '../../LadiesOnly/View/LadiesOnlyList/LadiesOnlyList.dart';
// // import '../../Drawer/MyAccount.dart';
// // import '../../Profile/UserProfile/Profile.dart';
// // import '../../Recovery/View/RecoveryList/RecoveryList.dart';
// // import '../../Tournament/View/TournamentList/TournamentList.dart';
// // import 'LadiesOnlyWidget.dart';
// // import 'OfferWidget.dart';
// //
// // import 'RecoveryWidget.dart';
// // import 'TicketWidget.dart';
// //
// // class HomePage extends StatelessWidget {
// //   const HomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Container(
// //               decoration: BoxDecoration(
// //                   gradient: LinearGradient(
// //                     colors: [
// //                       const Color(0xff099F9F).withOpacity(.9),
// //                       const Color(0xff047472).withOpacity(1),
// //                     ],
// //                     begin: Alignment.topCenter,
// //                     end: Alignment.bottomCenter,
// //                   ),
// //                   borderRadius: const BorderRadius.only(
// //                       topLeft: Radius.zero,
// //                       topRight: Radius.zero,
// //                       bottomLeft: Radius.circular(18),
// //                       bottomRight: Radius.circular(18))),
// //               child: Padding(
// //                 padding: EdgeInsets.only(top: 4.h),
// //                 child: Column(
// //                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Row(
// //                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.only(left: 3.h, top: 2.4.h),
// //                           child: Align(
// //                             alignment: Alignment.topRight,
// //                             child: InkWell(
// //                               onTap: () {
// //                                 Get.to(const MyAccount());
// //                               },
// //                               child: Container(
// //                                 height: 4.h,
// //                                 width: 4.h,
// //                                 decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(20),
// //                                   image: const DecorationImage(
// //                                     image: AssetImage("Assets/image 35.png"),
// //                                     fit: BoxFit.cover,
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.only(left: 1.h),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Padding(
// //                                 padding: EdgeInsets.only(top: 2.5.h),
// //                                 child: Text(
// //                                   "hello".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                       color: Colors.white, fontSize: 9.sp),
// //                                 ),
// //                               ),
// //                               Text(
// //                                 "Antony Martial",
// //                                 style: GoogleFonts.titilliumWeb(
// //                                     color: Colors.white,
// //                                     fontSize: 16.sp,
// //                                     fontWeight: FontWeight.w600),
// //                               ),
// //                               SizedBox(
// //                                 height: .5.h,
// //                               ),
// //                               Container(
// //                                 height: 2.2.h,
// //                                 decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(.5.h),
// //                                   color:
// //                                       const Color.fromRGBO(255, 255, 255, 0.5),
// //                                 ),
// //
// //                                 child: Row(
// //                                   children: [
// //                                     Image.asset("Assets/image 72.png"),
// //                                     Padding(
// //                                       padding: EdgeInsets.only(right: .4.h),
// //                                       child: Text(
// //                                         "120 RP",
// //                                         style: TextStyle(
// //                                             fontSize: 7.sp,
// //                                             color: const Color(0xff035B59),
// //                                             fontWeight: FontWeight.w800),
// //                                       ),
// //                                     )
// //                                   ],
// //                                 ),
// //                                 //   fit: BoxFit.cover,
// //                               )
// //                             ],
// //                           ),
// //                         ),
// //                         const Spacer(),
// //                         Padding(
// //                           padding: EdgeInsets.only(right: 3.h, top: 3.4.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.end,
// //                             children: [
// //                               Align(
// //                                 alignment: Alignment.topRight,
// //                                 child: InkWell(
// //                                   onTap: () {
// //                                     Get.to(const NotificationView());
// //                                   },
// //                                   child: Icon(
// //                                     Icons.notification_important,
// //                                     color: Colors.white,
// //                                     size: 4.h,
// //                                   ),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                     SizedBox(
// //                       height: 3.5.h,
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             SingleChildScrollView(
// //               child: ListView(
// //                 physics: const NeverScrollableScrollPhysics(),
// //                 padding: EdgeInsets.zero,
// //                 shrinkWrap: true,
// //                 children: [
// //                   Padding(
// //                     padding: EdgeInsets.only(
// //                       left: 4.h,
// //                       right: 4.h,
// //                       top: 2.h,
// //                     ),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.h),
// //                           child: Text("find_your_venue".tr,
// //                               style: GoogleFonts.titilliumWeb(
// //                                 fontSize: 17.sp,
// //                                 color: const Color(0xff06807F),
// //                                 fontWeight: FontWeight.w700,
// //                               )),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.5.h),
// //                           child: TextField(
// //                             style: TextStyle(fontSize: 10.sp),
// //                             decoration: InputDecoration(
// //
// //                                 // label: Text('Search'),
// //                                 hintText: 'Search',
// //                                 labelStyle: const TextStyle(
// //                                   color: Colors.black26,
// //                                 ),
// //                                 hintStyle: TextStyle(fontSize: 10.sp),
// //                                 isDense: true,
// //                                 // Added this
// //                                 contentPadding: const EdgeInsets.all(8),
// //                                 focusedBorder: OutlineInputBorder(
// //                                   borderRadius: BorderRadius.circular(8.0),
// //                                   borderSide: BorderSide(
// //                                       color: const Color(0xff099F9F)
// //                                           .withOpacity(.9),
// //                                       width: .1),
// //                                 ),
// //                                 enabledBorder: OutlineInputBorder(
// //                                   borderRadius: BorderRadius.circular(8.0),
// //                                   borderSide: const BorderSide(
// //                                     color: Colors.grey,
// //                                     width: 0.1,
// //                                   ),
// //                                 ),
// //                                 errorBorder: OutlineInputBorder(
// //                                   borderRadius: BorderRadius.circular(8.0),
// //                                   borderSide: const BorderSide(
// //                                     color: Colors.grey,
// //                                     width: 0.1,
// //                                   ),
// //                                 ),
// //                                 focusedErrorBorder: OutlineInputBorder(
// //                                   borderRadius: BorderRadius.circular(8.0),
// //                                   borderSide: const BorderSide(
// //                                     color: Colors.grey,
// //                                     width: 0.1,
// //                                   ),
// //                                 ),
// //
// //                                 // border: OutlineInputBorder(
// //                                 //     borderRadius: BorderRadius.circular(10),
// //                                 //     borderSide:
// //                                 //      BorderSide(width: .5, style: BorderStyle.none,color: ColorConstants.appThemeColorRed)),
// //                                 suffixIcon: IconButton(
// //                                   icon: const Icon(Icons.search_rounded),
// //                                   onPressed: () {},
// //                                 ),
// //                                 filled: true,
// //                                 fillColor: Colors.white),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.5.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("quick_booking".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 15.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               Text("more".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 9.sp,
// //                                     color: const Color(0xff222222),
// //                                     fontWeight: FontWeight.w600,
// //                                   )),
// //                             ],
// //                           ),
// //                         ),
// //                         StaggeredGrid.count(
// //                           crossAxisCount: 4,
// //                           mainAxisSpacing: 5,
// //                           crossAxisSpacing: 5,
// //                           children: [
// //                             StaggeredGridTile.count(
// //                                 crossAxisCellCount: 1,
// //                                 mainAxisCellCount: 1.9,
// //                                 child: Container(
// //                                   decoration: const BoxDecoration(
// //                                       image: DecorationImage(
// //                                           image: AssetImage(
// //                                               "Assets/cricket-modified.jpeg"),
// //                                           fit: BoxFit.cover),
// //                                       borderRadius:
// //                                           BorderRadius.all(Radius.circular(10)),
// //                                       color: Colors.white),
// //                                   child: Container(
// //                                     decoration: BoxDecoration(
// //                                         gradient: LinearGradient(
// //                                           colors: [
// //                                             // Color(0xff070707), Color(0xff088F8F)
// //                                             Colors.black.withOpacity(0.2),
// //                                             const Color(0xff088F8F)
// //                                                 .withOpacity(0.7)
// //                                           ],
// //                                           // stops: [0.0,1],
// //                                           begin: Alignment.center,
// //                                           end: Alignment.bottomCenter,
// //                                         ),
// //                                         borderRadius: const BorderRadius.all(
// //                                             Radius.circular(10))),
// //                                     child: Align(
// //                                       alignment: Alignment.bottomLeft,
// //                                       child: Padding(
// //                                         padding: EdgeInsets.only(
// //                                             left: 1.h, bottom: 1.h),
// //                                         child: Text(
// //                                           "Rayyan \nCricket club",
// //                                           style: TextStyle(
// //                                               fontSize: 8.sp,
// //                                               color: Colors.white),
// //                                         ),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 )),
// //                             StaggeredGridTile.count(
// //                                 crossAxisCellCount: 2,
// //                                 mainAxisCellCount: .95,
// //                                 child: Container(
// //                                   decoration: const BoxDecoration(
// //                                       image: DecorationImage(
// //                                           image: AssetImage(
// //                                               "Assets/R-modified.jpeg"),
// //                                           fit: BoxFit.cover),
// //                                       borderRadius:
// //                                           BorderRadius.all(Radius.circular(10)),
// //                                       color: Colors.white),
// //                                   child: Container(
// //                                       decoration: BoxDecoration(
// //                                           gradient: LinearGradient(
// //                                             colors: [
// //                                               // Color(0xff070707), Color(0xff088F8F)
// //                                               Colors.black.withOpacity(0.2),
// //                                               const Color(0xff088F8F)
// //                                                   .withOpacity(0.7)
// //                                             ],
// //                                             // stops: [0.0,1],
// //                                             begin: Alignment.center,
// //                                             end: Alignment.bottomCenter,
// //                                           ),
// //                                           borderRadius: const BorderRadius.all(
// //                                               Radius.circular(10))),
// //                                       child: Align(
// //                                         alignment: Alignment.bottomLeft,
// //                                         child: Padding(
// //                                           padding: EdgeInsets.only(
// //                                               left: 1.h, bottom: 1.h),
// //                                           child: Text(
// //                                             "Al sadd \nSportzone ",
// //                                             style: TextStyle(
// //                                                 fontSize: 8.sp,
// //                                                 color: Colors.white),
// //                                           ),
// //                                         ),
// //                                       )),
// //                                 )),
// //                             StaggeredGridTile.count(
// //                                 crossAxisCellCount: 2,
// //                                 mainAxisCellCount: .95,
// //                                 child: Container(
// //                                   decoration: const BoxDecoration(
// //                                       image: DecorationImage(
// //                                           image: AssetImage(
// //                                               "Assets/bowling-modified.jpg"),
// //                                           fit: BoxFit.cover),
// //                                       borderRadius:
// //                                           BorderRadius.all(Radius.circular(10)),
// //                                       color: Colors.white),
// //                                   child: Container(
// //                                       decoration: BoxDecoration(
// //                                           gradient: LinearGradient(
// //                                             colors: [
// //                                               // Color(0xff070707), Color(0xff088F8F)
// //                                               Colors.black.withOpacity(0.2),
// //                                               const Color(0xff088F8F)
// //                                                   .withOpacity(0.7)
// //                                             ],
// //                                             // stops: [0.0,1],
// //                                             begin: Alignment.center,
// //                                             end: Alignment.bottomCenter,
// //                                           ),
// //                                           borderRadius: const BorderRadius.all(
// //                                               Radius.circular(10))),
// //                                       child: Align(
// //                                         alignment: Alignment.bottomLeft,
// //                                         child: Padding(
// //                                           padding: EdgeInsets.only(
// //                                               left: 1.h, bottom: 1.h),
// //                                           child: Text(
// //                                             "Bowling \nClub Katara",
// //                                             style: TextStyle(
// //                                                 fontSize: 8.sp,
// //                                                 color: Colors.white),
// //                                           ),
// //                                         ),
// //                                       )),
// //                                 )),
// //                             StaggeredGridTile.count(
// //                                 crossAxisCellCount: 1,
// //                                 mainAxisCellCount: 1.9,
// //                                 child: Container(
// //                                   decoration: const BoxDecoration(
// //                                       image: DecorationImage(
// //                                           image: AssetImage(
// //                                               "Assets/badminton-modified.jpeg"),
// //                                           fit: BoxFit.cover),
// //                                       borderRadius:
// //                                           BorderRadius.all(Radius.circular(10)),
// //                                       color: Colors.white),
// //                                   child: Container(
// //                                       decoration: BoxDecoration(
// //                                           gradient: LinearGradient(
// //                                             colors: [
// //                                               // Color(0xff070707), Color(0xff088F8F)
// //                                               Colors.black.withOpacity(0.2),
// //                                               const Color(0xff088F8F)
// //                                                   .withOpacity(0.7)
// //                                             ],
// //                                             // stops: [0.0,1],
// //                                             begin: Alignment.center,
// //                                             end: Alignment.bottomCenter,
// //                                           ),
// //                                           borderRadius: const BorderRadius.all(
// //                                               Radius.circular(10))),
// //                                       child: Align(
// //                                         alignment: Alignment.bottomLeft,
// //                                         child: Padding(
// //                                           padding: EdgeInsets.only(
// //                                               left: 1.h, bottom: 1.h),
// //                                           child: Text(
// //                                             "Ezdan \nBadminton Court",
// //                                             style: TextStyle(
// //                                                 fontSize: 7.sp,
// //                                                 color: Colors.white),
// //                                           ),
// //                                         ),
// //                                       )),
// //                                 )),
// //                           ],
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.5.h, top: 2.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("choose_your_sport".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 15.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               Text("more".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 9.sp,
// //                                     color: const Color(0xff222222),
// //                                     fontWeight: FontWeight.w600,
// //                                   )),
// //                             ],
// //                           ),
// //                         ),
// //                         SizedBox(
// //                           height: 1.h,
// //                         ),
// //
// //                         Row(
// //                           children: [
// //                             Expanded(
// //                               flex: 1,
// //                               child: InkWell(
// //                                 onTap: () {
// //                                   Get.to(const SportList());
// //                                 },
// //                                 child: Column(
// //                                   children: [
// //                                     Container(
// //                                         height: 6.5.h,
// //                                         // width: 5.h,
// //                                         decoration: BoxDecoration(
// //                                           borderRadius:
// //                                               BorderRadius.circular(.9.h),
// //                                           color: const Color(0xffC7D1FF),
// //                                         ),
// //                                         child: Container(
// //                                           margin: EdgeInsets.all(1.h),
// //                                           decoration: const BoxDecoration(
// //                                             image: DecorationImage(
// //                                                 image: AssetImage(
// //                                                     "Assets/foot.png"),
// //                                                 fit: BoxFit.cover),
// //                                             borderRadius: BorderRadius.all(
// //                                                 Radius.circular(10)),
// //                                           ),
// //                                         )),
// //                                     SizedBox(
// //                                       height: .7.h,
// //                                     ),
// //                                     const Center(
// //                                         child: IconFont(
// //                                       text: 'Football',
// //                                     )),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: InkWell(
// //                                 onTap: () {
// //                                   Get.to(const SportList());
// //                                 },
// //                                 child: Column(
// //                                   children: [
// //                                     Container(
// //                                         height: 6.5.h,
// //                                         // width: 5.h,
// //                                         decoration: BoxDecoration(
// //                                           borderRadius:
// //                                               BorderRadius.circular(.9.h),
// //                                           color: const Color(0xffF2FBAD),
// //                                         ),
// //                                         child: Container(
// //                                           margin: EdgeInsets.all(1.h),
// //                                           decoration: const BoxDecoration(
// //                                             image: DecorationImage(
// //                                                 image: AssetImage(
// //                                                     "Assets/Cricket.png"),
// //                                                 fit: BoxFit.cover),
// //                                             borderRadius: BorderRadius.all(
// //                                                 Radius.circular(10)),
// //                                           ),
// //                                         )),
// //                                     SizedBox(
// //                                       height: .7.h,
// //                                     ),
// //                                     const Center(
// //                                         child: IconFont(
// //                                       text: 'Cricket',
// //                                     )),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffFFF4D4),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(.8.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image: AssetImage(
// //                                                   "Assets/Volleyball.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                         ),
// //                                       )),
// //                                   Padding(padding: EdgeInsets.only(top: .7.h)),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Volleyball',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffFFB485),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(1.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image: AssetImage(
// //                                                   "Assets/Basketball.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                         ),
// //                                       )),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Basket ball',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffA7F1D2),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(1.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image:
// //                                                   AssetImage("Assets/bad.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                           color: Color(0xffA7F1D2),
// //                                         ),
// //                                       )),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Badminton',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //
// //                         SizedBox(
// //                           height: 1.h,
// //                         ),
// //
// //                         Row(
// //                           children: [
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffA7F1D2),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(1.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image: AssetImage(
// //                                                   "Assets/Golfball.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                         ),
// //                                       )),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Golf',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                     height: 6.5.h,
// //                                     // width: 5.h,
// //                                     decoration: BoxDecoration(
// //                                       borderRadius: BorderRadius.circular(.9.h),
// //                                       color: const Color(0xffB0E5FF),
// //                                     ),
// //                                     child: Container(
// //                                       margin: EdgeInsets.all(1.h),
// //                                       decoration: const BoxDecoration(
// //                                         image: DecorationImage(
// //                                             image:
// //                                                 AssetImage("Assets/Bowli.png"),
// //                                             fit: BoxFit.cover),
// //                                         borderRadius: BorderRadius.all(
// //                                             Radius.circular(10)),
// //                                         // color: Color(0xffF2FBAD),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Bowling',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffC7D1FF),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(.8.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image: AssetImage(
// //                                                   "Assets/Darts.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                         ),
// //                                       )),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Darts',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                       height: 6.5.h,
// //                                       // width: 5.h,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius:
// //                                             BorderRadius.circular(.9.h),
// //                                         color: const Color(0xffF2FBAD),
// //                                       ),
// //                                       child: Container(
// //                                         margin: EdgeInsets.all(1.h),
// //                                         decoration: const BoxDecoration(
// //                                           image: DecorationImage(
// //                                               image: AssetImage(
// //                                                   "Assets/Surfing.png"),
// //                                               fit: BoxFit.cover),
// //                                           borderRadius: BorderRadius.all(
// //                                               Radius.circular(10)),
// //                                         ),
// //                                       )),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'surfing',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 1.3.h,
// //                             ),
// //                             Expanded(
// //                               flex: 1,
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                     height: 6.5.h,
// //                                     // width: 5.h,
// //                                     decoration: BoxDecoration(
// //                                       borderRadius: BorderRadius.circular(.9.h),
// //                                       color: const Color(0xffFFB485),
// //                                     ),
// //                                     child: Container(
// //                                       margin: EdgeInsets.all(1.h),
// //                                       decoration: const BoxDecoration(
// //                                         image: DecorationImage(
// //                                             image:
// //                                                 AssetImage("Assets/tble.png"),
// //                                             fit: BoxFit.cover),
// //                                         borderRadius: BorderRadius.all(
// //                                             Radius.circular(10)),
// //                                         color: Color(0xffFFB485),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   SizedBox(
// //                                     height: .7.h,
// //                                   ),
// //                                   const Center(
// //                                       child: IconFont(
// //                                     text: 'Table tennis',
// //                                   )),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("ladies_only".tr,
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 13.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               InkWell(
// //                                 onTap: () {
// //                                   Get.to(const LadiesOnlyList());
// //                                 },
// //                                 child: Text("more".tr,
// //                                     style: GoogleFonts.titilliumWeb(
// //                                       fontSize: 9.sp,
// //                                       color: const Color(0xff222222),
// //                                       fontWeight: FontWeight.w600,
// //                                     )),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //
// //                         LadiesOnlyWidget(),
// //
// //                         ///Recovery section
// //                         ///
// //
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("Recovery",
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 12.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               InkWell(
// //                                 onTap: () {
// //                                   Get.to(const RecoveryList());
// //                                 },
// //                                 child: Text("More",
// //                                     style: GoogleFonts.titilliumWeb(
// //                                       fontSize: 9.sp,
// //                                       color: const Color(0xff222222),
// //                                       fontWeight: FontWeight.w600,
// //                                     )),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //
// //                         RecoveryWidget(),
// //
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("Day Paasses",
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 12.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               InkWell(
// //                                 onTap: () {
// //                                   Get.to(const DayPassList());
// //                                 },
// //                                 child: Text("More",
// //                                     style: GoogleFonts.titilliumWeb(
// //                                       fontSize: 9.sp,
// //                                       color: const Color(0xff222222),
// //                                       fontWeight: FontWeight.w600,
// //                                     )),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //
// //                         InkWell(
// //                             onTap: () {
// //                               Get.to(const DayPassList());
// //                             },
// //
// //                             ///Day Pass section
// //
// //                             child: DayPasses()),
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Text("Offers",
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 12.sp,
// //                                     color: const Color(0xff06807F),
// //                                     fontWeight: FontWeight.w700,
// //                                   )),
// //                               Text("More",
// //                                   style: GoogleFonts.titilliumWeb(
// //                                     fontSize: 9.sp,
// //                                     color: const Color(0xff222222),
// //                                     fontWeight: FontWeight.w600,
// //                                   )),
// //                             ],
// //                           ),
// //                         ),
// //                         OffersWidget(),
// //                         SizedBox(
// //                           height: 2.h,
// //                         )
// //
// //                         // Container(
// //                         //   height:200,
// //                         //   color: Colors.white,
// //                         // )
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: Container(
// //         height: 7.2.h,
// //         decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [
// //                 const Color(0xff099F9F).withOpacity(.9),
// //                 const Color(0xff047472).withOpacity(1),
// //               ],
// //               begin: Alignment.topCenter,
// //               end: Alignment.bottomCenter,
// //             ),
// //             borderRadius: const BorderRadius.only(
// //                 topLeft: Radius.circular(20),
// //                 topRight: Radius.circular(20),
// //                 bottomLeft: Radius.zero,
// //                 bottomRight: Radius.zero)),
// //         child: Padding(
// //           padding: EdgeInsets.only(
// //             left: 4.h,
// //             right: 4.h,
// //             top: 1.h,
// //           ),
// //           child: Row(
// //             children: [
// //               Expanded(
// //                   flex: 1,
// //                   child: InkWell(
// //                     onTap: () {
// //                       // Get.to(const ());
// //                     },
// //                     child: Column(
// //                       children: [
// //                         SizedBox(
// //                             height: 2.5.h,
// //                             child:
// //                                 Image.asset("Assets/BottomBarIcons/Home.png")),
// //                         Text(
// //                           "Home",
// //                           style: GoogleFonts.titilliumWeb(
// //                             fontSize: 8.sp,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   )),
// //               Expanded(
// //                   flex: 1,
// //                   child: InkWell(
// //                     onTap: () {
// //                       Get.to(const Profile());
// //                     },
// //                     child: Column(
// //                       children: [
// //                         SizedBox(
// //                             height: 2.5.h,
// //                             child: Image.asset(
// //                                 "Assets/BottomBarIcons/Account.png")),
// //                         Text(
// //                           "Accounts",
// //                           style: GoogleFonts.titilliumWeb(
// //                             fontSize: 8.sp,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   )),
// //               Expanded(
// //                   flex: 1,
// //                   child: Padding(
// //                     padding: EdgeInsets.only(top: 1.6.h),
// //                     child: Center(
// //                       child: Text(
// //                         "Sports",
// //                         style: GoogleFonts.titilliumWeb(
// //                           fontSize: 7.sp,
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.w600,
// //                         ),
// //                       ),
// //                     ),
// //                   )),
// //               Expanded(
// //                   flex: 1,
// //                   child: InkWell(
// //                     onTap: () {
// //                       Get.to(const TournamentList());
// //                     },
// //                     child: Column(
// //                       children: [
// //                         SizedBox(
// //                             height: 2.5.h,
// //                             child: Image.asset(
// //                                 "Assets/BottomBarIcons/Tournament.png")),
// //                         Text(
// //                           "Tournament",
// //                           style: GoogleFonts.titilliumWeb(
// //                             fontSize: 8.sp,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   )),
// //               Expanded(
// //                   flex: 1,
// //                   child: InkWell(
// //                     onTap: () {
// //                       Get.to(const EventList());
// //                     },
// //                     child: Column(
// //                       children: [
// //                         SizedBox(
// //                             height: 2.5.h,
// //                             child:
// //                                 Image.asset("Assets/BottomBarIcons/Event.png")),
// //                         Text(
// //                           "Event",
// //                           style: GoogleFonts.titilliumWeb(
// //                             fontSize: 8.sp,
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   )),
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// //       floatingActionButton: Visibility(
// //         visible: !iskeyboardOpen,
// //         child: Padding(
// //           padding: EdgeInsets.only(top: 2.h),
// //           child: SizedBox(
// //             height: 6.h,
// //             width: 6.h,
// //             child: FloatingActionButton(
// //               mini: false,
// //               shape: const RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
// //               backgroundColor: Colors.white,
// //               onPressed: () {},
// //               tooltip: '',
// //               child: Padding(
// //                 padding: EdgeInsets.all(.8.h),
// //                 child: Image.asset("Assets/BottomBarIcons/Sport.png"),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
