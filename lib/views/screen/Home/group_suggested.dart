import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_string.dart';

import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
import '../../base/custom_button.dart';
import '../../base/custom_outlinebutton.dart';
import '../Widget/friend_request_card.dart';

class GroupSuggested extends StatelessWidget {
  const GroupSuggested({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.symmetric(vertical:10.h),
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CustomNetworkImage(
              imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
              height: 64.h,
              width: 64.w,
              borderRadius: BorderRadius.circular(10.r),
            ),
            title: Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Here are some ideas for creating content about being jobless",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppStyles.customSize(size:12,fontWeight: FontWeight.w400,),),
                SizedBox(height: 10.h,),
                CustomButton(
                    height: 40.h,
                    width: 217.w,
                    textStyle: AppStyles.h4(family: "Schuyler",color: Colors.white),
                    onTap: (){}, text:"Join Group")
              ],
            ),
          );


          // return   Padding(
          //   padding: EdgeInsets.symmetric(vertical:10.h),
          //   child: Container(
          //
          //     child: Row(
          //
          //       children: [
          //         CustomNetworkImage(
          //           imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
          //           height: 64.h,
          //           width: 64.w,
          //           borderRadius: BorderRadius.circular(10.r),
          //         ),
          //         Expanded(
          //           child: Padding(
          //             padding:  EdgeInsets.only(left: 10.w),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
          //                 Text("Here are some ideas for creating content about being jobless",
          //                   overflow: TextOverflow.ellipsis,
          //                   maxLines: 3,
          //                   style: AppStyles.customSize(size:12,fontWeight: FontWeight.w400,),),
          //                 SizedBox(height: 10.h,),
          //                 CustomButton(
          //                   height: 40.h,
          //                     width: 217.w,
          //                     textStyle: AppStyles.h4(family: "Schuyler",color: Colors.white),
          //                     onTap: (){}, text:"Join Group")
          //
          //
          //               ],
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // );
        });
  }
}
