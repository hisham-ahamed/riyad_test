import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/Sports/View/Outdoor.dart';
import 'package:sizer/sizer.dart';
import '../../AppConstants/ColorConstants.dart';

import '../../Event/View/EventList/EventList.dart';
import '../../HomePage/View/HomePage.dart';
import '../../Profile/UserProfile/Profile.dart';
import '../../Tournament/View/TournamentList/TournamentList.dart';
import 'Filter.dart';
import 'Indoor.dart';


class SportList extends StatelessWidget {
  const SportList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: false,
            centerTitle: true,
            expandedHeight: 8.h,
            leading: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: IconButton(
                onPressed: () {
                  Get.to(HomePage());
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
              "Football",
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
                return ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children:[ Container(
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
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                            borderSide: const BorderSide(
                                                color: Colors.grey, width: .1),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 0.1,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 0.1,
                                            ),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 0.1,
                                            ),
                                          ),

                                          // border: OutlineInputBorder(
                                          //     borderRadius: BorderRadius.circular(10),
                                          //     borderSide:
                                          //      BorderSide(width: .5, style: BorderStyle.none,color: ColorConstants.appThemeColorRed)),
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
                                            Filter(),
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
                              height: 3.h,
                            ),
                            Container(
                              height: 4.h,
                              width: double.infinity,
                              child: TabBar(
                                  unselectedLabelColor: Colors.grey.withOpacity(.7),
                                  dividerColor: Colors.transparent,
                                  labelColor: Color(0xff035B59),
                                  indicator: BoxDecoration(
                                    color: Colors.grey.withOpacity(.16),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  tabs: [
                                    Container(
                                      width: double.infinity,
                                      child: Tab(
                                        text: 'Indoor',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Tab(
                                        text: 'Outdoor',
                                      ),
                                    )
                                  ]),
                            ),

                            SizedBox(
                              height: 2.h,
                            ),
                            SizedBox(
                              height: 70.h,
                              child: TabBarView(
                                  children: [IndoorScreen(), OutdoorScreen()]),
                            ),
                            SizedBox(height: 1.h,)
                          ]),
                        ),
                      ),
                    ),
                    ]);
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
      ),
    );
  }

// Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 2,
  //     child: Scaffold(
  //       backgroundColor: Colors.white,
  //       body: CustomScrollView(slivers: <Widget>[
  //         SliverAppBar(
  //           pinned: true,
  //           floating: true,
  //           centerTitle: true,
  //           expandedHeight: 8.h,
  //           leading: Padding(
  //             padding: EdgeInsets.only(left: 2.h),
  //             child: IconButton(
  //               onPressed: () {
  //                 Get.back();
  //               },
  //               color: Colors.white,
  //               iconSize: 2.h,
  //               icon: const Icon(
  //                 Icons.arrow_back_ios_new,
  //               ),
  //             ),
  //           ),
  //           title: Text(
  //             "Football",
  //             style: GoogleFonts.titilliumWeb(
  //               fontSize: 15.sp,
  //               color: Colors.white,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           ),
  //           flexibleSpace: Container(
  //             decoration: BoxDecoration(
  //                 gradient: LinearGradient(
  //                   colors: [
  //                     ColorConstants.appBarColor1,
  //                     ColorConstants.appBarColor2,
  //                   ],
  //                   begin: Alignment.topCenter,
  //                   end: Alignment.bottomCenter,
  //                 ),
  //                 borderRadius: const BorderRadius.only(
  //                     topLeft: Radius.zero,
  //                     topRight: Radius.zero,
  //                     bottomLeft: Radius.circular(18),
  //                     bottomRight: Radius.circular(18))),
  //           ),
  //         ),
  //         SliverList(
  //           delegate: SliverChildBuilderDelegate(
  //                 (context, index) {
  //               return Container(
  //                 color: Colors.white,
  //                 child: Padding(
  //                   padding: EdgeInsets.only(left: 3.h, right: 3.h),
  //                   child: Container(
  //                     color: Colors.white,
  //                     child: Column(children: [
  //                       SizedBox(
  //                         height: 3.h,
  //                       ),
  //                       Row(
  //                         children: [
  //                           Flexible(
  //                             child: SizedBox(
  //                               height: 3.6.h,
  //                               child: TextField(
  //                                 style: TextStyle(fontSize: 10.sp),
  //                                 decoration: InputDecoration(
  //
  //                                   // label: Text('Search'),
  //                                     hintText: 'Serach',
  //                                     labelStyle: const TextStyle(
  //                                       color: Colors.black26,
  //                                     ),
  //                                     hintStyle: TextStyle(
  //                                         fontSize: 10.sp, color: Colors.grey),
  //                                     isDense: true,
  //                                     // Added this
  //                                     contentPadding: const EdgeInsets.all(6),
  //                                     // Added this
  //
  //                                     focusedBorder: OutlineInputBorder(
  //                                       borderRadius:
  //                                       BorderRadius.circular(4.0),
  //                                       borderSide: const BorderSide(
  //                                           color: Colors.grey, width: .1),
  //                                     ),
  //                                     enabledBorder: OutlineInputBorder(
  //                                       borderRadius:
  //                                       BorderRadius.circular(4.0),
  //                                       borderSide: BorderSide(
  //                                         color: Colors.grey,
  //                                         width: 0.1,
  //                                       ),
  //                                     ),
  //                                     errorBorder: OutlineInputBorder(
  //                                       borderRadius:
  //                                       BorderRadius.circular(4.0),
  //                                       borderSide: BorderSide(
  //                                         color: Colors.grey,
  //                                         width: 0.1,
  //                                       ),
  //                                     ),
  //                                     focusedErrorBorder: OutlineInputBorder(
  //                                       borderRadius:
  //                                       BorderRadius.circular(4.0),
  //                                       borderSide: BorderSide(
  //                                         color: Colors.grey,
  //                                         width: 0.1,
  //                                       ),
  //                                     ),
  //
  //                                     // border: OutlineInputBorder(
  //                                     //     borderRadius: BorderRadius.circular(10),
  //                                     //     borderSide:
  //                                     //      BorderSide(width: .5, style: BorderStyle.none,color: ColorConstants.appThemeColorRed)),
  //                                     suffixIcon: IconButton(
  //                                       icon: Icon(
  //                                         Icons.search_rounded,
  //                                         size: 2.h,
  //                                       ),
  //                                       onPressed: () {
  //                                         print('search');
  //                                       },
  //                                     ),
  //                                     filled: true,
  //                                     fillColor: Colors.white),
  //                               ),
  //                             ),
  //                           ),
  //                           SizedBox(
  //                             width: 1.h,
  //                           ),
  //                           InkWell(
  //                             onTap: () => print("touch button"),
  //                             child: Container(
  //                               // height: 2.2.h,
  //                                 decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(.5.h),
  //                                     // color: Color.fromRGBO(255, 255, 255, 0.5),
  //                                     color: Colors.grey.withOpacity(.16)),
  //                                 child: Padding(
  //                                   padding: EdgeInsets.all(.7.h),
  //                                   child: Icon(
  //                                     Icons.favorite_border,
  //                                     size: 2.h,
  //                                     color: ColorConstants.appThemeColorGreen,
  //                                   ),
  //                                 )),
  //                           ),
  //                           SizedBox(
  //                             width: 1.h,
  //                           ),
  //                           InkWell(
  //                             onTap: () {
  //                               Get.bottomSheet(
  //                                 SingleChildScrollView(
  //                                   physics: ScrollPhysics(),
  //                                   child: Column(
  //                                     mainAxisSize: MainAxisSize.max,
  //                                     children: [
  //                                       Filter()
  //                                     ],
  //                                   ),
  //                                 ),
  //                                 backgroundColor: Colors.white,
  //                                 enableDrag: true,
  //                                 isScrollControlled: true,
  //                               );
  //                             },
  //                             child: Image.asset(
  //                               'Assets/Menu.png',
  //                               height: 3.h,
  //                               width: 3.h,
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 1.h,
  //                       ),
  //                       Container(
  //                         height: 4.h,
  //                         width: double.infinity,
  //                         child: TabBar(
  //                             unselectedLabelColor: Colors.grey.withOpacity(.7),
  //                             dividerColor: Colors.transparent,
  //                             labelColor: Color(0xff035B59),
  //                             indicator: BoxDecoration(
  //                               color: Colors.grey.withOpacity(.16),
  //                               borderRadius: BorderRadius.circular(5),
  //
  //                             ),
  //
  //                             tabs: [
  //                               Container(
  //                                 width: double.infinity,
  //                                 child: Tab(
  //                                   text: 'Indoor',
  //                                 ),
  //                               ),
  //                               Container(
  //                                 width: double.infinity,
  //                                 child: Tab(
  //                                   text: 'Outdoor',
  //                                 ),
  //                               )
  //                             ]),
  //                       ),
  //
  //                       SizedBox(
  //                         height: 2.h,
  //                       ),
  //                       SizedBox(
  //                         height: 70.h,
  //                         child: TabBarView(
  //                             children: [IndoorScreen(),OutdoorScreen()]),
  //                       ),
  //                       // SizedBox(
  //                       //   height: 20.h,
  //                       // ),
  //
  //
  //                     ]),
  //                   ),
  //                 ),
  //               );
  //             },
  //             childCount: 1,
  //           ),
  //         ),
  //       ]),
  //       bottomNavigationBar: Container(
  //         height: 7.2.h,
  //         decoration: BoxDecoration(
  //             gradient: LinearGradient(
  //               colors: [
  //                 Color(0xff099F9F).withOpacity(.9),
  //                 Color(0xff047472).withOpacity(1),
  //               ],
  //               begin: Alignment.topCenter,
  //               end: Alignment.bottomCenter,
  //             ),
  //             borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(20),
  //                 topRight: Radius.circular(20),
  //                 bottomLeft: Radius.zero,
  //                 bottomRight: Radius.zero)),
  //         child: Padding(
  //           padding: EdgeInsets.only(
  //             left: 4.h,
  //             right: 4.h,
  //             top: 1.h,
  //           ),
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 flex: 1,
  //                 child: Column(
  //                   children: [
  //                     Image.asset("Assets/image 36.png"),
  //                     Text(
  //                       "Home",
  //                       style: GoogleFonts.titilliumWeb(
  //                         fontSize: 7.sp,
  //                         color: Colors.white,
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Expanded(
  //                   flex: 1,
  //                   child: Column(
  //                     children: [
  //                       Image.asset("Assets/account 3.png"),
  //                       Text(
  //                         "Account",
  //                         style: GoogleFonts.titilliumWeb(
  //                           fontSize: 7.sp,
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.w600,
  //                         ),
  //                       ),
  //                     ],
  //                   )),
  //               Expanded(
  //                   flex: 1,
  //                   child: Padding(
  //                     padding: EdgeInsets.only(top: 1.6.h),
  //                     child: Center(
  //                       child: Text(
  //                         "Sports",
  //                         style: GoogleFonts.titilliumWeb(
  //                           fontSize: 7.sp,
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.w600,
  //                         ),
  //                       ),
  //                     ),
  //                   )),
  //               Expanded(
  //                   flex: 1,
  //                   child: Padding(
  //                     padding: EdgeInsets.only(top: .4.h),
  //                     child: Column(
  //                       children: [
  //                         Image.asset("Assets/image 117.png"),
  //                         Text(
  //                           "Tournament",
  //                           style: GoogleFonts.titilliumWeb(
  //                             fontSize: 7.sp,
  //                             color: Colors.white,
  //                             fontWeight: FontWeight.w600,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   )),
  //               Expanded(
  //                   flex: 1,
  //                   child: Column(
  //                     children: [
  //                       Image.asset("Assets/image 118.png"),
  //                       Text(
  //                         "Notification",
  //                         style: GoogleFonts.titilliumWeb(
  //                           fontSize: 7.sp,
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.w400,
  //                         ),
  //                       ),
  //                     ],
  //                   )),
  //             ],
  //           ),
  //         ),
  //       ),
  //       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //       floatingActionButton: Padding(
  //         padding: EdgeInsets.only(top: 2.h),
  //         child: SizedBox(
  //           height: 6.h,
  //           width: 6.h,
  //           child: FloatingActionButton(
  //             mini: false,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
  //             backgroundColor: Colors.white,
  //             onPressed: () {},
  //             tooltip: '',
  //             child: Image.asset("Assets/image 119.png"),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
