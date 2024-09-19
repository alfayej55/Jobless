
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/style.dart';
import '../../../base/casess_network_image.dart';

class NotificationCart extends StatelessWidget {
  const NotificationCart({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(vertical:10.h),
      child: Container(

        child: Row(
          children: [
            CustomNetworkImage(
              imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
              height: 64.h,
              width: 64.w,
              borderRadius: BorderRadius.circular(10.r),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
                        Text("10m Ago",style: AppStyles.h6()),

                      ],
                    ),
                    Text("Here are some ideas for creating content about being jobless",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: AppStyles.h6()),
                    SizedBox(height: 10.h,),



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
