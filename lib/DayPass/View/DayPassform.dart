import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'package:sizer/sizer.dart';

import '../../AppConstants/ColorConstants.dart';

import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderFont.dart';
import 'DayPassCheckout/TicketUi.dart';

class DayPassForm extends StatelessWidget {
  const DayPassForm({Key? key}) : super(key: key);

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
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
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
                            margin: EdgeInsets.only(top: .26.h),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                              color: Color(0xffFFB485),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 2.h),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeaderFont(
                                      text: 'Day Pass at Marriot!',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: .3.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 1.5.h,
                                    ),
                                    SizedBox(
                                      width: .3.h,
                                    ),
                                    BottomBlackFont(
                                      text: '13 Mar 2023',
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: .3.h),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 1.5.h,
                                          ),
                                          SizedBox(
                                            width: .3.h,
                                          ),
                                          BottomBlackFont(
                                            text: 'Sports city, Aziziya',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3)),
                                              color:
                                                  ColorConstants.buttonColor),
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
                                  height: 2.h,
                                ),
                                _facilitiesIcon(),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(.7.h),
                                    color: Color(0xffE8E8E8),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, top: .5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text("First Name",
                                              style: GoogleFonts.titilliumWeb(
                                                fontSize: 9.sp,
                                                color: Color(0xff808285),
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ),

                                        Flexible(

                                          child: Padding(
                                            padding:EdgeInsets.only(top: .5.h),
                                            child: Container(
                                              width: double.infinity,

                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(.7.h),
                                                color: Color(0xffE8E8E8),
                                              ),
                                              child: TextFormField(
                                                // readOnly: true,
                                                style: GoogleFonts.titilliumWeb(
                                                  // fontSize: 14.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                // controller: controller,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,

                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),

                                Container(
                                  width: double.infinity,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(.7.h),
                                    color: Color(0xffE8E8E8),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 2.h, top: .5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text("Mobile Number",
                                              style: GoogleFonts.titilliumWeb(
                                                fontSize: 9.sp,
                                                color: Color(0xff808285),
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ),

                                        Flexible(

                                          child: Padding(
                                            padding:EdgeInsets.only(top: .5.h),
                                            child: Container(
                                              width: double.infinity,

                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(.7.h),
                                                color: Color(0xffE8E8E8),
                                              ),
                                              child: TextFormField(
                                                keyboardType: TextInputType.phone,
                                                // readOnly: true,
                                                style: GoogleFonts.titilliumWeb(
                                                  // fontSize: 14.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                // controller: controller,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,

                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(.7.h),
                                    color: Color(0xffE8E8E8),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 2.h, top: .5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text("Email",
                                              style: GoogleFonts.titilliumWeb(
                                                fontSize: 9.sp,
                                                color: Color(0xff808285),
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ),

                                        Flexible(

                                          child: Padding(
                                            padding:EdgeInsets.only(top: .5.h),
                                            child: Container(
                                              width: double.infinity,

                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(.7.h),
                                                color: Color(0xffE8E8E8),
                                              ),
                                              child: TextFormField(
                                                keyboardType: TextInputType.emailAddress,
                                                // readOnly: true,
                                                style: GoogleFonts.titilliumWeb(
                                                  // fontSize: 14.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                // controller: controller,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,

                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),




                                SizedBox(
                                  height: 4.8.h,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(TicketUi());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ColorConstants.buttonColor,
                                        foregroundColor:
                                            ColorConstants.appBackColorWhite,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.h),
                                        )),
                                    child: SubHeaderWhite(
                                      text: 'Next',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
    return SizedBox(
      height: 3.3.h,
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          // itemExtent: 80.0,
          itemCount: 8,
          itemBuilder: (
              BuildContext context,
              int index,
              ) {
            return Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: InkWell(
                  onTap: () {
                    // Get.to(LadiesOnlySingleList());
                  },
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(
                              .4.h),
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          color:
                          ColorConstants.boxColor),
                      child: Padding(
                        padding: EdgeInsets.all(.6.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons
                                  .local_parking_outlined,
                              color: Colors.black,
                              size: 1.5.h,
                            ),
                            SizedBox(width: .3.h),
                            BottomBlackFont(
                              text: 'Free Parking',
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
                          borderRadius:
                          BorderRadius.circular(
                              .4.h),
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          color:
                          ColorConstants.boxColor),
                      child: Padding(
                        padding: EdgeInsets.all(.6.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_restaurant,
                              color: Colors.black,
                              size: 1.5.h,
                            ),
                            SizedBox(width: .3.h),
                            BottomBlackFont(
                              text: 'Restaurant',
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
                          borderRadius:
                          BorderRadius.circular(
                              .4.h),
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          color:
                          ColorConstants.boxColor),
                      child: Padding(
                        padding: EdgeInsets.all(.6.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shower,
                              color: Colors.black,
                              size: 1.5.h,
                            ),
                            SizedBox(width: .3.h),
                            BottomBlackFont(
                              text: 'Bathroom',
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                  ]),
                ));
          }),
    );
  }
}
