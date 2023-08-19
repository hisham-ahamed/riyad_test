// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class BookingRe extends StatelessWidget {
//   const BookingRe({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//
//           children: [
//             Stack(
//                 fit: StackFit.loose, // Just Changed this line
//                 alignment: Alignment.center,
//                 // Just changed this line
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height:MediaQuery.of(context).size.height,
//                     color: Colors.white,
//                     child: Container(
//                       height: 10.h,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(
//                                   "Assets/ground.png"),
//                               fit: BoxFit.cover),
//                           borderRadius:
//                           BorderRadius.all(Radius.circular(10)),
//                           color: Colors.white),
//                       // child: CustomFont(text: 'Bookings'),
//                     ),
//                   ),
//
//                   Padding(
//                     padding:EdgeInsets.only(left: 2.h,right: 2.h),
//                     child: Container(
//                       width: 400,
//                       height: MediaQuery.of(context).size.height/3,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Container(
//                     width: 200,
//                     height: 200,
//                     color: Colors.cyan,
//                   ),
//                   // RaisedButton(
//                      Text(
//                       'click me',
//                       style: TextStyle(color: Colors.white),
//                     ),
//
//                     // onPressed: () {
//                     //   Get.dialog(MyDialog());
//                     // },
//                   ]),
//           ],
//         ),
//             ),
//       );
//       //   floatingActionButton: FloatingActionButton(onPressed: () {
//       // incFun();
//       // Get.snackbar(
//       //   'Hi',
//       //   'i am a simple $_increament',
//       //   snackPosition: SnackPosition.BOTTOM,
//       //   icon: Icon(Icons.add_comment),
//       // );
//   }
// }
