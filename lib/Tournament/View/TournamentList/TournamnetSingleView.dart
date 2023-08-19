import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'package:sizer/sizer.dart';
import '../../../AppConstants/ColorConstants.dart';
import '../../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../../CustomWidget/CustomFont/SubHeaderFont.dart';
import 'TournamentForm.dart';


class TournamnetSingleView extends StatelessWidget {
  const TournamnetSingleView({Key? key}) : super(key: key);

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
                            height: 14.h,
                            // margin: EdgeInsets.all(.6.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.JM-Q4CLwydTsz4Sz82aXMQAAAA?pid=ImgDet&rs=1"),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(13)),
                              color: ColorConstants.lightGrey,
                            ),

                            child: Center(
                                child: Image.asset('Assets/SoccerTournament.png',height:11.h )
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
                                          "Soccer Tournament 2023",
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
                                              left: .7.h,
                                              right: 1.h,
                                              top: .5.h,
                                              bottom: 1.h),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  height: 2.h,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "Assets/foot.png"))),
                                              SizedBox(width: .5.h,),
                                              Column(
                                                children: [
                                                  SmallBoldFont(text: '7x7'),
                                                  SmallBoldFont(text: 'Football'),
                                                ],
                                              )
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(height: .5.h,),

                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time_filled_rounded,
                                          size: 1.5.h,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: .3.h,
                                        ),
                                        SmallGreyFont(
                                          text: '9:30 pm',
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Team Registration Fee: ',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 8.sp,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '500 QR',
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
                                  height: 2.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(.4.h),
                                            // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            color: ColorConstants.boxColor),
                                        child: Padding(
                                          padding: EdgeInsets.all(.6.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.local_parking_outlined,
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
                                            BorderRadius.circular(.4.h),
                                            // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            color: ColorConstants.boxColor),
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
                                            BorderRadius.circular(.4.h),
                                            // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            color: ColorConstants.boxColor),
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
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(.4.h),
                                            // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            color: ColorConstants.boxColor),
                                        child: Padding(
                                          padding: EdgeInsets.all(.6.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock_outlined,
                                                color: Colors.black,
                                                size: 1.5.h,
                                              ),
                                              SizedBox(width: .3.h),
                                              BottomBlackFont(
                                                text: 'Lock Room',
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
                                            BorderRadius.circular(.4.h),
                                            // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            color: ColorConstants.boxColor),
                                        child: Padding(
                                          padding: EdgeInsets.all(.6.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock_outlined,
                                                color: Colors.black,
                                                size: 1.5.h,
                                              ),
                                              SizedBox(width: .3.h),
                                              BottomBlackFont(
                                                text: 'Lock Room',
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
                                      Get.to(TournamnetForm());
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
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1.h,),









                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
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
                color: ColorConstants.boxColor),
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
                color: ColorConstants.boxColor),
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
                color: ColorConstants.boxColor),
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
                color: ColorConstants.boxColor),
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
}
