import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';

import '../../../../utils/style.dart';
import '../../../base/casess_network_image.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_outlinebutton.dart';

class ViewFriendScreen extends StatelessWidget {
  const ViewFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.textColor,
              )),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomNetworkImage(
                    imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                    height: 64.h,
                    width: 64.w,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Labu Basar",
                          style: AppStyles.customSize(
                            size: 14,
                            fontWeight: FontWeight.w500,
                            family: "Schuyler",
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.locationIcon),
                            SizedBox(width: 5.w,),
                            Text(
                              "Stockton, New Hampshire",
                              style: AppStyles.h6()
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.starIcon),
                            SizedBox(width: 5.w,),
                            Text(
                                "Full-time student",
                                style: AppStyles.h6()
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          children: [
                            CustomButton(
                                onTap: () {},
                                width: 120.w,
                                height: 35.h,
                                text: "Request"),

                            CustomOutlineButton(
                              onTap: () {},
                              width: 110.w,
                              height: 30,
                              text: 'Message',
                              textStyle: AppStyles.h5(),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
