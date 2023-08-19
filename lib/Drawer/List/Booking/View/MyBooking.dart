import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../../../AppConstants/ColorConstants.dart';
import '../../../../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../../../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../../../../CustomWidget/CustomFont/Header.dart';
import '../../../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../../../Event/View/EventList/EventList.dart';
import '../../../../HomePage/View/HomePage.dart';
import '../../../../Profile/UserProfile/Profile.dart';
import '../../../../Tournament/View/TournamentList/TournamentList.dart';
import 'MyBookingDetails.dart';



class MyBooking extends StatelessWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
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
            "My Booking",
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
                borderRadius: const BorderRadius.all(
                   Radius.circular(18))),
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
                    padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 2.h),
                    child: const Header(text:'Upcoming'),
                  ),
                  _upComing(),

                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 2.h),
                    child: const Header(text:'Past Booking'),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> const MyBookingDetails());
                    },
                      child: _pastBooking()),
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
                const Color(0xff099F9F).withOpacity(.9),
                const Color(0xff047472).withOpacity(1),
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
                  child: InkWell(
                    onTap: () {
                      Get.to(HomePage());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Home.png")),
                        Text(
                          "Home",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(const Profile());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Account.png")),
                        Text(
                          "Account",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
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
                  child: InkWell(
                    onTap: () {
                      Get.to(const TournamentList());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Tournament.png")),
                        Text(
                          "Tournament",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(const EventList());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Event.png")),
                        Text(
                          "Event",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !iskeyboardOpen,
        child: Padding(
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
              child: Padding(
                padding: EdgeInsets.all(.8.h),
                child: Image.asset("Assets/BottomBarIcons/Sport.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
  /// _upcoming Widget
  Widget _upComing(){
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        // itemExtent: 80.0,
        itemCount: 2,
        itemBuilder: (
            BuildContext context,
            int index,
            ) {

          return  Padding(
            padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 1.h,bottom: 1.h),
            child: Container(
              // height: 20.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: const Offset(
                        2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: .1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 20.h,

                          margin: EdgeInsets.only(
                              top: .5.h, left: .5.h, bottom: .5.h),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                                fit: BoxFit.cover,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(13)),
                            color: Color(0xffFFB485),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            right: 1.h,
                            top: 1.h,
                            bottom: 1.5.h,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const NormalFontAppbackColor(
                                        text: 'Soccer Tournament 2023',
                                      ),
                                      SizedBox(
                                        height: .5.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 1.5.h,
                                            color:
                                            ColorConstants.appBarColor2,
                                          ),
                                          SizedBox(
                                            width: .3.h,
                                          ),
                                          const BottomBlackFont(
                                            text: 'Sports city, Aziziya',
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
                                          color: const Color(0xff047472),
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: .5.h,
                                            right: .5.h,
                                            top: .5.h,
                                            bottom: .5.h),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                height: 2.h,
                                                child: const Image(
                                                    image: AssetImage(
                                                        "Assets/foot.png"))),
                                            SizedBox(
                                              width: .5.h,
                                            ),
                                            const SmallBoldFont(
                                                text: 'Football')
                                          ],
                                        ),
                                      )),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const BottomGreyFont( text: 'No.of Teams',),
                                        const BoldBlackFont(text:'8 Teams'),
                                        SizedBox(height: 1.h,),

                                        const BottomGreyFont( text: 'Pitch',),
                                        const BoldBlackFont(text:'7x7 Football pitch'),
                                        SizedBox(height: .6.h,),
                                        Padding(
                                          padding:EdgeInsets.only(right: 2.h),
                                          child: SizedBox(
                                            height:2.5.h,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {

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
                                              child: const NormalFontWhite(
                                                text: 'Contact Us',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        const BottomGreyFont( text: 'Date',),
                                        const BoldBlackFont(text:'4 january 2023'),
                                        SizedBox(height: 1.h,),

                                        const BottomGreyFont( text: 'Time',),
                                        const BoldBlackFont(text:'8:30 pm to 9:30 pm'),
                                        SizedBox(height: .6.h,),

                                        SizedBox(
                                          height: 2.5.h,
                                          child: Padding(
                                            padding:EdgeInsets.only(right: 1.h),
                                            child: Container(
                                              // color: Color(0xfff5f5f5),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(.5.h),),
                                                color:  const Color(0xfff5f5f5),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  style: BorderStyle.solid,
                                                  width: .3,
                                                ),

                                              ),
                                              // color: Color(0xfff5f5f5),
                                              child: Padding(
                                                padding:EdgeInsets.only(left: 1.h,right: .3.h),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.cancel_outlined,size: 1.2.h,),
                                                    SizedBox(width: .3.h,),
                                                    const BottomBlackFont(text:'Cancel Booking'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),

            ),
          );
        });








  }


  /// _past Booking

  Widget _pastBooking(){
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        // itemExtent: 80.0,
        itemCount: 3,
        itemBuilder: (
            BuildContext context,
            int index,
            ) {

          return  Padding(
            padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 1.h,bottom: 1.h),
            child: Container(
              // height: 18.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: const Offset(
                        2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: .1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 16.9.h,
                          margin: EdgeInsets.only(
                              top: .5.h, left: .5.h, bottom: .5.h),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.rwhallflooring.co.uk/wp-content/uploads/2017/07/Moreton-Hall-Sports-Hall-26_cp-1600x2133.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                            BorderRadius.all(Radius.circular(13)),
                            color: Color(0xffFFB485),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            right: 1.h,
                            top: 1.h,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const NormalFontAppbackColor(
                                        text: 'Soccer Tournament 2023',
                                      ),
                                      SizedBox(
                                        height: .5.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 1.5.h,
                                            color:
                                            ColorConstants.appBarColor2,
                                          ),
                                          SizedBox(
                                            width: .3.h,
                                          ),
                                          const BottomBlackFont(
                                            text: 'Sports city, Aziziya',
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
                                          color: const Color(0xff047472),
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: .5.h,
                                            right: .5.h,
                                            top: .5.h,
                                            bottom: .5.h),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                height: 2.h,
                                                child: const Image(
                                                    image: AssetImage(
                                                        "Assets/foot.png"))),
                                            SizedBox(
                                              width: .5.h,
                                            ),
                                            const SmallBoldFont(
                                                text: 'Football')
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const BottomGreyFont( text: 'No.of Teams',),
                                          const BoldBlackFont(text:'8 Teams'),
                                          SizedBox(height: 1.h,),

                                          const BottomGreyFont( text: 'Pitch',),
                                          const BoldBlackFont(text:'7x7 Football pitch'),

                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          const BottomGreyFont( text: 'Date',),
                                          const BoldBlackFont(text:'4 january 2023'),
                                          SizedBox(height: 1.h,),

                                          const BottomGreyFont( text: 'Time',),
                                          const BoldBlackFont(text:'8:30 pm to 9:30 pm'),

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),

            ),
          );
        });

  }

}



