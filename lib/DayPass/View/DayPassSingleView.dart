import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import '../../CustomWidget/CustomFont/SubHeaderFont.dart';
import 'DayPassform.dart';

class DayPassSingleView extends StatelessWidget {
  const DayPassSingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
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
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
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
                    child: Column(
                      children: [
                        Container(
                          height: 15.h,
                          margin: EdgeInsets.all(.6.h),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/R.b96ddf6255f7f5060eaffc3c1e7094b2?rik=vZ5SEf%2fE%2b5U1Uw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f283%2f283172%2f283172_17050215380052746379.jpg%3fs%3d1024x768&ehk=r0yvBnXnjGYeEqpKumoxWRe9BFKybZmr3F90lBKL7NE%3d&risl=&pid=ImgRaw&r=0"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            color: Color(0xffFFB485),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h, right: 2.h),
                          child: Column(
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SubHeaderFont(
                                    text: 'Day Pass at Marriot!',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: .3.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    size: 1.5.h,
                                  ),
                                  SizedBox(
                                    width: .3.h,
                                  ),
                                  BottomBlackFont(
                                    text: '13 Mar 2023',
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: .3.h),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 1.5.h,
                                        ),
                                        SizedBox(
                                          width: .3.h,
                                        ),
                                        BottomBlackFont(
                                          text: 'Sports city, Aziziya',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            color: ColorConstants.buttonColor),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: .7.h,
                                              right: .7.h,
                                              top: .3.h,
                                              bottom: .4.h),
                                          child: Row(
                                            children: [
                                              NormalFontWhite(
                                                text: 'Price: ',
                                              ),
                                              NormalFontWhiteBold(
                                                text: 'QR 350',
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),

                              /// Scrollbar view
                              ///

                              _facilitiesIcon(),
                              SizedBox(
                                height: 2.5.h,
                              ),

                              /// adult count

                              _adultCount(),
                              SizedBox(
                                height: 2.h,
                              ),

                              /// child count
                              childCount(),
                              SizedBox(
                                height: 2.h,
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
                                    Get.to(DayPassForm());
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
                              ),
                              SizedBox(height: 2.h,)
                            ],
                          ),
                        ),
                      ],
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

// scollview
  Widget _facilitiesIcon() {
    return SizedBox(
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
    );

  }

  // adult count
  Widget _adultCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalBoldFont(text: 'Adult'),
        NormalFont(text: ('(16+ years)')),
        SizedBox(
          width: 2.h,
        ),
        SizedBox(
          child: Row(
            children: [
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.remove,
                    size: 1.5.h,
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                      )),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Center(
                    child: NormalBoldFont(
                      text: '1',
                    ),
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.add,
                    size: 1.5.h,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

// child count
  Widget childCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalBoldFont(text: 'Child'),
        NormalFont(text: ('(4-16 years)')),
        SizedBox(
          width: 2.h,
        ),
        SizedBox(
          child: Row(
            children: [
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.remove,
                    size: 1.5.h,
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                      )),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Center(
                    child: NormalBoldFont(
                      text: '1',
                    ),
                  ),
                ),
              ),
              Container(
                height: 3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Icon(
                    Icons.add,
                    size: 1.5.h,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
