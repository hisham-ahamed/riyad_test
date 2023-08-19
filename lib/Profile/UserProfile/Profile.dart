import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../Event/View/EventList/EventList.dart';
import '../../HomePage/View/HomePage.dart';
import '../../Tournament/View/TournamentList/TournamentList.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: true,
            centerTitle: true,
            expandedHeight: 27.h,
            leading: IconButton(
              onPressed: () {
                Navigator. of(context). pop();
              },
              color: Colors.white,
              iconSize: 2.h,
              icon: Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
            title: Text(
              "My Profile",
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
                      Color(0xff099F9F).withOpacity(.9),
                      Color(0xff047472).withOpacity(1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 13.h, bottom: 1.h),
                    child: Container(
                      height: 11.h,
                      width: 11.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1558730234-d8b2281b0d00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjB3aGl0ZSUyMHBvcnRyYWl0fGVufDB8fDB8fHww&w=1000&q=80"),
                          fit: BoxFit.cover,
                        ),
                      ),

                      // child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO6F321fRwX7vcZnrxDSOV521eMK7OWmgOzg&usqp=CAU", fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "Antony Martial",
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Member since Jan 2023",
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 8.5.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 4.h,
                    top: 2.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      SizedBox(height: 2.h,),
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
                                child: Text("Last Name",
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
                      SizedBox(height: 2.h,),
                      Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.7.h),
                          color: Color(0xffE8E8E8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h, top: .5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 9.sp,
                                    color: Color(0xff808285),
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text("Antonymartial@gmailcom",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 12.5.sp,
                                    color: Color(0xff808285),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.7.h),
                          color: Color(0xffE8E8E8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h, top: .5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mobile Number",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 9.sp,
                                    color: Color(0xff808285),
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text("+974 321654",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 12.5.sp,
                                    color: Color(0xff808285),
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding:EdgeInsets.only(left: .4.h,bottom: 2.h),
                        child: Text("Communications and transaction history from diet \nmarket will be sent to the verified email address",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 10.2.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 5.7.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff047472).withOpacity(0.9),
                              foregroundColor:
                              Color(0xff099F9F).withOpacity(.9),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(1.h),
                              )),
                          child: Text(
                            "Save Changes",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      Text(
                        "Delete Account",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 12.sp,
                          color: Color(0xff808285),
                          fontWeight: FontWeight.w500,
                        ),
                      )

                    ],
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
                      // Get.to(const Profile());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/myaccount_sel.png")),
                        Text(
                          "Account",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color:  Color(0xff137171),
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
