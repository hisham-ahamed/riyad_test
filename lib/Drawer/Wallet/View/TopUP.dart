import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ColorConstants.dart';
import '../../../CustomWidget/CustomFont/CustomFont.dart';
import '../../../CustomWidget/CustomFont/SubHeaderBlack.dart';

class TopUp extends StatefulWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  int _amountIndex = -1;

  final List<String> _amountCategories = [
    '100 QR',
    '200 QR',
    '500 QR',
    '1000 QR',
    '2000 QR',
    '5000 QR',
  ];
  final TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h, right: 3.h,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Align(
                      alignment: Alignment.topLeft,
                      child: const CustomFontBlack(
                        text: 'Top Up Your Wallet',
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 6.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(.7.h),
                        color: Color(0xffE8E8E8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h, top: .5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text("Enter Amount",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 9.sp,
                                    color: Color(0xff808285),
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(top: .5.h),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(.7.h),
                                    color: Color(0xffE8E8E8),
                                  ),
                                  child: TextFormField(
                                    controller: _amountController,
                                    // readOnly: true,
                                    style: GoogleFonts.titilliumWeb(
                                      // fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    // controller: controller,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: _buildAmount(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 6.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstants.buttonColor,
                            foregroundColor: ColorConstants.appBackColorWhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.h),
                            )),
                        child: SubHeaderWhite(
                          text: 'Proceed',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  List<Widget> _buildAmount() {
    return List<Widget>.generate(
      _amountCategories.length,
          (index) => Container(
        height: 4.h,
        child: RawChip(
          showCheckmark: false,
          backgroundColor: Color(0xffF0F0F0),
          selectedColor: Color(0xffF0F0F0),
          side: BorderSide(
            color:
            _amountIndex == index ? Color(0xff088F8F) : Colors.transparent,
            width: 1.0,
          ),
          labelStyle: GoogleFonts.titilliumWeb(
            fontSize: 12.sp,
            color: _amountIndex == index ? Color(0xff088F8F) : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          label: Text(_amountCategories[index]),
          selected: _amountIndex == index,
          onSelected: (selected) {
            setState(() {
              _amountIndex = selected ? index : -1;
              if (_amountIndex != -1) {
                _amountController.text = _amountCategories[_amountIndex];
              }
            });
          },
        ),
      ),
    ).toList();
  }
  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }
}

