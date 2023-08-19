import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SubHeaderFont.dart';
import 'package:sizer/sizer.dart';

import '../../AppConstants/ColorConstants.dart';
import '../../CustomWidget/CustomFont/BottomGreyFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'EventCheckoutReciept/EventCheckoutReciept.dart';


class EventCheckout extends StatelessWidget {
  const EventCheckout({Key? key}) : super(key: key);

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
                            height: 15.h,
                            margin: EdgeInsets.only(top: .26.h),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/R.034619344ab0f2de59404063f2b5302b?rik=xOLOHt%2bUB7zUeQ&pid=ImgRaw&r=0"),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(13)),
                              color: Color(0xffFFB485),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 2.h, top: 1.h),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsets.only(left: .5.h, right: .5.h,top: .3.h,bottom: .3.h),
                                          child: SmallBoldFont(text:
                                            "18 slots left",

                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
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
                                          "All shaqab Academic Event",
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
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .access_time_filled_rounded,
                                              size: 1.4.h,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              width: .5.h,
                                            ),
                                            SmallGreyFont(
                                              text: '9:30 pm',
                                            ),
                                          ],
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
                                              left: 1.h,
                                              right: 1.h,
                                              top: 1.2.h,
                                              bottom: 1.h),
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 3.h,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "Assets/SportsIcons/HorseRide.png"))),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: .3.h),
                                                child:
                                                SmallFont(text: 'Horse Ride'),
                                              )
                                            ],
                                          ),
                                        )),
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
                                            text: 'Tournament Prize: ',
                                            style: GoogleFonts.titilliumWeb(
                                              fontSize: 8.sp,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '100000 QR',
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
                                  height: 2.5.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SubHeaderFont(
                                    text: 'Select Payment',
                                  ),
                                ),
                                SizedBox(height: 1.h,),

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

                                couponCode(),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SubHeaderFont(
                                    text: 'Select Payment',
                                  ),
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                selectPayymentView(),
                                SizedBox(
                                  height: 1.h,
                                ),
                                new Divider(
                                  color: Colors.grey.withOpacity(.6),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    NormalFont(text: 'Adult x 1'),
                                    NormalBoldFont(text: 'QAR 200')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    NormalFont(text: 'Discount'),
                                    NormalBoldFont(text: 'QAR 0'),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                new Divider(
                                  color: Colors.grey.withOpacity(.6),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    SubHeaderBlack(
                                      text: 'Total Amount',
                                    ),
                                    Text("QAR 200",
                                        style: GoogleFonts.titilliumWeb(
                                          fontSize: 15.sp,
                                          color: Color(0xff035B59),
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 2.h,),

                                SizedBox(
                                  height: 5.8.h,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(EventCheckoutReciept());

                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                        Color(0xff088F8F),
                                        foregroundColor:
                                        Color(0xff099F9F)
                                            .withOpacity(.9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              1.h),
                                        )),
                                    child: Text(
                                      "Pay Now",
                                      style: GoogleFonts.titilliumWeb(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1.h,)




                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),

    );
  }

  Widget couponCode() {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Center(
            child: Container(
              height: 5.h,
              child: TextFormField(
                // cursorHeight: 2.h,
                textInputAction: TextInputAction.next,

                onChanged: (value) {},
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Enter Coupon code";
                //   }
                // },
                decoration: InputDecoration(
                  hintText: 'Enter coupon your code',
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 10.sp,
                    height: .18.h,
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 10.sp,
                    // letterSpacing: 0.4,
                    // height: .18.h,
                  ),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0)),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: new EdgeInsets.symmetric(vertical: 0.0,horizontal: 1.h),
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: ColorConstants.boxColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 5.h,
            child: ElevatedButton(
              onPressed: () {
                // Get.to(BookingSuccess());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  )),
              child: Text(
                'Apply',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }



  Widget selectPayymentView() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.h, right: 1.h),
                child: Row(
                  children: [
                    SizedBox(
                      height: 3.h,
                      child: Image.asset(
                        'Assets/Icons/Card1.png',
                      ),
                    ),
                    SizedBox(
                      width: .7.h,
                    ),
                    NormalFont(
                      text: 'Credit/Debit Card',
                    )
                  ],
                ),
              ),
            )),
        SizedBox(
          width: 1.5.h,
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.7.h, right: 1.h),
                child: Row(
                  children: [
                    SizedBox(
                      height: 3.h,
                      child: Image.asset(
                        'Assets/Icons/Wallet1.png',
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalFont(
                          text: 'Use Wallet',
                        ),
                        SmallBoldFont(
                          text: 'Wallet QAR 250',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
      ],
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
