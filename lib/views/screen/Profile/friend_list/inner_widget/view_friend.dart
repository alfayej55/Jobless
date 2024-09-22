

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../../../utils/style.dart';
import '../../../../base/casess_network_image.dart';


class FriendRequestViewScreen extends StatelessWidget {
  const FriendRequestViewScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            /// All About

            SizedBox(height: 15.h),
            allAbout()
          ],
        ),
      ),
    );
  }

  /// About Section

  allAbout(){

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// about

          Text(
            AppString.aboutText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:16.h,),
          Text(
              "Will be distracted by the readable content of a page when looking at its layout. Normal distribution of letters, as opposed to using 'Content herewill be distracted by the readable content of a page when looking at its layout. Normal distribution of letters, as opposed to using 'Content here",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Job Experices
          SizedBox(height:24.h,),
          Text(
            AppString.jobexperienceText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:16.h,),
          Text(
              "Will be distracted by the readable content of a page when looking at its layout. Normal distribution of letters, as opposed to using 'Content herewill be distracted by the readable content of a page when looking at its layout. Normal distribution of letters, as opposed to using 'Content here",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Email

          SizedBox(height:24.h,),
          Text(
            AppString.emailText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:5.h,),
          Text(
              "test@gmail.com",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Phone Number
          SizedBox(height:24.h,),
          Text(
            AppString.phoneText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:5.h,),
          Text(
              "0123456789",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Skill

          SizedBox(height:24.h,),
          Text(
            "Skill",
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:5.h,),
          Text(
              "ui/ux design-digital marketing-software design",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Bio
          SizedBox(height:24.h,),
          Text(
            AppString.bioText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:5.h,),
          Text(
              "I am Super Man",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          /// Job less Categotic

          SizedBox(height:24.h,),
          Text(
            AppString.jobLessCategotiText,
            style: AppStyles.customSize(
              size: 16,
              fontWeight: FontWeight.w500,
              family: "Schuyler",
            ),
          ),
          SizedBox(height:5.h,),
          Text(
              "Full.time student - Retired - Just quit",
              style: AppStyles.h5(
                  color: AppColors.subTextColor
              )
          ),

          
          CustomButton(
            padding: EdgeInsets.only(top: 25.h,bottom: 15.h),
              onTap:(){}, text: 'removed user'),
          SizedBox(height: 30.h,),

        ],

      ),
    );
  }
}
