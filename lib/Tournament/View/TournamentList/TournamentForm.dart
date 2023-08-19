import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'package:sizer/sizer.dart';
import '../../../AppConstants/ColorConstants.dart';
import '../../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';



class TournamnetForm extends StatelessWidget {
  const TournamnetForm({Key? key}) : super(key: key);

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
            "Tournamnet",
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
                                            text: 'No.of slots: ',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 8.sp,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '8',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 8.sp,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
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
                                            text: 'Registration Fee: ',
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

                                SizedBox(
                                  height: 2.h,
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
                                          child: Text("Team Name",
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

}
