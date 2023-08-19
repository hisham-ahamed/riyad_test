import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import '../../CustomWidget/CustomFont/SubHeaderFont.dart';
import 'EventCheckout.dart';



class EventSingleView extends StatelessWidget {
  const EventSingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
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
            "Event Details",
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
                        Container(
                          height: 15.h,
                          margin: EdgeInsets.all(.6.h),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/R.034619344ab0f2de59404063f2b5302b?rik=xOLOHt%2bUB7zUeQ&pid=ImgRaw&r=0"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            color: Color(0xffFFB485),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SubHeaderFont(
                                    text: 'Description',
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  BottomBlackFont(
                                      text:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SubHeaderFont(
                                    text: 'Terms & Conditions',
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  BottomBlackFont(
                                      text:
                                      '1. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium'),
                                  BottomBlackFont(
                                      text:
                                      '2. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.'),
                                  BottomBlackFont(
                                      text:
                                      '3. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
                                  BottomBlackFont(
                                      text:
                                      '4.  Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.'),
                                  BottomBlackFont(
                                      text:
                                      '5. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.')
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),

                              SizedBox(
                                height: 4.8.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(EventCheckout());
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
                                    text: 'Continue',
                                  ),
                                ),
                              ),

                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                      'By click continue you are accepting our ',
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 9.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'terms of use',
                                      style: GoogleFonts.titilliumWeb(
                                          fontSize: 9.sp,
                                          color: Color(0xff099F9F),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff099F9F)),
                                    ),
                                    TextSpan(
                                      text: ' and ',
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 9.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Privacy policy',
                                      style: GoogleFonts.titilliumWeb(
                                          fontSize: 9.sp,
                                          color: Color(0xff099F9F),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff099F9F)),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                        )
,
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


// child count
  Widget childCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalBoldFont(text: 'Child'),
        NormalFont(text: ('(4-16 years)')),
        SizedBox(
          width: 2.h,
        ),
        SizedBox(
          child: Row(
            children: [
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.remove,
                    size: 1.5.h,
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                      )),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Center(
                    child: NormalBoldFont(
                      text: '1',
                    ),
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.add,
                    size: 1.5.h,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
