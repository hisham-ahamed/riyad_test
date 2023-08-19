import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyad_test/AppConstants/ColorConstants.dart';
import 'package:riyad_test/CustomWidget/CustomFont/SmallFont.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomFont/BottomFont.dart';
import '../../CustomWidget/CustomFont/CustomFont.dart';
import '../../CustomWidget/CustomFont/NormalBoldFont.dart';
import '../../CustomWidget/CustomFont/NormalFont.dart';

class ProductSingleView extends StatelessWidget {
  const ProductSingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        padding: EdgeInsets.only(right: 7.h),
                        child: Center(
                          child: Text(
                            "Riyadi Points",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 10.h,
                          height: 10.h,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "Assets/Icons/points.png",
                              ),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.transparent,
                          ),
                        ),
                        NormalFontWhite(
                          text: 'Your Riyadi Points',
                        ),
                        CustomFontwhite(
                          text: '120 RP',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.h),
                                color: const Color(0xff035B59),
                              ),

                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: .5.h,
                                    right: .5.h,
                                    top: .2.h,
                                    bottom: .2.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Image.asset("Assets/image 72.png"),
                                    Icon(
                                      Icons.swap_vert,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: .4.h),
                                        child: NormalFontWhite(
                                          text: 'Convert your RP to Wallet',
                                        )),
                                  ],
                                ),
                              ),
                              //   fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        NormalFontWhite(text:'10RP=1QR')
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h, top: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 1.h),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: const CustomFont(
                        text: 'Radeem your Riyadi Points!',
                      ),
                    ),
                  ),
                  _buildItemsWidgets()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemsWidgets() {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.53,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Padding(
            padding: EdgeInsets.only(left: 1.h, bottom: 3.h),
            child: Container(
                height: 16.5.h,
                // width: 5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.9.h),
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: .3,
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(.5.h),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: .3,
                          ),
                          color: Color(0xffEFEFEF),
                        ),
                        child: Container(
                          height: 9.h,
                          margin: EdgeInsets.all(2.h),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("Assets/foot.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NormalFontAppbackColor(text: 'Football'),
                          Row(
                            children: [
                              NormalBoldFont(text:'100'),
                              SizedBox(
                                  height: 2.5.h,
                                  child: Image.asset('Assets/Icons/Rpoints.png',)),

                            ],
                          ),


                        ],
                      ),
                      SmallBlackColor(text: 'Sed ut perspiciatis unde omnis iste natus '),
                      SizedBox(height: .3.h,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConstants.appThemeColorGreen,
                            borderRadius: BorderRadius.circular(.7.h),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: .2.h,bottom: .2.h,left: .6.h,right: .6.h),
                            child: BottomFont(text:'Radeem'),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
      ],
    );
  }
}
