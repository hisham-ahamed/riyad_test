import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riyad_test/Recovery/View/RecoverySingleView.dart';
import 'package:sizer/sizer.dart';

import '../../LadiesOnly/View/LadiesOnlySinglePage.dart';

class RecoveryWidget extends StatelessWidget {

  // const ItemsWidgets({Key? key}) : super(key: key);

  final List<Map<String, String>> containerData = [
    {
      'image':
      'https://th.bing.com/th/id/R.7e990cb5e63f47739ec3c98be378347f?rik=kGMBWqFG1KHLGw&pid=ImgRaw&r=0',
      'title': 'Marina Hotel \nLusail',
    },
    {
      'image':
      'https://i.pinimg.com/originals/48/94/c5/4894c5169a018bf9bc3f5e2ead332e8e.jpg',
      'title': 'Marina Hotel \nWastbay',
    },
    {
      'image': 'https://th.bing.com/th/id/R.d3b24ff18c4627bc7222cdd8cbf89e1d?rik=VeROycCTCVhhag&pid=ImgRaw&r=0&sres=1&sresct=1',
      'title': 'Marina Hotel \nKatara',
    },
    {
      'image':
      'https://th.bing.com/th/id/R.7e990cb5e63f47739ec3c98be378347f?rik=kGMBWqFG1KHLGw&pid=ImgRaw&r=0',
      'title': 'Marina Hotel \nLusail',
    },
    {
      'image':
      'https://i.pinimg.com/originals/48/94/c5/4894c5169a018bf9bc3f5e2ead332e8e.jpg',
      'title': 'Marina Hotel \nWastbay',
    },
    {
      'image': 'https://th.bing.com/th/id/R.d3b24ff18c4627bc7222cdd8cbf89e1d?rik=VeROycCTCVhhag&pid=ImgRaw&r=0&sres=1&sresct=1',
      'title': 'Marina Hotel \nKatara',
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
                Get.to(RecoverySingleView());
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
