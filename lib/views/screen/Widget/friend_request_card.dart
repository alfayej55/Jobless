import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobless/views/base/casess_network_image.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_outlinebutton.dart';

import '../../../utils/style.dart';
class FriendRequestCard extends StatelessWidget {
  const FriendRequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        CustomNetworkImage(
            imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
            height: 64.h,
            width: 64.w,
           borderRadius: BorderRadius.circular(10.r),
        ),
          Padding(
            padding:  EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),

                SizedBox(height:16.h,),
                Row(
                  children: [
                    CustomOutlineButton(
                        onTap: (){},
                        width: 110.w,
                        text: 'View Profile',
                      textStyle: AppStyles.h5(),
                    ),
                    SizedBox(width: 10.w,),
                    CustomButton(
                        onTap: (){},
                        width:120.w,
                        text: "Request")
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
