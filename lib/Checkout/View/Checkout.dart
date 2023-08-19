import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';
import '../../CustomWidget/CustomFont/SmallBoldFont.dart';
import '../../CustomWidget/CustomFont/SmallFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicBlackFont.dart';
import '../../CustomWidget/CustomFont/SmallItalicFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderBlack.dart';
import 'BookingReciept.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/groundBg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: ListTile(
                  leading: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                        size: 2.3.h,
                      )),
                  title: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Text(
                        'Checkout',
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Expanded(
                child: Container(
                  width: double.infinity,
                  // height: 70.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h, right: 5.h, top: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Aspire Zone, Aziziya",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 15.sp,
                              color: Color(0xff088F8F),
                              fontWeight: FontWeight.w700,
                            )),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: ColorConstants.appThemeColorGreen,
                              size: 1.5.h,
                            ),
                            SizedBox(width: .3.h),
                            BottomBlackFont(
                              text: 'Al Wahab St.Doha',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Container(
                            height: 7.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(.9.h),
                                color: ColorConstants.boxColor),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 1.6.h, right: 1.6.h, top: 1.2.h),
                              child: Column(
                                children: [
                                  Container(
                                      height: 3.h,
                                      child: Image(
                                          image:
                                              AssetImage("Assets/foot.png"))),
                                  Padding(
                                    padding: EdgeInsets.only(top: .3.h),
                                    child: SmallFont(text: 'Football'),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        dateView(),
                        SizedBox(
                          height: 1.h,
                        ),
                        new Divider(
                          color: Colors.grey.withOpacity(.6),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        couponCode(),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        SubHeaderBlack(
                          text: 'Select Payment',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalFont(text: '6x6 Fooball pitch'),
                            NormalBoldFont(text: 'QAR 200')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          height: 2.h,
                        ),
                        // termsAndConditions(),
                        //    terms conditions shows here

                        SizedBox(
                          height: 5.8.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(BookingSuccess());

                              // Get.to(LoginWithOtp());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff088F8F),
                                foregroundColor:
                                    Color(0xff099F9F).withOpacity(.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ) /* add child content here */,
      ),
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

  //CouponCodeView

  Widget couponCode() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            height: 5.h,
            child: TextFormField(
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
                    overflow: TextOverflow.ellipsis),
                hintStyle: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 10.sp,
                  letterSpacing: 0.4,
                  height: .18.h,
                ),
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: InputBorder.none,
                filled: true,
                fillColor: ColorConstants.boxColor,
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

  // paymentView
  Widget selectPayymentView() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 7.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.h, right: 1.h),
                child: Row(
                  children: [
                    Image.asset(
                      'Assets/card.png',
                    ),
                    SizedBox(
                      width: .5.h,
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
              height: 7.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  color: ColorConstants.boxColor),
              child: Padding(
                padding: EdgeInsets.only(left: 1.h, right: 1.h),
                child: Row(
                  children: [
                    Image.asset(
                      'Assets/Wallet1.png',
                    ),
                    SizedBox(
                      width: .5.h,
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
}
