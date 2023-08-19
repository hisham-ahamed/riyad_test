import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


class DayPassFilter extends StatefulWidget {

  @override
  State<DayPassFilter> createState() => _DayPassFilterState();
}

class _DayPassFilterState extends State<DayPassFilter> {
  List<String> _options = [
    'Ladies only',
    'Top Rated',
    'Recovery',
    'Recovery',
    'Football',
    'Outdoor',
    'Indoor'
  ];

  List<String> _selectedOptions = [];

  List<String> _features = [
    'Free Parking',
    'Restaurent',
    'Washroom',
    'Dugout',
    'Juice Bar',
    'dressing Room'
  ];

  List<String> _selectedFeatures = [];

  List<String> _range = ['to low to High', 'High to Low '];

  List<String> _selectedRange = [];

  List<String> _age = [
    'Under 17',
    'Kid friendly',
    'Women Friendly',
    'Above 18',
    'Family'
  ];

  List<String> _selectedAge = [];

  List<String> _location = [
    'Near me',
    'Near Metro',
    '5km around',
    '10km around',
    'Too far from you'
  ];

  List<String> _selectedLocation = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
        // color: Color.fromRGBO(255, 255, 255, 0.5),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 2.h, right: 1.h,top: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Search filter",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 15.sp,
                        color: Color(0xff06807F),
                        fontWeight: FontWeight.w700,
                      )),
                  InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Padding(
                        padding:EdgeInsets.only(right: 2.h),
                        child: Icon(Icons.close,color: Color(0xff088F8F)),
                      ))

                ],
              ),
            ),
            Wrap(
              children: _options.map((option) {
                return Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 1.5.h),
                  child: Container(
                    height: 4.h,
                    child: RawChip(
                      showCheckmark: false,

                      backgroundColor: Color(0xffF0F0F0),
                      selectedColor: Color(0xffF0F0F0),
                      avatar: _selectedOptions.contains(option)? Icon(Icons.check,color: Color(0xff088F8F)) :null,
                      label: Text(option),

                      side: BorderSide(
                        color: _selectedOptions.contains(option)? Colors.transparent : Colors.transparent,
                        width: 1.0,
                      ),
                      labelStyle: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: _selectedOptions.contains(option)
                            ? Color(0xff088F8F)
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      selected: _selectedOptions.contains(option),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedOptions.add(option);
                          } else {
                            _selectedOptions.remove(option);
                          }
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.h, top: 2.h),
              child: Text("Features",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 15.sp,
                    color: Color(0xff06807F),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Wrap(
              children: _features.map((features) {
                return Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 1.5.h),
                  child: Container(
                    height: 4.h,
                    child: RawChip(
                      showCheckmark: false,
                      backgroundColor: Color(0xffF0F0F0),
                      selectedColor: Color(0xffF0F0F0),
                      label: Text(features),
                      avatar: _selectedFeatures.contains(features)? Icon(Icons.check,color: Color(0xff088F8F)) :null,

                      side: BorderSide(
                        color: _selectedFeatures.contains(features)? Colors.transparent : Colors.transparent,
                        width: 1.0,
                      ),
                      labelStyle: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: _selectedFeatures.contains(features)
                            ? Color(0xff088F8F)
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      selected:
                      _selectedFeatures.contains(features),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedFeatures.add(features);
                          } else {
                            _selectedFeatures.remove(features);
                          }
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.h, top: 2.h),
              child: Text("Price Range",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 15.sp,
                    color: Color(0xff06807F),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Wrap(
              children: _range.map((range) {
                return Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 1.5.h),
                  child: Container(
                    height: 4.h,
                    child: RawChip(
                      showCheckmark: false,
                      backgroundColor:  Color(0xffF0F0F0),
                      selectedColor: Color(0xffF0F0F0),
                      label: Text(range),
                      avatar: _selectedRange.contains(range)? Icon(Icons.check,color: Color(0xff088F8F)) :null,
                      side: BorderSide(
                        color: _selectedRange.contains(range)? Colors.transparent : Colors.transparent,
                        width: 1.0,
                      ),
                      labelStyle: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: _selectedRange.contains(range)
                            ? Color(0xff088F8F)
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      selected: _selectedRange.contains(range),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedRange.add(range);
                          } else {
                            _selectedRange.remove(range);
                          }
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.h, top: 2.h),
              child: Text("Age+",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 15.sp,
                    color: Color(0xff06807F),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Wrap(
              children: _age.map((_age) {
                return Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 1.5.h),
                  child: Container(
                    height: 4.h,
                    child: RawChip(
                      showCheckmark: false,
                      backgroundColor: Color(0xffF0F0F0),
                      selectedColor: Color(0xffF0F0F0),
                      label: Text(_age),
                      avatar: _selectedAge.contains(_age)? Icon(Icons.check,color: Color(0xff088F8F)) :null,
                      side: BorderSide(
                        color: _selectedAge.contains(_age)? Colors.transparent : Colors.transparent,
                        width: 1.0,
                      ),
                      labelStyle: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: _selectedAge.contains(_age)
                            ? Color(0xff088F8F)
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      selected: _selectedAge.contains(_age),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedAge.add(_age);
                          } else {
                            _selectedAge.remove(_age);
                          }
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.h, top: 2.h),
              child: Text("Location",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 15.sp,
                    color: Color(0xff06807F),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Wrap(
              children: _location.map((location) {
                return Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 1.5.h),
                  child: Container(
                    height: 4.h,
                    child: RawChip(
                      showCheckmark: false,
                      backgroundColor: Color(0xffF0F0F0),
                      selectedColor: Color(0xffF0F0F0),
                      label: Text(location),
                      avatar: _selectedLocation.contains(location)? Icon(Icons.check,color: Color(0xff088F8F)) :null,

                      side: BorderSide(
                        color: _selectedLocation.contains(location)
                            ? Colors.transparent
                            : Colors.transparent,
                        width: 1.0,
                      ),
                      labelStyle: GoogleFonts.titilliumWeb(
                        fontSize: 10.sp,
                        color: _selectedLocation.contains(location)
                            ? Color(0xff088F8F)
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      selected:
                      _selectedLocation.contains(location),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedLocation.add(location);
                          } else {
                            _selectedLocation.remove(location);
                          }
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 2.h),
                  child: SizedBox(
                    height: 4.h,
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.to(LoginWithOtp());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                          Color(0x260E9898),
                          foregroundColor:
                          Color(0xff099F9F).withOpacity(.9),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(1.h),
                          )),
                      child: Text(
                        "Reset",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 12.sp,
                          color: Color(0xff088F8F),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 2.h),
                  child: SizedBox(
                    height: 4.h,
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.to(LoginWithOtp());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff088F8F),
                          foregroundColor:
                          Color(0xff099F9F).withOpacity(.9),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(1.h),
                          )),
                      child: Text(
                        "Apply",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
