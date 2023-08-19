import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/url-list.dart';
// import 'package:riyad_test/LadiesOnly/View/LadiesOnlySingleList.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ColorConstants.dart';
import '../../../LadiesOnly/View/LadiesOnlySinglePage.dart';

class ForMenRecovery extends StatelessWidget {
  const ForMenRecovery({Key? key}) : super(key: key);

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
                                Get.to(LadiesOnlySingleList(
                                  venueList: kVenueTemp,
                                ));
                              },
                              child: Container(
                                  height: 14.h,
                                  margin: EdgeInsets.all(.6.h),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://th.bing.com/th/id/R.7e990cb5e63f47739ec3c98be378347f?rik=kGMBWqFG1KHLGw&pid=ImgRaw&r=0"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13)),
                                    color: ColorConstants.lightGrey,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 2.h, top: 1.h),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(13)),
                                              color: Color(0xff047472)
                                                  .withOpacity(1),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 1.h, right: 1.h),
                                              child: Text(
                                                "Featured",
                                                style: TextStyle(
                                                    fontSize: 7.sp,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: 2.h, top: 1.h),
                                          child: Container(
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 2.5.h,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("4.1",
                                          style: GoogleFonts.titilliumWeb(
                                              fontSize: 9.sp,
                                              color:
                                                  Colors.grey.withOpacity(.5),
                                              fontWeight: FontWeight.w500,
                                              height: .15.h)),
                                      Icon(
                                        Icons.star,
                                        size: 1.3.h,
                                        color: Colors.yellow[700],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "48 Fitness, Lusail",
                                          style: GoogleFonts.titilliumWeb(
                                              fontSize: 12.sp,
                                              color: Color(0xff06807F),
                                              fontWeight: FontWeight.w700,
                                              height: .15.h),
                                        ),
                                        Text("*Price starting",
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 8.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 1.3.h,
                                            color: Color(0xff06807F),
                                          ),
                                          Text("Doha, Qatar",
                                              style: GoogleFonts.titilliumWeb(
                                                fontSize: 8.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              )),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: Row(
                                          children: [
                                            Text("from  ",
                                                style: GoogleFonts.titilliumWeb(
                                                  fontSize: 8.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Text(
                                              "250 QR",
                                              style: GoogleFonts.titilliumWeb(
                                                fontSize: 12.sp,
                                                color: Color(0xff06807F),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
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
            SizedBox(
              height: 4.h,
            )
          ]),
        ));
  }
}
