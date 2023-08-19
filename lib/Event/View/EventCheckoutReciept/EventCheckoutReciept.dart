import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:riyad_test/CustomWidget/CustomFont/BottomGreyFont.dart';
import 'package:sizer/sizer.dart';
import '../../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../../CustomWidget/CustomFont/SmallFont.dart';
import '../../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'TicketPainterEvent.dart';


class EventCheckoutReciept extends StatelessWidget {
  const EventCheckoutReciept({Key? key}) : super(key: key);

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
            "Checkout",
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
                              painter: TicketPainterEvent(
                                  borderColor: Colors.white,
                                  bgColor: ColorConstants.ticketColor),
                              child: Column(
                                children: [
                                  Container(
                                      height: 15.h,
                                      margin: EdgeInsets.only(top: .26.h),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://th.bing.com/th/id/R.034619344ab0f2de59404063f2b5302b?rik=xOLOHt%2bUB7zUeQ&pid=ImgRaw&r=0"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(13)),
                                        color: Color(0xffFFB485),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [

                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 2.h, top: 1.h),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(6)),
                                                  color: Colors.white,
                                                ),
                                                child: Padding(
                                                  padding:
                                                  EdgeInsets.only(left: .5.h, right: .5.h,top: .3.h,bottom: .3.h),
                                                  child: SmallBoldFont(text:
                                                  "18 slots left",

                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h, right: 2.h),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        SizedBox(
                                          height: 1.h,
                                        ),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "All shaqab Academic Event",
                                                  style: GoogleFonts.titilliumWeb(
                                                      fontSize: 12.sp,
                                                      color: Color(0xff06807F),
                                                      fontWeight: FontWeight.w700,
                                                      height: .15.h),
                                                ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.calendar_month,
                                                      size: 1.5.h,
                                                      color: Colors.grey,
                                                    ),
                                                    SizedBox(
                                                      width: .3.h,
                                                    ),
                                                    SmallGreyFont(
                                                      text: '14 Feb 2023',
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: .3.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .access_time_filled_rounded,
                                                      size: 1.4.h,
                                                      color: Colors.grey,
                                                    ),
                                                    SizedBox(
                                                      width: .5.h,
                                                    ),
                                                    SmallGreyFont(
                                                      text: '9:30 pm',
                                                    ),
                                                  ],
                                                ),
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
                                                      left: 1.h,
                                                      right: 1.h,
                                                      top: 1.2.h,
                                                      bottom: 1.h),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                          height: 3.h,
                                                          child: Image(
                                                              image: AssetImage(
                                                                  "Assets/SportsIcons/HorseRide.png"))),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            top: .3.h),
                                                        child:
                                                        SmallFont(text: 'Horse Ride'),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  size: 1.5.h,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(
                                                  width: .3.h,
                                                ),
                                                SmallGreyFont(
                                                  text: 'Racing Club, Al Rayyan',
                                                ),
                                              ],
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Tournament Prize: ',
                                                    style: GoogleFonts.titilliumWeb(
                                                      fontSize: 8.sp,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '100000 QR',
                                                    style: GoogleFonts.titilliumWeb(
                                                      fontSize: 8.sp,
                                                      color: Color(0xff099F9F),
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),


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
                                      padding:EdgeInsets.only(right: 4.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              NormalFont(
                                                  text: 'Adult x 1'),
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
                                          padding:EdgeInsets.only(right: 2.h),
                                          child: Text("QAR 350",
                                              style: GoogleFonts.titilliumWeb(
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
                                          height: 1.3.h,
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
                                          height: 1.3.h,
                                        ),





                                      ],
                                    ),
                                  ])

                                  )],
                              ),
                            ))],
                    ),
                  )
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 7.2.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.appBarColor1,
                ColorConstants.appBarColor2,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: const BorderRadius.only(
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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            backgroundColor: Colors.white,
            onPressed: () {},
            tooltip: '',
            child: Image.asset("Assets/image 119.png"),
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
