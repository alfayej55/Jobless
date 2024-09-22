
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';
import 'package:jobless/utils/app_string.dart';

import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
import '../../base/custom_button.dart';
import '../../base/custom_outlinebutton.dart';

class FriendAcceptCard extends StatelessWidget {
  const FriendAcceptCard({super.key});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 8.h,
      leading:InkWell(
        onTap: (){
          Get.toNamed(AppRoutes.friendprofileViewcreen);
        },
        child: CustomNetworkImage(
          imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
          height: 66.h,
          width: 64.w,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
          Text("10m Ago",style: AppStyles.h6()),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          CustomButton(
              onTap: (){},
              width:120.w,
              height:32.h,
              text: AppString.acceptText),

          CustomOutlineButton(
            onTap: (){},
            width: 110.w,
            height: 30,
            text: AppString.deleteText,
            textStyle: AppStyles.h5(),
          ),

        ],
      ),
    );


    // return Row(
    //   children: [
    //     CustomNetworkImage(
    //       imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
    //       height: 64.h,
    //       width: 64.w,
    //       borderRadius: BorderRadius.circular(10.r),
    //     ),
    //     Padding(
    //       padding:  EdgeInsets.only(left: 10.w),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //        // mainAxisAlignment: MainAxisAlignment.center ,
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
    //               Text("10m Ago",style: AppStyles.h6()),
    //             ],
    //           ),
    //
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //
    //               CustomButton(
    //                   onTap: (){},
    //                   width:120.w,
    //                   height: 20.h,
    //                   text: AppString.acceptText),
    //
    //               SizedBox(width: 10.w,),
    //
    //               CustomOutlineButton(
    //                 onTap: (){},
    //                 width: 110.w,
    //                 height: 20,
    //                 text: AppString.deleteText,
    //                 textStyle: AppStyles.h5(),
    //               ),
    //
    //             ],
    //           )
    //
    //         ],
    //       ),
    //     )
    //   ],
    // );
  }
}
