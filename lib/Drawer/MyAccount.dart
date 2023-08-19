import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Event/View/EventList/EventList.dart';
import '../HomePage/View/HomePage.dart';
import '../Profile/UserProfile/Profile.dart';
import '../RiyadiPoints/View/RiyadiPointsProductList.dart';
import '../Tournament/View/TournamentList/TournamentList.dart';
import 'List/Booking/View/MyBooking.dart';
import 'List/PrivacyPolicy.dart';
import 'List/TermsServices.dart';
import 'List/UI/My Favourites.dart';
import 'Wallet/View/RiyadiWallet.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18))),
              child: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Column(
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        color: Colors.white,
                        iconSize: 2.h,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Center(
                          child: Text(
                            "My Account",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 2.h),
                      child: ListTile(
                        leading: Container(
                          width: 6.h,
                          height: 6.h,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1558730234-d8b2281b0d00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjB3aGl0ZSUyMHBvcnRyYWl0fGVufDB8fDB8fHww&w=1000&q=80",
                              ),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.yellow[800],
                          ),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Antony Martial",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 13.sp,
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
                        trailing: IconButton(
                          onPressed: () {
                            Get.to(Profile());
                          },
                          color: Colors.white,
                          iconSize: 4.h,
                          icon: const Icon(
                            Icons.settings_suggest_outlined,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 0.h, bottom: 0.h, left: 2.2.h),
                      child: ListTile(
                        leading: Container(
                          width: 3.5.h,
                          height: 3.5.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "Assets/wallet (2) 1.png",
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(left: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "100 QR",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Riyadi wallet",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 8.5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Get.to(RiyadiWalletView());
                          },
                          color: Colors.white,
                          iconSize: 2.h,
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 0.h, bottom: 0.h, left: 1.3.h),
                      child: ListTile(
                        leading: Container(
                          width: 5.h,
                          height: 5.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "Assets/Icons/points.png",
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.transparent,
                          ),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "120 RP",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Riyadi points",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 8.5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Get.to(ProductSingleView());
                          },
                          color: Colors.white,
                          iconSize: 2.h,
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h, top: 1.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(const MyBooking());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.edit_note_sharp,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "My Booking",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(MyFavourites());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite_border,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "My Favourites",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.offAndToNamed('/languageSelection');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.language,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "Language",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 2.h,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.question_mark,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "Help",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 2.h,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(TermsOfServices());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.security_update_warning_rounded,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "Terms of services",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(PrivacyPolicy());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.privacy_tip_outlined,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "Privacy Policy",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.thumb_up_alt_outlined,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "Give a review",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 2.h,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 3.h),
                    child: Divider(
                      color: Colors.grey[200],
                      thickness: .1.h,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
                            child:
                                Image.asset("Assets/BottomBarIcons/Home.png")),
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
                            child:
                                Image.asset("Assets/BottomBarIcons/Event.png")),
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
