import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/bottom_menu..dart';
import '../../base/casess_network_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomMenu(3),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                          AppString.profileText,
                          style: AppStyles.h4(color: Colors.white)
                      ),
                    ),
                  ],
                ),
                CustomNetworkImage(
                  imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                  height: 120.h,
                  width: 120.w,
                  border: Border.all(color: Colors.white,width: 3),
                  boxShape: BoxShape.circle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "MD AL-FAYEJ",
                        style: AppStyles.h4(color: Colors.white)
                    ),
                    SizedBox(width: 5,),
                    SvgPicture.asset(AppIcons.tiomarkIcon,color: Colors.white,),
                  ],
                ),
                SizedBox(height: 8.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.starIcon,color: Colors.white,),
                    SizedBox(width: 5.w,),
                    Text(
                        "Full-time student",
                        style: AppStyles.h6(color: Colors.white)
                    ),
                  ],
                ),


              ],
            ),
          ),


          SizedBox(height: 16.h),

          /// Gold package container

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              height:78.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primaryColor
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 14.w),
                    child: SvgPicture.asset(AppIcons.crownIcon),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "gold package",
                          style: AppStyles.h4(color: Colors.white)
                      ),
                      Text(
                          "annually subscription",
                          style: AppStyles.h6(color: Colors.white)
                      ),

                    ],
                  ),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }


  customListTile(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor)
      ),
      child: ListTile(

      ),
    );
  }

}
