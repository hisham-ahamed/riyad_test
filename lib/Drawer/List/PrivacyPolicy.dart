import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../AppConstants/ColorConstants.dart';
import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../CustomWidget/CustomFont/SubHeaderFont.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
            "Privacy Policy",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubHeaderFont(
                          text: 'Far far away, behind the word mountains',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BottomBlackFont(
                            text:
                            'Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.')
                        ,SizedBox(
                          height: 2.h,
                        ),
                        const SubHeaderFont(
                          text: 'The Big Oxmox advised',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BottomBlackFont(
                            text:
                            'Her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but th'
                                'e Little Blind Text didn’t listen. She packed her seven versalia, put her initia'
                                'l into the belt and made herself on the way. When she reached the first hil'
                                'ls of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove'
                                ', the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric'
                                ' question ran over her cheek, then she continued her way. On her way she met a copy.'),
                        SizedBox(
                          height: 1.h,
                        ),
                        BottomBlackFont(
                            text:
                            'Her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but th'
                                'e Little Blind Text didn’t listen. She packed her seven versalia, put her initia'
                                'l into the belt and made herself on the way. When she reached the first hil'
                                'ls of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove'
                                ', the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric'
                                ' question ran over her cheek, then she continued her way. On her way she met a copy.')


                      ],
                    ),
                  ),

                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),

    );
  }
}
