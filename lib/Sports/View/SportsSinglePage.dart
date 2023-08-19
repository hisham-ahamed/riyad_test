import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/BottomFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicBlackFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderFont.dart';
import '../../CustomWidget/CustomFont/WhiteFontHeader.dart';
import '../../Event/View/EventList/EventList.dart';
import '../../HomePage/View/HomePage.dart';
import '../../LadiesOnly/View/CalenderView.dart';
import '../../Profile/UserProfile/Profile.dart';
import '../../Tournament/View/TournamentList/TournamentList.dart';
import 'SportsCheckout.dart';


class SportsSinglePage extends StatefulWidget {
  SportsSinglePage({Key? key}) : super(key: key);

  @override
  State<SportsSinglePage> createState() => _SportsSinglePageState();
}

class _SportsSinglePageState extends State<SportsSinglePage> {
  int _selectedCategoryIndex = -1;

  int _selectDuration = -1;

  int _selectTime = -1;

  final List<String> _categories = [
    '6x6 pitch 1',
    '6x6 pitch 2',
    '8x8 pitch 1',
    '8x8 pitch 2',
  ];

  final List<String> _durationCategories = [
    '60 minutes',
    '80 minutes',
    '90 minutes',
  ];

  final List<String> _timeCategories = [
    '4:30 PM',
    '7:30 PM',
    '8:30 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              // height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 25.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff099F9F).withOpacity(.9),
                            Color(0xff047472).withOpacity(1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                                "Assets/groundBg.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        color: Colors.white),
                    // child: CustomFont(text: 'Bookings'),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ListTile(
                          leading: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 2.3.h,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(right: 3.h),
                            child: Center(
                                child: HeaderWhite(
                                  text: 'Booking',
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Material(
                    elevation: 0,
                    color: Colors.grey,
                    // shadowColor:
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.only(left: 3.h, right: 3.h, top: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Aspire Zone, Aziziya",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 15.sp,
                                      color: Color(0xff06807F),
                                      fontWeight: FontWeight.w700,
                                    )),
                                InkWell(
                                    onTap: () {
                                      // Get.back();
                                    },
                                    child: Icon(Icons.favorite_border,
                                        color: Colors.black))
                              ],
                            ),
                            SizedBox(
                              height: .8.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(1.5.h),
                                      // color: Color.fromRGBO(255, 255, 255, 0.5),
                                      color: ColorConstants.appThemeColorGreen),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: .5.h,
                                        right: .5.h,
                                        top: 1.h,
                                        bottom: 1.h),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 1.5.h,
                                          ),
                                          SizedBox(width: .3.h),
                                          BottomFont(
                                            text: 'Al Wahab St.Doha',
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Expanded(
                                    child: BottomBlackFont(
                                      text:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, niam, quis nostrud exercipsum dolor si.',
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 1.5.h,
                            ),
                            SizedBox(
                              height: 3.3.h,
                              child: ListView.builder(
                                  physics: AlwaysScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  // itemExtent: 80.0,
                                  itemCount: 8,
                                  itemBuilder: (
                                      BuildContext context,
                                      int index,
                                      ) {
                                    return Padding(
                                        padding: EdgeInsets.only(right: 1.h),
                                        child: InkWell(
                                          onTap: () {
                                            // Get.to(LadiesOnlySingleList());
                                          },
                                          child: Row(children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      .4.h),
                                                  // color: Color.fromRGBO(255, 255, 255, 0.5),
                                                  color:
                                                  ColorConstants.boxColor),
                                              child: Padding(
                                                padding: EdgeInsets.all(.6.h),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .local_parking_outlined,
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
                                                  BorderRadius.circular(
                                                      .4.h),
                                                  // color: Color.fromRGBO(255, 255, 255, 0.5),
                                                  color:
                                                  ColorConstants.boxColor),
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
                                                  BorderRadius.circular(
                                                      .4.h),
                                                  // color: Color.fromRGBO(255, 255, 255, 0.5),
                                                  color:
                                                  ColorConstants.boxColor),
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
                                          ]),
                                        ));
                                  }),
                            ),
                            SizedBox(
                              height: .4.h,
                            ),
                            new Divider(
                              color: Colors.grey.withOpacity(.6),
                            ),
                            SubHeaderFont(text: 'Activities'),
                            SizedBox(
                              height: 1.h,
                            ),
                            _buildActivities(),
                            SizedBox(
                              height: 2.h,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            SubHeaderFont(text: 'Select Pitch'),
                            SizedBox(
                              height: 1.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: _buildCategoryfield(),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 2.h,
                            ),

                            SubHeaderFont(text: 'Select Date'),

                            SizedBox(height: 18.h, child: CalendarWidget()),
                            SizedBox(
                              height: 2.h,
                            ),
                            SubHeaderFont(text: 'Select Duration'),
                            SizedBox(
                              height: 1.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: _buildCategoryDuration(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            SubHeaderFont(text: 'Select Time'),
                            SizedBox(
                              height: 1.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: _buildCategoryTime(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Amount",
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text("QAR 200",
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 15.sp,
                                              color: Color(0xff06807F),
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.h,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: SizedBox(
                                      height: 6.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Get.to(SportsCheckout());
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff088F8F),
                                            foregroundColor: Color(0xff099F9F)
                                                .withOpacity(.9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(1.h),
                                            )),
                                        child: Text(
                                          "Next",
                                          style: GoogleFonts.titilliumWeb(
                                            fontSize: 15.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Spacer(),
                // SizedBox(
                //   height: 15,
                // ),
                // Spacer(),
              ],
            ),
            // Positioned(
            //   bottom: 0,
            //   height: 70,
            //   left: 0,
            //   right: 0,
            //   child: Padding(
            //     padding: const EdgeInsets.all(21.0),
            //     // child: MyBottomNavBar(),
            //   ),
            // )
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
        // visible: !iskeyboardOpen,
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
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // dateView
  Widget dateView() {
    return IntrinsicHeight(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Date',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('04 January 2023',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
          VerticalDivider(
            color: Colors.grey.withOpacity(.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Time',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('8:30 pm to 9:30 pm',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
          VerticalDivider(
            color: Colors.grey.withOpacity(.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pitch',
                  style: GoogleFonts.titilliumWeb(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: .25.h)),
              Text('8x8 Pitch 1',
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget termsAndConditions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        smallItalicBlackFont(
          text: 'By clicking here, I state that I have read and understood',
        ),
        smallItalicFont(
          text: 'the Terms & conditions.',
        )
      ],
    );
  }

  ///Field Category

  List<Widget> _buildCategoryfield() {
    return List<Widget>.generate(
      _categories.length,
          (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: Color(0xffF0F0F0),
          selectedColor: Color(0xffF0F0F0),
          side: BorderSide(
            color: _selectedCategoryIndex == index
                ? Colors.transparent
                : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: _selectedCategoryIndex == index
                ? Color(0xff088F8F)
                : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(_categories[index]),
          selected: _selectedCategoryIndex == index,
          onSelected: (selected) {
            setState(() {
              _selectedCategoryIndex = selected ? index : 0;
            });
          },
        ),
      ),
    ).toList();
  }

  /// duration category
  List<Widget> _buildCategoryDuration() {
    return List<Widget>.generate(
      _durationCategories.length,
          (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: Color(0xffF0F0F0),
          selectedColor: Color(0xffF0F0F0),
          side: BorderSide(
            color: _selectDuration == index
                ? Colors.transparent
                : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: _selectDuration == index ? Color(0xff088F8F) : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(_durationCategories[index]),
          selected: _selectDuration == index,
          onSelected: (selected) {
            setState(() {
              _selectDuration = selected ? index : 0;
            });
          },
        ),
      ),
    ).toList();
  }

  /// Time Category
  List<Widget> _buildCategoryTime() {
    return List<Widget>.generate(
      _timeCategories.length,
          (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: Color(0xffF0F0F0),
          selectedColor: Color(0xffF0F0F0),
          side: BorderSide(
            color:
            _selectTime == index ? Colors.transparent : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: _selectTime == index ? Color(0xff088F8F) : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(_timeCategories[index]),
          selected: _selectTime == index,
          onSelected: (selected) {
            setState(() {
              _selectTime = selected ? index : 0;
            });
          },
        ),
      ),
    ).toList();
  }

  /// Activities
  Widget _buildActivities() {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          reverse: false,
          shrinkWrap: true,
          // itemExtent: 80.0,
          itemCount: 1,
          itemBuilder: (
              BuildContext context,
              int index,
              ) {
            return Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: InkWell(
                  onTap: () {
                    // Get.to(LadiesOnlySingleList());
                  },
                  child: Row(children: [
                    Container(
                      // height: 7.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.9.h),
                          color: ColorConstants.boxColor,
                          border: Border.all(
                            color: Color(0xff047472),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 1.6.h,
                              right: 1.6.h,
                              top: 1.2.h,
                              bottom: 1.h),
                          child: Column(
                            children: [
                              Container(
                                  height: 3.h,
                                  child: Image(
                                      image: AssetImage(
                                          "Assets/foot.png"))),
                              Padding(
                                padding: EdgeInsets.only(top: .3.h),
                                child: SmallFont(text: 'Football'),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 4.h,
                    ),
                    Container(
                      // height: 7.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.9.h),
                          color: ColorConstants.boxColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 1.6.h,
                              right: 1.6.h,
                              top: 1.2.h,
                              bottom: 1.h),
                          child: Column(
                            children: [
                              Container(
                                  height: 3.h,
                                  child: Image(
                                      image: AssetImage(
                                          "Assets/LadiesOnlyIcons/cricket.png"))),
                              Padding(
                                padding: EdgeInsets.only(top: .3.h),
                                child: SmallGreyColor(text: 'Cricket'),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 4.h,
                    ),
                    Container(
                      // height: 7.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.9.h),
                          color: ColorConstants.boxColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 1.6.h,
                              right: 1.6.h,
                              top: 1.2.h,
                              bottom: 1.h),
                          child: Column(
                            children: [
                              Container(
                                  height: 3.h,
                                  child: Image(
                                      image: AssetImage(
                                          "Assets/LadiesOnlyIcons/badminton.png"))),
                              Padding(
                                padding: EdgeInsets.only(top: .3.h),
                                child: SmallGreyColor(text: 'Tennis'),
                              )
                            ],
                          ),
                        )),

                    SizedBox(
                      width: 1.h,
                    ),
                  ]),
                ));
          }),
    );
  }
}
