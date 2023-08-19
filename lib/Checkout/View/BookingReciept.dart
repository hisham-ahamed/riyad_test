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
import 'Widget/VenueButton.dart';

class BookingSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: 1000,
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
                          //     image: AssetImage("Assets/ground.png"),
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
                                              Text("Aspire Zone, Aziziya",
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
                                                borderRadius:
                                                    BorderRadius.circular(.9.h),
                                                color: ColorConstants.boxColor,
                                                border: Border.all(
                                                  color: Color(0xff047472),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.6.h,
                                                    right: 1.6.h,
                                                    top: 1.2.h,
                                                    bottom: 1.h),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                        height: 3.h,
                                                        child: Image(
                                                            image: AssetImage(
                                                                "Assets/foot.png"))),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: .3.h),
                                                      child: SmallFont(
                                                          text: 'Football'),
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
                                      venueButton("Contact Venue"),
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
                                        height: 7.h,
                                      )
                                    ],
                                  ),
                                )
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
              ),
              Positioned(
                bottom: 0,
                height: 70,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  // child: MyBottomNavBar(),
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 7.2.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff099F9F).withOpacity(.9),
                Color(0xff047472).withOpacity(1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            right: 4.h,
            top: 1.h,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset("Assets/image 36.png"),
                    Text(
                      "Home",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 7.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Image.asset("Assets/account 3.png"),
                      Text(
                        "Account",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    // child: Column(
                    //   children: [
                    //     Container(child: Image.asset("Assets/image 119.png"),color: Colors.white,),
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.6.h),
                      child: Center(
                        child: Text(
                          "Sports",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 7.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    //   ],
                    // ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: .4.h),
                    child: Column(
                      children: [
                        Image.asset("Assets/image 117.png"),
                        Text(
                          "Tournament",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 7.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Image.asset("Assets/image 118.png"),
                      Text(
                        "Notification",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: SizedBox(
          height: 6.h,
          width: 6.h,
          child: FloatingActionButton(
            mini: false,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            backgroundColor: Colors.white,
            onPressed: () {},
            tooltip: '',
            child: Image.asset("Assets/image 119.png"),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pitch',
                    style: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        height: .25.h)),
                Text('8x8 Football Pitch 1',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
              ],
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
