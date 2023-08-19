import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../CustomWidget/CustomFont/BottomBlackFont.dart';

class SportItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color backgroundColor;
  final Function() onTap;

  const SportItemWidget(
      {required this.imagePath,
      required this.title,
      required this.backgroundColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(.9.h),
              color: backgroundColor,
            ),
            child: Container(
              margin: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: .7.h),
          Center(
            child: IconFont(
              text: title,
            ),
          ),
          SizedBox(
            height: .5.h,
          )
        ],
      ),
    );
  }
}
