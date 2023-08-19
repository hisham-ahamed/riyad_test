import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:riyad_test/LadiesOnly/View/LadiesOnlyCheckout.dart';
import 'package:riyad_test/Login/Controller/PhoneTextController.dart';
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
import '../../Profile/UserProfile/Profile.dart';
import '../../Tournament/View/TournamentList/TournamentList.dart';
import 'CalenderView.dart';

class LadiesOnlySingleList extends StatefulWidget {
  LadiesOnlySingleList({Key? key, required this.venueList}) : super(key: key);
  final dynamic venueList;

  @override
  State<LadiesOnlySingleList> createState() => _LadiesOnlySingleListState();
}

class _LadiesOnlySingleListState extends State<LadiesOnlySingleList> {
  final Map<String, dynamic> selected = {};

  final dynamic selectedField = {};
  // int _selectedCategoryIndex = -1;

  int _selectDuration = -1;
  dynamic selectedFieldData = {};

  int _selectTime = -1;
  List<String> selection = [];
  int selectedDuration = 30;
  List<TimeStamp> timeStamps = [];

  // final List<String> _categories = [
  //   '6x6 pitch 1',
  //   '6x6 pitch 2',
  //   '8x8 pitch 1',
  //   '8x8 pitch 2',
  // ];
  final List<String> priceDurationApiLabel = [
    'price_30',
    'price_60',
    'price_90',
    'price_120'
  ];

  final List<int> durationInteger = [30, 60, 90, 120];

  double amount = 200.0;

  final List<String> _durationCategories = [
    '30 minutes',
    '60 minutes',
    '90 minutes',
    '120 minutes',
  ];

  // final List<String> _timeCategories = [
  //   '4:30 PM',
  //   '7:30 PM',
  //   '8:30 PM',
  // ];

  @override
  Widget build(BuildContext context) {
    List<dynamic> venueAmenities = widget.venueList["venueaminities"];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
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
                            const Color(0xff099F9F).withOpacity(.9),
                            const Color(0xff047472).withOpacity(1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        image: DecorationImage(
                            image: NetworkImage(widget.venueList["image"]),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
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
                            child: const Center(
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
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Material(
                    elevation: 0,
                    color: Colors.grey,
                    // shadowColor:
                    child: Container(
                      decoration: const BoxDecoration(
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
                                Text(widget.venueList["venuename"],
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 15.sp,
                                      color: const Color(0xff06807F),
                                      fontWeight: FontWeight.w700,
                                    )),
                                InkWell(
                                    onTap: () {
                                      // Get.back();
                                    },
                                    child: const Icon(Icons.favorite_border,
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
                                            text: widget.venueList["location"],
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
                                  text: widget.venueList["venuedescrption"],
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 1.5.h,
                            ),
                            SizedBox(
                              height: 3.3.h,
                              child: ListView.builder(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  // itemExtent: 80.0,
                                  itemCount: venueAmenities.length,
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
                                                    // Icon(
                                                    //   Icons
                                                    //       .local_parking_outlined,
                                                    //   color: Colors.black,
                                                    //   size: 1.5.h,
                                                    // ),
                                                    // SizedBox(width: .3.h),
                                                    BottomBlackFont(
                                                      text:
                                                          venueAmenities[index],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 1.h,
                                            ),
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //       borderRadius:
                                            //           BorderRadius.circular(
                                            //               .4.h),
                                            //       // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            //       color:
                                            //           ColorConstants.boxColor),
                                            //   child: Padding(
                                            //     padding: EdgeInsets.all(.6.h),
                                            //     child: Row(
                                            //       children: [
                                            //         Icon(
                                            //           Icons.local_restaurant,
                                            //           color: Colors.black,
                                            //           size: 1.5.h,
                                            //         ),
                                            //         SizedBox(width: .3.h),
                                            //         BottomBlackFont(
                                            //           text: 'Restaurant',
                                            //         )
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   width: 1.h,
                                            // ),
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //       borderRadius:
                                            //           BorderRadius.circular(
                                            //               .4.h),
                                            //       // color: Color.fromRGBO(255, 255, 255, 0.5),
                                            //       color:
                                            //           ColorConstants.boxColor),
                                            //   child: Padding(
                                            //     padding: EdgeInsets.all(.6.h),
                                            //     child: Row(
                                            //       children: [
                                            //         Icon(
                                            //           Icons.shower,
                                            //           color: Colors.black,
                                            //           size: 1.5.h,
                                            //         ),
                                            //         SizedBox(width: .3.h),
                                            //         BottomBlackFont(
                                            //           text: 'Bathroom',
                                            //         )
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   width: 1.h,
                                            // ),
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
                            const SubHeaderFont(text: 'Fields'),
                            SizedBox(
                              height: 1.h,
                            ),
                            _buildActivities(
                                fieldList: widget.venueList["sports"]),
                            SizedBox(
                              height: 2.h,
                            ),
                            const SubHeaderFont(text: 'Select Date'),
                            SizedBox(height: 18.h, child: CalendarWidget()),
                            SizedBox(
                              height: 2.h,
                            ),
                            const SubHeaderFont(text: 'Select Duration'),
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
                            const SubHeaderFont(text: 'Select Time'),
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
                                    children: _buildCategoryTime(
                                        startingTime:
                                            widget.venueList["starting_time"],
                                        endingTime:
                                            widget.venueList["ending_time"]),
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
                                        Text("QAR ${amount.toString()}",
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 15.sp,
                                              color: const Color(0xff06807F),
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
                                          // print(widget.venueList);
                                          // print(selectedFieldData);
                                          // print(UserDataValue.dateTime);
                                          // print(selectedDuration);
                                          // print(selection);
                                          // print(amount);
                                          Get.to(LadiesOnlyCheckout(
                                            checkOutData: CheckOutData(
                                                venueList: widget.venueList,
                                                selectedFieldData:
                                                    selectedFieldData,
                                                selectedDate:
                                                    UserDataValue.dateTime,
                                                selectedDuration:
                                                    selectedDuration,
                                                selection: selection,
                                                amount: amount),
                                          ));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff088F8F),
                                            foregroundColor:
                                                const Color(0xff099F9F)
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
    return const Column(
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

  // List<Widget> _buildCategoryfield() {
  //   return List<Widget>.generate(
  //     _categories.length,
  //     (index) => Container(
  //       height: 4.h,
  //       child: RawChip(
  //         showCheckmark: false,
  //         backgroundColor: Color(0xffF0F0F0),
  //         selectedColor: Color(0xffF0F0F0),
  //         side: BorderSide(
  //           color: _selectedCategoryIndex == index
  //               ? Colors.transparent
  //               : Colors.transparent,
  //           width: 1.0,
  //         ),
  //         labelStyle: GoogleFonts.titilliumWeb(
  //           fontSize: 10.sp,
  //           color: _selectedCategoryIndex == index
  //               ? Color(0xff088F8F)
  //               : Colors.black,
  //           fontWeight: FontWeight.w600,
  //         ),
  //         label: Text(_categories[index]),
  //         selected: _selectedCategoryIndex == index,
  //         onSelected: (selected) {
  //           // setState(() {
  //           //   _selectedCategoryIndex = selected ? index : 0;
  //           // });
  //         },
  //       ),
  //     ),
  //   ).toList();
  // }

  /// duration category
  List<Widget> _buildCategoryDuration() {
    return List<Widget>.generate(
      _durationCategories.length,
      (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: const Color(0xffF0F0F0),
          selectedColor: const Color(0xffF0F0F0),
          side: BorderSide(
            color: _selectDuration == index
                ? Colors.transparent
                : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: _selectDuration == index
                ? const Color(0xff088F8F)
                : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(_durationCategories[index]),
          selected: _selectDuration == index,
          onSelected: (selected) {
            setState(() {
              selectedDuration = durationInteger[index];
              amount =
                  double.parse(widget.venueList[priceDurationApiLabel[index]]);
              _selectDuration = selected ? index : 0;
            });
          },
        ),
      ),
    ).toList();
  }

  List<TimeStamp> makeSetOfTimeStamps(
      {required String startingTime,
      required String endingTime,
      bool override = true}) {
    if (override) {
      startingTime = "12:00 AM";
      endingTime = "3:30 PM";
    }
    DateTime d = UserDataValue.dateTime;
    DateTime startTime = DateFormat('MM/dd/yyyy, hh:mm a')
        .parse('${d.month}/${d.day}/${d.year}, $startingTime');
    DateTime endTime = DateFormat('MM/dd/yyyy, hh:mm a')
        .parse('${d.month}/${d.day}/${d.year}, $endingTime');
    Duration difference = endTime.difference(startTime);
    int totalHours = difference.inMinutes;
    // print(totalHours);
    DateTime timeStampsInDateTime = startTime;
    List<TimeStamp> timeStampsToReturn = [];
    for (int i = 0; i <= totalHours; i += 30) {
      TimeStamp timeStamp = TimeStamp(
          time: timeStampsInDateTime,
          timeInString: DateFormat('hh:mm a').format(timeStampsInDateTime));
      timeStampsToReturn.add(timeStamp);
      timeStampsInDateTime = timeStampsInDateTime.add(Duration(minutes: 30));
    }
    return timeStampsToReturn;
  }

  /// Time Category
  List<Widget> _buildCategoryTime(
      {required String startingTime, required String endingTime}) {
    timeStamps.clear();
    timeStamps =
        makeSetOfTimeStamps(startingTime: startingTime, endingTime: endingTime);
    // print(DateFormat('hh:mm a').format(DateTime.now()));
    // print(timeStamps);
    List<Widget> widgetsToReturn = [];
    widgetsToReturn = List<Widget>.generate(
      timeStamps.length,
      (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: const Color(0xffF0F0F0),
          selectedColor: const Color(0xffF0F0F0),
          side: BorderSide(
            color: selection.contains(timeStamps[index].timeInString)
                ? Colors.transparent
                : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 10.sp,
            color: selection.contains(timeStamps[index].timeInString)
                ? const Color(0xff088F8F)
                : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(timeStamps[index].timeInString),
          selected: selection.contains(timeStamps[index].timeInString),
          onSelected: (selected) {
            print(selected);
            setState(() {
              selection.clear();
              // _selectTime = selected ? index : 0;
              selection = selectAllTheDurationTime(timeStamps[index])
                  .map((e) => e.timeInString)
                  .toList();
              // print(selection);
            });
          },
        ),
      ),
      growable: false,
    );
    return widgetsToReturn;
  }

  List<TimeStamp> selectAllTheDurationTime(TimeStamp timeStamp) {
    String startingTime = timeStamp.timeInString;
    DateTime endingTimeInDateTime =
        timeStamp.time.add(Duration(minutes: selectedDuration));
    String endingTime = DateFormat('hh:mm a').format(endingTimeInDateTime);
    return makeSetOfTimeStamps(
        startingTime: startingTime, endingTime: endingTime, override: false);
  }

  /// Activities
  Widget _buildActivities({required List<dynamic> fieldList}) {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          // itemExtent: 80.0,
          itemCount: fieldList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedFieldData = fieldList[index];
                    });
                  },
                  child: Row(children: [
                    Container(
                        // height: 7.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(.9.h),
                          color: ColorConstants.boxColor,
                          border: selectedFieldData == fieldList[index]
                              ? Border.all(
                                  color: const Color(0xff047472),
                                  width: 1,
                                )
                              : Border.all(
                                  color: ColorConstants.boxColor,
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
                                      image: NetworkImage(
                                          fieldList[index]["image"]))),
                              Padding(
                                padding: EdgeInsets.only(top: .3.h),
                                child: SmallFont(
                                    text: fieldList[index]["sportsname"]),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 4.h,
                    ),
                    // Container(
                    //     // height: 7.h,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(.9.h),
                    //       color: ColorConstants.boxColor,
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.only(
                    //           left: 1.6.h,
                    //           right: 1.6.h,
                    //           top: 1.2.h,
                    //           bottom: 1.h),
                    //       child: Column(
                    //         children: [
                    //           Container(
                    //               height: 3.h,
                    //               child: Image(
                    //                   image: AssetImage(
                    //                       "Assets/LadiesOnlyIcons/Yoga.png"))),
                    //           Padding(
                    //             padding: EdgeInsets.only(top: .3.h),
                    //             child: SmallGreyColor(text: 'Yoga'),
                    //           )
                    //         ],
                    //       ),
                    //     )),
                    // SizedBox(
                    //   width: 4.h,
                    // ),
                    // Container(
                    //     // height: 7.h,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(.9.h),
                    //       color: ColorConstants.boxColor,
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.only(
                    //           left: 1.6.h,
                    //           right: 1.6.h,
                    //           top: 1.2.h,
                    //           bottom: 1.h),
                    //       child: Column(
                    //         children: [
                    //           Container(
                    //               height: 3.h,
                    //               child: Image(
                    //                   image: AssetImage(
                    //                       "Assets/LadiesOnlyIcons/Cardio.png"))),
                    //           Padding(
                    //             padding: EdgeInsets.only(top: .3.h),
                    //             child: SmallGreyColor(text: 'Cardio'),
                    //           )
                    //         ],
                    //       ),
                    //     )),
                    // SizedBox(
                    //   width: 4.h,
                    // ),
                    // Container(
                    //     // height: 7.h,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(.9.h),
                    //       color: ColorConstants.boxColor,
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.only(
                    //           left: .6.h, right: .6.h, top: 1.2.h, bottom: 1.h),
                    //       child: Column(
                    //         children: [
                    //           Container(
                    //               height: 3.h,
                    //               child: Image(
                    //                   image: AssetImage(
                    //                       "Assets/LadiesOnlyIcons/Boxing.png"))),
                    //           Padding(
                    //             padding: EdgeInsets.only(top: .3.h),
                    //             child: SmallGreyColor(text: 'Kickboxing'),
                    //           )
                    //         ],
                    //       ),
                    //     )),
                    // SizedBox(
                    //   width: 1.h,
                    // ),
                  ]),
                ));
          }),
    );
  }
}

class TimeStamp {
  final DateTime time;
  final String timeInString;
  TimeStamp({required this.time, required this.timeInString});
}
