// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
//
// class RiyadiWalletController extends GetxController {
//   final walletAmount = '120 QR'.obs;
//
//   List<Widget> buildAmountChips() {
//     return [
//       '100 QR',
//       '200 QR',
//       '500 QR',
//       '1000 QR',
//       '2000 QR',
//       '5000 QR',
//     ].map(
//           (amount) {
//         return Container(
//           height: 4.h,
//           child: RawChip(
//             showCheckmark: false,
//             backgroundColor: Color(0xffF0F0F0),
//             selectedColor: Color(0xffF0F0F0),
//             side: BorderSide(
//               color: walletAmount.value == amount
//                   ? Color(0xff088F8F)
//                   : Colors.transparent,
//               width: 1.0,
//             ),
//             labelStyle: GoogleFonts.titilliumWeb(
//               fontSize: 12.sp,
//               color:
//               walletAmount.value == amount ? Color(0xff088F8F) : Colors.black,
//               fontWeight: FontWeight.w600,
//             ),
//             label: Text(amount),
//             selected: walletAmount.value == amount,
//             onSelected: (selected) {
//               walletAmount.value = selected ? amount : '';
//             },
//           ),
//         );
//       },
//     ).toList();
//   }
// }