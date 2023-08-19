import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:riyad_test/CustomWidget/CustomFont/BottomGreyFont.dart';
import 'package:riyad_test/CustomWidget/CustomFont/CustomFont.dart';
import 'package:sizer/sizer.dart';

import '../../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'DayPassCheckout/TicketPainter.dart';

class DayPassCheckoutReceipt extends StatelessWidget {
  const DayPassCheckoutReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          centerTitle: true,
          expandedHeight: 8.h,
          leading: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              color: ColorConstants.appBackColorWhite,
              iconSize: 2.h,
              icon: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
          ),
          title: Text(
            "Day Pass",
            style: GoogleFonts.titilliumWeb(
              fontSize: 15.sp,
              color: ColorConstants.appBackColorWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.appBarColor1,
                    ColorConstants.appBarColor2
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListView(
                physics: const ScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 3.h),
                    child: Column(
                      children: [
                        SizedBox(
                            // height: 75.h,
                            // margin: const EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width,
                            child: CustomPaint(
                              painter: TicketPainter(
                                  borderColor: Colors.white,
                                  bgColor: ColorConstants.ticketColor),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: .8.h, right: .8.h, top: 1.h),
                                child: Column(children: [
                                  Container(
                                    height: 15.h,
                                    // margin: EdgeInsets.only(top: .26.h),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                                          fit: BoxFit.cover),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Color(0xffFFB485),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.h, right: 1.h, top: 1.h),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomFont(
                                              text: 'Day Pass at Marriot!',
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: .3.h,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              size: 1.5.h,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              width: .3.h,
                                            ),
                                            BottomGreyFont(
                                              text: '13 Mar 2023',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: .3.h),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    size: 1.5.h,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    width: .3.h,
                                                  ),
                                                  BottomGreyFont(
                                                    text:
                                                        'Sports city, Aziziya',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  3)),
                                                      color: ColorConstants
                                                          .buttonColor),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: .7.h,
                                                        right: .7.h,
                                                        top: .3.h,
                                                        bottom: .4.h),
                                                    child: Row(
                                                      children: [
                                                        NormalFontWhite(
                                                          text: 'Price: ',
                                                        ),
                                                        NormalFontWhiteBold(
                                                          text: 'QR 350',
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        _facilitiesIcon(),
                                        SizedBox(
                                          height: 6.h,
                                        ),

                                        bookingDetails(),
                                        SizedBox(
                                          height: 1.h,
                                        ),

                                        new Divider(
                                          color: Colors.grey.withOpacity(.6),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 4.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  NormalFont(
                                                      text: 'Day Pass Amount'),
                                                  SizedBox(
                                                    height: 1.h,
                                                  ),
                                                  NormalFont(text: 'Discount'),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  NormalBoldFont(
                                                      text: 'QAR 350'),
                                                  SizedBox(
                                                    height: 1.h,
                                                  ),
                                                  NormalBoldFont(text: 'QAR 0'),
                                                ],
                                              ),
                                            ],
                                          ),
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
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 2.h),
                                              child: Text("QAR 350",
                                                  style:
                                                      GoogleFonts.titilliumWeb(
                                                    fontSize: 15.sp,
                                                    color: Color(0xff035B59),
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        // termsAndConditions(),
                                        //    terms conditions shows here

                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 5.8.h,
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color(0xff088F8F),
                                                    foregroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.h),
                                                    )),
                                                child: Text(
                                                  "Share Reciept",
                                                  style:
                                                      GoogleFonts.titilliumWeb(
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
                                                  backgroundColor:
                                                      ColorConstants
                                                          .ticketColor,
                                                  foregroundColor:
                                                      Color(0xff099F9F)
                                                          .withOpacity(.9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.h),
                                                  ),
                                                  elevation: 0,
                                                  side: BorderSide(
                                                      width: 0.5,
                                                      color: Colors.grey),
                                                ),
                                                child: Text(
                                                  'Contact Venue',
                                                  style:
                                                      GoogleFonts.titilliumWeb(
                                                    fontSize: 15.sp,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.3.h,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showAlertDialog(context);
                                              },
                                              child: Text(
                                                  'Need to cancel your Booking?',
                                                  style:
                                                      GoogleFonts.titilliumWeb(
                                                    fontSize: 10.sp,
                                                    color: ColorConstants
                                                        .appThemeColorGreen,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),
    );

    // return Scaffold(
    //   body: SafeArea(
    //     child: Center(
    //       child: Container(
    //         height: 600,
    //         margin: const EdgeInsets.all(16),
    //         width: MediaQuery.of(context).size.width,
    //         child: CustomPaint(
    //           painter: TicketPainter(
    //             borderColor: Colors.white,
    //             bgColor:ColorConstants.boxColor
    //           ),
    //           child: Container(),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget _facilitiesIcon() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(.4.h),
                // color: Color.fromRGBO(255, 255, 255, 0.5),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(.6.h),
              child: Row(
                children: [
                  SizedBox(
                      height: 1.4.h,
                      child: Image(
                        image: AssetImage('Assets/Icons/streamBath.png'),
                        fit: BoxFit.cover,
                      )),
                  SizedBox(width: .3.h),
                  BottomBlackFont(
                    text: 'Steam Bath',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(.4.h),
                // color: Color.fromRGBO(255, 255, 255, 0.5),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(.6.h),
              child: Row(
                children: [
                  // Icon(
                  //   Icons.pe,
                  //   color: Colors.black,
                  //   size: 1.5.h,
                  // ),
                  SizedBox(
                      height: 1.3.h,
                      child: Image(
                        image: AssetImage('Assets/fish-therapy.png'),
                        fit: BoxFit.cover,
                      )),
                  SizedBox(width: .3.h),
                  BottomBlackFont(
                    text: 'Fish pedicure',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(.4.h),
                // color: Color.fromRGBO(255, 255, 255, 0.5),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(.6.h),
              child: Row(
                children: [
                  // Icon(
                  //   Icons.pe,
                  //   color: Colors.black,
                  //   size: 1.5.h,
                  // ),
                  SizedBox(
                      height: 1.5.h,
                      child: Image(
                        image: AssetImage('Assets/Icons/facialTr.png'),
                        fit: BoxFit.cover,
                      )),
                  SizedBox(width: .3.h),
                  BottomBlackFont(
                    text: 'Facial Treatment',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(.4.h),
                // color: Color.fromRGBO(255, 255, 255, 0.5),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(.6.h),
              child: Row(
                children: [
                  SizedBox(
                      height: 1.3.h,
                      child: Image(
                        image: AssetImage('Assets/Icons/spa.png'),
                        fit: BoxFit.cover,
                      )),
                  SizedBox(width: .3.h),
                  BottomBlackFont(
                    text: 'Spa',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
        ],
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Booking Date',
                    style: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        height: .25.h)),
                Text('4 January 2023',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
          ],
        ),
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
