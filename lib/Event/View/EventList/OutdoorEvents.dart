import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:riyad_test/LadiesOnly/View/LadiesOnlySingleList.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ColorConstants.dart';
import '../../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../CustomWidget/CustomFont/SmallFont.dart';
import '../EventSingleView.dart';

class OutdoorEvents extends StatelessWidget {
  const OutdoorEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: 14.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Assets/banner.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: ColorConstants.lightGrey,
                )),
            SizedBox(
              height: 1.5.h,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                // itemExtent: 80.0,
                itemCount: 4,
                itemBuilder: (
                    BuildContext context,
                    int index,
                    ) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      // height: 22.h,
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
                            InkWell(
                              onTap: () {
                                // Get.to(LadiesOnlySingleList());
                                Get.to(EventSingleView());
                              },
                              child: Container(
                                height: 14.h,
                                margin: EdgeInsets.all(.6.h),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://th.bing.com/th/id/R.034619344ab0f2de59404063f2b5302b?rik=xOLOHt%2bUB7zUeQ&pid=ImgRaw&r=0"),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                                  color: ColorConstants.lightGrey,
                                ),

                              ),
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
                                    height: 1.h,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 3.5.h,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Get.to(TicketUi());
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                  Color.fromRGBO(8, 147, 147, 0.15) ,
                                                  foregroundColor:
                                                  ColorConstants
                                                      .appBackColorWhite,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        1.h),
                                                  )),
                                              child: NormalFontWhite(
                                                text: '19/32 slots left',
                                              ),
                                            ),
                                          )),
                                      SizedBox(width: 1.5.h,),

                                      Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                            height:3.5.h,
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
                                                        1.h),
                                                  )),
                                              child: NormalFontWhite(
                                                text: 'Join',
                                              ),
                                            ),
                                          ))

                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                }),
            SizedBox(height: 5.h,),
          ]),
        ));
  }
}
