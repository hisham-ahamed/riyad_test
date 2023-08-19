import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ColorConstants.dart';
import '../../../Event/View/EventList/EventList.dart';
import '../../../HomePage/View/HomePage.dart';
import '../../../Profile/UserProfile/Profile.dart';
import '../../../Tournament/View/TournamentList/TournamentList.dart';



class MyFavourites extends StatelessWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          centerTitle: true,
          expandedHeight: 11.h,
          leading: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              color: Colors.white,
              iconSize: 2.h,
              icon: InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
          ),
          title: Text(
            "Favourites",
            style: GoogleFonts.titilliumWeb(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          flexibleSpace: Container(
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
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 3.h),
                  child: Container(
                    color: Colors.white,
                    child: Column(children: [
                      SizedBox(
                        height: 3.h,
                      ),

                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.5.h),

                        ),
                        child: Image.asset("Assets/banner.png"),
                      ),
                      SizedBox(height: 1.5.h,),
                      ListView.builder( physics: ScrollPhysics(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          // itemExtent: 80.0,
                          itemCount: 6,
                          itemBuilder: (
                              BuildContext context,
                              int index,

                              ) {
                            return Padding(
                              padding:EdgeInsets.only(bottom: 2.h),
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
                                        onTap: (){

                                        },
                                        child: Container(
                                            height: 14.h,
                                            margin: EdgeInsets.all(.6.h),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.all(Radius.circular(13)),
                                              color: ColorConstants.lightGrey,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [

                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(right: 2.h, top: 1.h),
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
                                                        color: Colors.grey.withOpacity(.5),
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
                                              padding:EdgeInsets.only(right: 4.h),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Day Pass at Hotel Marriot",
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
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                          fontWeight: FontWeight.w700,),
                                                      )

                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),


                                            SizedBox(height: 1.h,),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          }
                      )

                    ]),
                  ),
                ),
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
}
