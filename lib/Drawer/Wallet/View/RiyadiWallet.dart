import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';
import '../../../CustomWidget/CustomFont/CustomFont.dart';
import '../../../CustomWidget/CustomFont/NormalFont.dart';

import 'TopUP.dart';
import 'WalletHistory.dart';

class RiyadiWalletView extends StatelessWidget {
  const RiyadiWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                              "Riyadi Wallet",
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
                            width: 7.h,
                            height: 7.h,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "Assets/Icons/walletIcon.png",
                                ),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18.0)),
                              color: Colors.transparent,
                            ),
                          ),
                          NormalFontWhite(
                            text: 'Your wallet amount',
                          ),
                          CustomFontwhite(
                            text: '120 QR',
                          ),
                          SizedBox(
                            height: 1.h,
                          ),

                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // height: 4.h,

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
                          text: 'Top Up',

                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Tab(
                            text: 'Wallet History',
                          ),
                        ),
                    ]),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 70.h,
                child: TabBarView(
                    children: [TopUp(), WalletHistory()]),
              ),
              SizedBox(height: 1.h,)
            ]),


          ),
        ),

    );
  }
}

