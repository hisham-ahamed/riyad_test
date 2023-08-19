import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../AppConstants/ColorConstants.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import '../../CustomWidget/CustomFont/WhiteFontHeader.dart';


class RecoveryReciept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          // height:MediaQuery.of(context).size.height,
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
                      height: 37.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff099F9F).withOpacity(.9),
                              Color(0xff047472).withOpacity(1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),

                          // image: DecorationImage(
                          //     image: NetworkImage("https://www.thoughtco.com/thmb/2iaRppZnx9-FN9ozY8-pPMtacd8=/2136x1403/filters:fill(auto,1)/dance-fitness-1067009516-5c81907946e0fb0001136604.jpg"),
                          //     fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Colors.white),
                      // child: CustomFont(text: 'Bookings'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.5.h),
                child: Column(
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
                                      text: 'Checking',
                                    )),
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Image.asset("Assets/check.png"),
                            HeaderWhite(
                              text: "Booking Successfull",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Material(
                        elevation: 8,
                        color: Colors.grey,
                        // shadowColor:
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 2.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text("FuelHouse Westbay",
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
                                                    text: 'Al Wahab St.Doha',
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
                                        height: 3.h,
                                      ),
                                      bookingDetails(),
                                      new Divider(
                                        color: Colors.grey.withOpacity(.6),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          NormalFont(text: '6x6 Fooball pitch'),
                                          NormalBoldFont(text: 'QAR 200')
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 1.h, right: 1.h),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 5.8.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              Color(0xff088F8F),
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(1.h),
                                              )),
                                          child: Text(
                                            "Share Reciept",
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 15.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.5.h,
                                      ),
                                      SizedBox(
                                        height: 5.8.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Get.to(BookingReciept());

                                            // Get.to(LoginWithOtp());
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: ColorConstants.ticketColor,
                                            foregroundColor:
                                            Color(0xff099F9F).withOpacity(.9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(1.h),
                                            ),
                                            elevation: 0,
                                            side: BorderSide(
                                                width: 0.5,
                                                color: Colors.grey
                                            ),
                                          ),

                                          child: Text(
                                            'Contact Venue',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showAlertDialog(context);
                                        },
                                        child:
                                        Text('Need to cancel your Booking?',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 10.sp,
                                              color: ColorConstants
                                                  .appThemeColorGreen,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // Spacer(),
                  ],
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   height: 70,
              //   left: 0,
              //   right: 0,
              //   child: Padding(
              //     padding: const EdgeInsets.all(11.0),
              //     // child: MyBottomNavBar(),
              //   ),
              // )
            ],
          ),
        ),
      ),

    );
  }

  Widget bookingDetails() {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Booking ID',
                    style: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        height: .25.h)),
                Text('3456875694',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Service',
                      style: GoogleFonts.titilliumWeb(
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          height: .25.h)),
                  Text('Body Massage',
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
          ],
        ),
        Row(
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
                Text('4 january 2023',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            Spacer(),
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
          ],
        )
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("No"),
      onPressed: () {},
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.zero,
      content: Text("Do you want to cancel your booking?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
