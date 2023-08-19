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
import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import '../DayPassCheckoutReciept.dart';
import 'TicketPainter.dart';

class TicketUi extends StatelessWidget {
  const TicketUi({Key? key}) : super(key: key);

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
                              child: Column(
                                children: [
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
                                        // SizedBox(
                                        //   height: 2.h,
                                        // ),
                                        couponCode(),
                                        SizedBox(
                                          height: 1.5.h,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: SubHeaderBlack(
                                            text: 'Select Payment',
                                          ),
                                        ),
                                        SizedBox(
                                          height: .5.h,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalFont(text: 'Day Pass Amount'),
                                            NormalBoldFont(text: 'QAR 350')
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
                                            Text("QAR 350",
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
                                              Get.to(DayPassCheckoutReceipt());
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xff088F8F),
                                                foregroundColor:
                                                    Color(0xff099F9F)
                                                        .withOpacity(.9),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h),
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
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                  contentPadding:
                      new EdgeInsets.symmetric(vertical: 0.0, horizontal: 1.h),
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

  Widget selectPayymentView() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 5.h,
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
              height: 5.h,
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
}
