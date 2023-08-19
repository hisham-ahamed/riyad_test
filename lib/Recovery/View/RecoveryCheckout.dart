import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';

import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicBlackFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';

import '../../CustomWidget/CustomFont/WhiteFontHeader.dart';
import 'RecoveryReciept.dart';


class RecoveryCheckout extends StatelessWidget {
  RecoveryCheckout({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height:MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                // height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 25.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff099F9F).withOpacity(.9),
                              Color(0xff047472).withOpacity(1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                          ),
                          color: Colors.white),
                      // child: CustomFont(text: 'Bookings'),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          ListTile(
                            leading: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 2.3.h,
                              ),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: Center(
                                  child: HeaderWhite(
                                    text: 'Booking',
                                  )),
                            ),
                          ),
                          // SizedBox(height: 6.h),
                          // Image.asset("Assets/check.png"),
                          // HeaderWhite(
                          //   text: "Booking Successfull",
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 8,
                      color: Colors.grey,
                      // shadowColor:
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.h, right: 4.h, top: 3.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text("Remède Spa",
                                          style:
                                          GoogleFonts.titilliumWeb(
                                            fontSize: 15.sp,
                                            color: Color(0xff088F8F),
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: ColorConstants
                                                .appThemeColorGreen,
                                            size: 1.5.h,
                                          ),
                                          SizedBox(width: .3.h),
                                          BottomBlackFont(
                                            text: 'Westbay',
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    // height: 7.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(.9.h),
                                        color: ColorConstants.boxColor,
                                        border: Border.all(
                                          color: Color(0xff047472),
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.6.h, right: 1.6.h, top: 1.2.h, bottom: 1.h),
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 3.h,
                                                child: Image(
                                                    image: AssetImage(
                                                        "Assets/LadiesOnlyIcons/massage.png"))),
                                            Padding(
                                              padding: EdgeInsets.only(top: .3.h),
                                              child: SmallFont(text: 'Massage'),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              new Divider(
                                color: Colors.grey.withOpacity(.6),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              dateView(),
                              SizedBox(
                                height: 1.h,
                              ),
                              new Divider(
                                color: Colors.grey.withOpacity(.6),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              couponCode(),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              SubHeaderBlack(
                                text: 'Select Payment',
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              selectPayymentView(),
                              SizedBox(
                                height: 1.h,
                              ),
                              new Divider(
                                color: Colors.grey.withOpacity(.6),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  NormalFont(text: '6x6 Fooball pitch'),
                                  NormalBoldFont(text: 'QAR 200')
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  NormalFont(text: 'Discount'),
                                  NormalBoldFont(text: 'QAR 0'),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              new Divider(
                                color: Colors.grey.withOpacity(.6),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SubHeaderBlack(
                                    text: 'Total Amount',
                                  ),
                                  Text("QAR 200",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 15.sp,
                                        color: Color(0xff035B59),
                                        fontWeight: FontWeight.w700,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              // termsAndConditions(),
                              //    terms conditions shows here

                              SizedBox(
                                height: 5.8.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(RecoveryReciept());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff088F8F),
                                      foregroundColor:
                                      Color(0xff099F9F).withOpacity(.9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1.h),
                                      )),
                                  child: Text(
                                    "Pay Now",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 15,
                  ),
                  Spacer(),
                ],
              ),
              // Positioned(
              //   bottom: 0,
              //   height: 70,
              //   left: 0,
              //   right: 0,
              //   child: Padding(
              //     padding: const EdgeInsets.all(21.0),
              //     // child: MyBottomNavBar(),
              //   ),
              // )
            ],
          ),
        ),
      ),

    );
  }

  // dateView

  Widget dateView() {
    return IntrinsicHeight(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Date',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('04 January 2023',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
          VerticalDivider(
            color: Colors.grey.withOpacity(.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Time',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('8:30 pm to 9:30 pm',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
          VerticalDivider(
            color: Colors.grey.withOpacity(.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Activity',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('Spa/Massage',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  ///CouponCodeView

  Widget couponCode() {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Center(
            child: Container(
              height: 5.h,
              child: TextFormField(
                // cursorHeight: 2.h,
                textInputAction: TextInputAction.next,

                onChanged: (value) {},
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Enter Coupon code";
                //   }
                // },
                decoration: InputDecoration(
                  hintText: 'Enter coupon your code',
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 10.sp,
                    height: .18.h,
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 10.sp,
                    // letterSpacing: 0.4,
                    // height: .18.h,
                  ),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0)),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: new EdgeInsets.symmetric(vertical: 0.0,horizontal: 1.h),
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: ColorConstants.boxColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 5.h,
            child: ElevatedButton(
              onPressed: () {
                // Get.to(BookingSuccess());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  )),
              child: Text(
                'Apply',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }

  /// paymentView
  Widget selectPayymentView() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.h, right: 1.h),
                child: Row(
                  children: [
                    SizedBox(
                      height: 3.h,
                      child: Image.asset(
                        'Assets/Icons/Card1.png',
                      ),
                    ),
                    SizedBox(
                      width: .7.h,
                    ),
                    NormalFont(
                      text: 'Credit/Debit Card',
                    )
                  ],
                ),
              ),
            )),
        SizedBox(
          width: 1.5.h,
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.7.h, right: 1.h),
                child: Row(
                  children: [
                    SizedBox(
                      height: 3.h,
                      child: Image.asset(
                        'Assets/Icons/Wallet1.png',
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalFont(
                          text: 'Use Wallet',
                        ),
                        SmallBoldFont(
                          text: 'Wallet QAR 250',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }

  Widget termsAndConditions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        smallItalicBlackFont(
          text: 'By clicking here, I state that I have read and understood',
        ),
        smallItalicFont(
          text: 'the Terms & conditions.',
        )
      ],
    );
  }







/// Activities
// Widget _buildActivities() {
//   return SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       children: [
//         Container(
//           // height: 7.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(.9.h),
//               color: ColorConstants.boxColor,
//               border: Border.all(
//                 color: Color(0xff047472),
//                 width: 1,
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: 1.6.h, right: 1.6.h, top: 1.2.h, bottom: 1.h),
//               child: Column(
//                 children: [
//                   Container(
//                       height: 3.h,
//                       child: Image(
//                           image: AssetImage(
//                               "Assets/LadiesOnlyIcons/Zumba.png"))),
//                   Padding(
//                     padding: EdgeInsets.only(top: .3.h),
//                     child: SmallFont(text: 'Zumba'),
//                   )
//                 ],
//               ),
//             )),
//         SizedBox(
//           width: 4.h,
//         ),
//         Container(
//           // height: 7.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(.9.h),
//               color: ColorConstants.boxColor,
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: 1.6.h, right: 1.6.h, top: 1.2.h, bottom: 1.h),
//               child: Column(
//                 children: [
//                   Container(
//                       height: 3.h,
//                       child: Image(
//                           image:
//                           AssetImage("Assets/LadiesOnlyIcons/Yoga.png"))),
//                   Padding(
//                     padding: EdgeInsets.only(top: .3.h),
//                     child: SmallGreyColor(text: 'Yoga'),
//                   )
//                 ],
//               ),
//             )),
//         SizedBox(
//           width: 4.h,
//         ),
//         Container(
//           // height: 7.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(.9.h),
//               color: ColorConstants.boxColor,
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: 1.6.h, right: 1.6.h, top: 1.2.h, bottom: 1.h),
//               child: Column(
//                 children: [
//                   Container(
//                       height: 3.h,
//                       child: Image(
//                           image: AssetImage(
//                               "Assets/LadiesOnlyIcons/Cardio.png"))),
//                   Padding(
//                     padding: EdgeInsets.only(top: .3.h),
//                     child: SmallGreyColor(text: 'Cardio'),
//                   )
//                 ],
//               ),
//             )),
//         SizedBox(
//           width: 4.h,
//         ),
//         Container(
//           // height: 7.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(.9.h),
//               color: ColorConstants.boxColor,
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: .6.h, right: .6.h, top: 1.2.h, bottom: 1.h),
//               child: Column(
//                 children: [
//                   Container(
//                       height: 3.h,
//                       child: Image(
//                           image: AssetImage(
//                               "Assets/LadiesOnlyIcons/Boxing.png"))),
//                   Padding(
//                     padding: EdgeInsets.only(top: .3.h),
//                     child: SmallGreyColor(text: 'Kickboixing'),
//                   )
//                 ],
//               ),
//             ))
//       ],
//     ),
//   );
// }
}
