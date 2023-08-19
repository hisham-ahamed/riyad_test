import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../AppConstants/ColorConstants.dart';

import '../../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';
import '../../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../../Event/View/EventList/EventList.dart';
import '../../../HomePage/View/HomePage.dart';
import '../../../Profile/UserProfile/Profile.dart';

import 'TournamnetSingleView.dart';

class TournamentList extends StatefulWidget {
  const TournamentList({Key? key}) : super(key: key);

  @override
  State<TournamentList> createState() => _TournamentListState();
}

class _TournamentListState extends State<TournamentList> {
  List<String> items = ['Football', 'Cricket', 'Badminton', 'Tennis', 'Item 5'];
  int selectedIndex = 0;

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
                onTap: () {
                  Get.to(HomePage());
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
          ),
          title: Text(
            "Tournament",
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
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              height: 3.6.h,
                              child: TextField(
                                style: TextStyle(fontSize: 10.sp),
                                decoration: InputDecoration(

                                    // label: Text('Search'),
                                    hintText: 'Serach',
                                    labelStyle: const TextStyle(
                                      color: Colors.black26,
                                    ),
                                    hintStyle: TextStyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                    isDense: true,
                                    // Added this
                                    contentPadding: const EdgeInsets.all(6),
                                    // Added this

                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: .1),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 0.1,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 0.1,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 0.1,
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.search_rounded,
                                        size: 2.h,
                                      ),
                                      onPressed: () {
                                        print('search');
                                      },
                                    ),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.h,
                          ),
                          InkWell(
                            onTap: () => print("touch button"),
                            child: Container(
                                // height: 2.2.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(.5.h),
                                    // color: Color.fromRGBO(255, 255, 255, 0.5),
                                    color: Colors.grey.withOpacity(.16)),
                                child: Padding(
                                  padding: EdgeInsets.all(.7.h),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 2.h,
                                    color: ColorConstants.appThemeColorGreen,
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 1.h,
                          ),
                          InkWell(
                            onTap: () {
                              // Get.to(DraggableBottom());
                              Get.bottomSheet(
                                SingleChildScrollView(
                                  physics: ScrollPhysics(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      // DayPassFilter(),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white,
                                enableDrag: true,
                                isScrollControlled: true,
                              );
                            },
                            child: Image.asset(
                              'Assets/Menu.png',
                              height: 3.h,
                              width: 3.h,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 4.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: Container(
                                  // width: 100, // Set the desired width for each item
                                  decoration: BoxDecoration(
                                    color: index == selectedIndex
                                        ? Color(0xff088F8F)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.2.h, right: 1.2.h),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.sports_soccer_rounded,
                                          color: Colors.white,
                                          size: 2.h,
                                        ),
                                        SizedBox(
                                          width: .3.h,
                                        ),
                                        Text(
                                          items[index],
                                          style: TextStyle(
                                            color: index == selectedIndex
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        // child: ListView.builder(
                        //   physics: ScrollPhysics(
                        //   ),
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: 6,
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return InkWell(
                        //       onTap: () {
                        //         // Get.to(LadiesOnlySingleList());
                        //       },
                        //       child: Row(children: [
                        //         Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius:
                        //               BorderRadius.circular(
                        //                   .4.h),
                        //               // color: Color.fromRGBO(255, 255, 255, 0.5),
                        //               color:
                        //               ColorConstants.boxColor),
                        //           child: Padding(
                        //             padding: EdgeInsets.all(.6.h),
                        //             child: Row(
                        //               children: [
                        //                 Icon(
                        //                   Icons
                        //                       .local_parking_outlined,
                        //                   color: Colors.black,
                        //                   size: 1.5.h,
                        //                 ),
                        //                 SizedBox(width: .3.h),
                        //                 BottomBlackFont(
                        //                   text: 'Football',
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           width: 1.h,
                        //         ),
                        //
                        //         Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius:
                        //               BorderRadius.circular(
                        //                   .4.h),
                        //               // color: Color.fromRGBO(255, 255, 255, 0.5),
                        //               color:
                        //               ColorConstants.boxColor),
                        //           child: Padding(
                        //             padding: EdgeInsets.all(.6.h),
                        //             child: Row(
                        //               children: [
                        //                 Icon(
                        //                   Icons.local_restaurant,
                        //                   color: Colors.black,
                        //                   size: 1.5.h,
                        //                 ),
                        //                 SizedBox(width: .3.h),
                        //                 BottomBlackFont(
                        //                   text: 'cricket',
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           width: 1.h,
                        //         ),
                        //         Container(
                        //           decoration: BoxDecoration(
                        //               borderRadius:
                        //               BorderRadius.circular(
                        //                   .4.h),
                        //               // color: Color.fromRGBO(255, 255, 255, 0.5),
                        //               color:
                        //               ColorConstants.boxColor),
                        //           child: Padding(
                        //             padding: EdgeInsets.all(.6.h),
                        //             child: Row(
                        //               children: [
                        //                 Icon(
                        //                   Icons.shower,
                        //                   color: Colors.black,
                        //                   size: 1.5.h,
                        //                 ),
                        //                 SizedBox(width: .3.h),
                        //                 BottomBlackFont(
                        //                   text: 'Tennis',
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           width: 1.h,
                        //         ),
                        //
                        //       ]),
                        //     );
                        //
                        //
                        //   },
                        //
                        //
                        // ),
                      ),

                      SizedBox(
                        height: 1.h,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 14.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/banner.png"),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                              color: ColorConstants.lightGrey,
                            ),
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
                                        borderRadius:
                                            BorderRadius.circular(2.h),
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
                                              Get.to(TournamnetSingleView());
                                            },
                                            child: Container(
                                              height: 14.h,
                                              margin: EdgeInsets.all(.6.h),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://th.bing.com/th/id/OIP.JM-Q4CLwydTsz4Sz82aXMQAAAA?pid=ImgDet&rs=1"),
                                                    fit: BoxFit.cover),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13)),
                                                color: ColorConstants.lightGrey,
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                      'Assets/SoccerTournament.png',
                                                      height: 11.h)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.h, right: 2.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Soccer Tournament 2023",
                                                          style: GoogleFonts
                                                              .titilliumWeb(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: Color(
                                                                      0xff06807F),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  height:
                                                                      .15.h),
                                                        ),
                                                        SizedBox(
                                                          height: 1.h,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .calendar_month,
                                                              size: 1.5.h,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: .3.h,
                                                            ),
                                                            SmallGreyFont(
                                                              text:
                                                                  '14 Feb 2023',
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
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      .9.h),
                                                          color: ColorConstants
                                                              .boxColor,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xff047472),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
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
                                                              SizedBox(
                                                                width: .5.h,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  SmallBoldFont(
                                                                      text:
                                                                          '7x7'),
                                                                  SmallBoldFont(
                                                                      text:
                                                                          'Football'),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: .5.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .access_time_filled_rounded,
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
                                                            text:
                                                                'Team Registration Fee: ',
                                                            style: GoogleFonts
                                                                .titilliumWeb(
                                                              fontSize: 8.sp,
                                                              color:
                                                                  Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '500 QR',
                                                            style: GoogleFonts
                                                                .titilliumWeb(
                                                              fontSize: 8.sp,
                                                              color: Color(
                                                                  0xff099F9F),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                          text:
                                                              'Racing Club, Al Rayyan',
                                                        ),
                                                      ],
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'Tournament Prize: ',
                                                            style: GoogleFonts
                                                                .titilliumWeb(
                                                              fontSize: 8.sp,
                                                              color:
                                                                  Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '100000 QR',
                                                            style: GoogleFonts
                                                                .titilliumWeb(
                                                              fontSize: 8.sp,
                                                              color: Color(
                                                                  0xff099F9F),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
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
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          height: 3.5.h,
                                                          width:
                                                              double.infinity,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              // Get.to(TicketUi());
                                                            },
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Color.fromRGBO(
                                                                            8,
                                                                            147,
                                                                            147,
                                                                            0.15),
                                                                    foregroundColor:
                                                                        ColorConstants
                                                                            .appBackColorWhite,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              1.h),
                                                                    )),
                                                            child:
                                                                NormalFontWhite(
                                                              text:
                                                                  '19/32 slots left',
                                                            ),
                                                          ),
                                                        )),
                                                    SizedBox(
                                                      width: 1.5.h,
                                                    ),
                                                    Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          height: 3.5.h,
                                                          width:
                                                              double.infinity,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              // Get.to(TicketUi());
                                                            },
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        ColorConstants
                                                                            .buttonColor,
                                                                    foregroundColor:
                                                                        ColorConstants
                                                                            .appBackColorWhite,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              1.h),
                                                                    )),
                                                            child:
                                                                NormalFontWhite(
                                                              text: 'Join',
                                                            ),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                );
                              }),
                        ],
                      ),

                      SizedBox(
                        height: 1.5.h,
                      ),
                      // ListView.builder( physics: ScrollPhysics(),
                      //     padding: EdgeInsets.zero,
                      //     shrinkWrap: true,
                      //     // itemExtent: 80.0,
                      //     itemCount: 6,
                      //     itemBuilder: (
                      //         BuildContext context,
                      //         int index,
                      //
                      //         ) {
                      //       return Padding(
                      //         padding:EdgeInsets.only(bottom: 2.h),
                      //         child: Container(
                      //           // height: 22.h,
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(2.h),
                      //               color: Colors.white,
                      //               border: Border.all(
                      //                 color: Colors.grey,
                      //                 style: BorderStyle.solid,
                      //                 width: .3,
                      //               ),
                      //             ),
                      //             child: Column(
                      //               children: [
                      //                 InkWell(
                      //                   onTap: (){
                      //                     // Get.to(DayPassSingleView());
                      //                   },
                      //                   child: Container(
                      //                       height: 14.h,
                      //                       margin: EdgeInsets.all(.6.h),
                      //                       decoration: BoxDecoration(
                      //                         image: DecorationImage(
                      //                             image: NetworkImage(
                      //                                 "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                      //                             fit: BoxFit.cover),
                      //                         borderRadius: BorderRadius.all(Radius.circular(13)),
                      //                         color: ColorConstants.lightGrey,
                      //                       ),
                      //                       child: Row(
                      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                         children: [
                      //                           Align(
                      //                             alignment: Alignment.topLeft,
                      //                             child: Padding(
                      //                               padding: EdgeInsets.only(left: 2.h, top: 1.h),
                      //                               child: Container(
                      //                                 decoration: BoxDecoration(
                      //                                   borderRadius:
                      //                                   BorderRadius.all(Radius.circular(13)),
                      //                                   color: Color(0xff047472).withOpacity(1),
                      //                                 ),
                      //                                 child: Padding(
                      //                                   padding:
                      //                                   EdgeInsets.only(left: 1.h, right: 1.h),
                      //                                   child: Text(
                      //                                     "Featured",
                      //                                     style: TextStyle(
                      //                                         fontSize: 7.sp, color: Colors.white),
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                             ),
                      //                           ),
                      //                           Align(
                      //                             alignment: Alignment.topRight,
                      //                             child: Padding(
                      //                               padding: EdgeInsets.only(right: 2.h, top: 1.h),
                      //                               child: Container(
                      //                                 child: Icon(
                      //                                   Icons.favorite_border,
                      //                                   size: 2.5.h,
                      //                                   color: Colors.white,
                      //                                 ),
                      //                               ),
                      //                             ),
                      //                           )
                      //                         ],
                      //                       )),
                      //                 ),
                      //                 Padding(
                      //                   padding: EdgeInsets.only(left: 2.h),
                      //                   child: Column(
                      //                     mainAxisAlignment: MainAxisAlignment.start,
                      //                     crossAxisAlignment: CrossAxisAlignment.start,
                      //                     children: [
                      //                       Row(
                      //                         children: [
                      //                           Text("4.1",
                      //                               style: GoogleFonts.titilliumWeb(
                      //                                   fontSize: 9.sp,
                      //                                   color: Colors.grey.withOpacity(.5),
                      //                                   fontWeight: FontWeight.w500,
                      //                                   height: .15.h)),
                      //                           Icon(
                      //                             Icons.star,
                      //                             size: 1.3.h,
                      //                             color: Colors.yellow[700],
                      //                           ),
                      //                         ],
                      //                       ),
                      //                       Padding(
                      //                         padding:EdgeInsets.only(right: 4.h),
                      //                         child: Row(
                      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                           children: [
                      //                             Text(
                      //                               "Day Pass at Hotel Marriot",
                      //                               style: GoogleFonts.titilliumWeb(
                      //                                   fontSize: 12.sp,
                      //                                   color: Color(0xff06807F),
                      //                                   fontWeight: FontWeight.w700,
                      //                                   height: .15.h),
                      //                             ),
                      //
                      //                             Text("*Price starting",
                      //                                 style: GoogleFonts.titilliumWeb(
                      //                                   fontSize: 8.sp,
                      //                                   color: Colors.black,
                      //                                   fontWeight: FontWeight.w300,
                      //                                 )),
                      //
                      //                           ],
                      //                         ),
                      //                       ),
                      //                       Row(
                      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                         children: [
                      //                           Row(
                      //                             children: [
                      //                               Icon(
                      //                                 Icons.location_on,
                      //                                 size: 1.3.h,
                      //                                 color: Color(0xff06807F),
                      //                               ),
                      //                               Text("Doha, Qatar",
                      //                                   style: GoogleFonts.titilliumWeb(
                      //                                     fontSize: 8.sp,
                      //                                     color: Colors.black,
                      //                                     fontWeight: FontWeight.w300,
                      //                                   )),
                      //                             ],
                      //                           ),
                      //                           Padding(
                      //                             padding: EdgeInsets.only(right: 2.h),
                      //                             child: Row(
                      //                               children: [
                      //                                 Text("from  ",
                      //                                     style: GoogleFonts.titilliumWeb(
                      //                                       fontSize: 8.sp,
                      //                                       color: Colors.black,
                      //                                       fontWeight: FontWeight.w300,
                      //                                     )),
                      //                                 Text(
                      //                                   "250 QR",
                      //                                   style: GoogleFonts.titilliumWeb(
                      //                                     fontSize: 12.sp,
                      //                                     color: Color(0xff06807F),
                      //                                     fontWeight: FontWeight.w700,),
                      //                                 )
                      //
                      //                               ],
                      //                             ),
                      //                           )
                      //
                      //                         ],
                      //                       ),
                      //
                      //
                      //                       SizedBox(height: 1.h,),
                      //                     ],
                      //                   ),
                      //                 )
                      //               ],
                      //             )),
                      //       );
                      //     }
                      // )
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
                                "Assets/BottomBarIcons/Tournement_sel.png")),
                        Text(
                          "Tournament",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Color(0xff137171),
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
