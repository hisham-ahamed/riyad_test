import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/CustomWidget/CustomFont/CustomFont.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'package:sizer/sizer.dart';

import '../../../../AppConstants/ColorConstants.dart';
import '../../../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../../../CustomWidget/CustomFont/Header.dart';
import '../../../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../../CustomWidget/CustomFont/SmallFont.dart';


class MyBookingDetails extends StatelessWidget {
  const MyBookingDetails({Key? key}) : super(key: key);

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
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          ),
          title: Text(
            "Booking Details",
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
                    child: Container(
                      // height: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.h),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: .3,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 15.h,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.JM-Q4CLwydTsz4Sz82aXMQAAAA?pid=ImgDet&rs=1"),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(13)),
                              color: Color(0xffFFB485),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 2.h, right: 2.h, top: 2.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                style: GoogleFonts.titilliumWeb(
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
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              NormalFont(
                                                  text: '6x6 Fooball pitch'),
                                              NormalFont(text: 'Discount')
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              NormalBoldFont(text: 'QAR 200'),
                                              NormalBoldFont(text: 'QAR 0'),
                                            ],
                                          ),
                                        ),
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
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              SubHeaderBlack(
                                                text: 'Total Amount',
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text("QAR 200",
                                                  style:
                                                  GoogleFonts.titilliumWeb(
                                                    fontSize: 15.sp,
                                                    color: Color(0xff035B59),
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2.h,),
                                    Center(child: CustomFont(text: 'Rate Us',)),
                                    SizedBox(height: 1.h,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemCount: 5,
                                          itemSize: 14.sp,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: .4.h),
                                          itemBuilder: (context, _) =>
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                          onRatingUpdate: (index) {},
                                        ),

                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.fromLTRB(
                                          1.h, 2.h, 1.h, 1.h),
                                      child: TextFormField(
                                        // controller: ref.watch(bioProvider),
                                        textInputAction: TextInputAction
                                            .newline,
                                        keyboardType: TextInputType.multiline,
                                        maxLength: 100,
                                        maxLines: 3,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Review";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          // label: Text('Bio'),
                                            hintText: 'Type Something...',
                                            hintStyle: TextStyle(
                                              color: Colors.grey.withOpacity(
                                                  .5),
                                            ),
                                            contentPadding:
                                            EdgeInsets.symmetric(vertical: 2.h,
                                                horizontal: 1.8.h),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                              borderSide: BorderSide(
                                                  color: ColorConstants
                                                      .appBackColorWhite,
                                                  width: .2.h),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                              borderSide: BorderSide(
                                                color: ColorConstants
                                                    .appBackColorWhite,
                                                width: 0.9,
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: ColorConstants.boxColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.5.h,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Get.to(TicketUi());
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                            ColorConstants
                                                .buttonColor,
                                            foregroundColor:
                                            ColorConstants
                                                .appBackColorWhite,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  .5.h),
                                            )),
                                        child: const WhiteHeader(
                                          text: 'Submit',
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2.h,)
                                  ])),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,)
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),

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
}
