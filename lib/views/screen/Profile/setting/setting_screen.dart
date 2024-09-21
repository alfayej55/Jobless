
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../Widget/customListtile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        leading: InkWell(

          onTap: (){

            Get.back();

          },
          child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Icon(Icons.arrow_back_ios,size: 18,color: AppColors.textColor,)),
        ),

        title: Text(AppString.settionText,style: AppStyles.customSize(
          size: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor,
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),

      body: Column(
        children: [
          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.changePasswordText,
            icon: AppIcons.passwordIcon,
            onTap: (){},
          ),

          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.privacyText,
            icon: AppIcons.privaciIcon,
            onTap: (){

            },
          ),
          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.termConditionText,
            icon: AppIcons.termIcon,
            onTap: (){

            },
          ),
          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.aboutusText,
            icon: AppIcons.aboutIcon,
            onTap: (){

            },
          ),

          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.supportText,
            icon: AppIcons.supportIcon,
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}
