import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riyad_test/AppConstants/url-list.dart';
import 'package:sizer/sizer.dart';

import '../../LadiesOnly/View/LadiesOnlySinglePage.dart';

class LadiesOnlyWidget extends StatelessWidget {
  // const ItemsWidgets({Key? key}) : super(key: key);

  final List<Map<String, String>> containerData = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.3LAaqNWusOQqVjyRaaQZ1gAAAA?pid=ImgDet&rs=1',
      'title': 'Fitness Centre\nLusail',
    },
    {
      'image':
          'https://th.bing.com/th/id/R.f540dd471f925aeb7620ee78f07ed474?rik=a227GwZdX%2bgR8g&pid=ImgRaw&r=0',
      'title': 'Zoombashot\nWastbay',
    },
    {
      'image': 'https://i.ytimg.com/vi/g01fXlWMuzg/maxresdefault.jpg',
      'title': 'Wall Climp\nKatara',
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.3LAaqNWusOQqVjyRaaQZ1gAAAA?pid=ImgDet&rs=1',
      'title': 'Fitness Centre\nLusail dskhisjdjsajdk adjkhalas',
    },
    {
      'image':
          'https://th.bing.com/th/id/R.f540dd471f925aeb7620ee78f07ed474?rik=a227GwZdX%2bgR8g&pid=ImgRaw&r=0',
      'title': 'Zoombashot\nWastbay',
    },
    {
      'image': 'https://i.ytimg.com/vi/g01fXlWMuzg/maxresdefault.jpg',
      'title': 'Wall Climp\nKatara',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.3.h,
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: containerData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: InkWell(
              onTap: () {
                Get.to(LadiesOnlySingleList(
                  venueList: kVenueTemp,
                ));
              },
              child: Container(
                width: 28.w,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 26.w,
                      margin: EdgeInsets.all(.6.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(containerData[index]['image']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Color(0xffFFB485),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: Text(
                        containerData[index]['title']!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 7.sp,
                          color: Color(0xff06807F),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
    // return Row(
    //   children: [
    //     Expanded(
    //       flex: 1,
    //       child: Container(
    //         height: 16.h,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(2.h),
    //           color: Colors.white,
    //           border: Border.all(
    //             color: Colors.grey,
    //             style: BorderStyle.solid,
    //             width: .3,
    //           ),
    //         ),
    //           child: Column(
    //             children: [
    //               Container(
    //                 height: 11.h,
    //                 margin: EdgeInsets.all(.6.h),
    //                 decoration: BoxDecoration(
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           "https://th.bing.com/th/id/OIP.3LAaqNWusOQqVjyRaaQZ1gAAAA?pid=ImgDet&rs=1"),
    //                       fit: BoxFit.cover),
    //                   borderRadius:
    //                   BorderRadius.all(Radius.circular(13)),
    //                   color:Color(0xffFFB485),
    //                 ),
    //               ),
    //               Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Padding(
    //                     padding:EdgeInsets.only(left: 1.h),
    //                     child: Text("Fitness Centre \nLusail",style: GoogleFonts.titilliumWeb(
    //                       fontSize: 9.sp,
    //                       color: Color(0xff06807F),
    //                       fontWeight: FontWeight.w700,
    //                       height: .12.h
    //                     ),),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           )
    //
    //       ),
    //     ),
    //     SizedBox(width: .9.h,),
    //     Expanded(
    //       flex: 1,
    //       child: Container(
    //           height: 16.h,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(2.h),
    //             color: Colors.white,
    //             border: Border.all(
    //               color: Colors.grey,
    //               style: BorderStyle.solid,
    //               width: .3,
    //             ),
    //           ),
    //           child: Column(
    //             children: [
    //               Container(
    //                 height: 11.h,
    //                 margin: EdgeInsets.all(.6.h),
    //                 decoration: BoxDecoration(
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           "https://th.bing.com/th/id/R.f540dd471f925aeb7620ee78f07ed474?rik=a227GwZdX%2bgR8g&pid=ImgRaw&r=0"),
    //                       fit: BoxFit.cover),
    //                   borderRadius:
    //                   BorderRadius.all(Radius.circular(13)),
    //                   color:Color(0xffFFB485),
    //                 ),
    //               ),
    //               Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Padding(
    //                     padding:EdgeInsets.only(left: 1.h),
    //                     child: Text("Zoombashot \nWastbay",style: GoogleFonts.titilliumWeb(
    //                         fontSize: 9.sp,
    //                         color: Color(0xff06807F),
    //                         fontWeight: FontWeight.w700,
    //                         height: .12.h
    //                     ),),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           )
    //
    //       ),
    //     ),SizedBox(width: .9.h,),
    //     Expanded(
    //       flex: 1,
    //       child: Container(
    //           height: 16.h,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(2.h),
    //             color: Colors.white,
    //             border: Border.all(
    //               color: Colors.grey,
    //               style: BorderStyle.solid,
    //               width: .3,
    //             ),
    //           ),
    //           child: Column(
    //             children: [
    //               Container(
    //                 height: 11.h,
    //                 margin: EdgeInsets.all(.6.h),
    //                 decoration: BoxDecoration(
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           "https://i.ytimg.com/vi/g01fXlWMuzg/maxresdefault.jpg"),
    //                       fit: BoxFit.cover),
    //                   borderRadius:
    //                   BorderRadius.all(Radius.circular(13)),
    //                   color:Color(0xffFFB485),
    //
    //                 ),
    //               ),
    //               Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Padding(
    //                     padding:EdgeInsets.only(left: 1.h,),
    //                     child: Text("Wall Climp \nKatara",style: GoogleFonts.titilliumWeb(
    //                         fontSize: 9.sp,
    //                         color: Color(0xff06807F),
    //                         fontWeight: FontWeight.w700,
    //                         height: .12.h
    //                     ),),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           )
    //
    //       ),
    //     ),
    //
    //   ],
    // );
  }
}
