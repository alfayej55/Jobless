
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';

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

        title: Text(AppString.settionText,style: AppStyles.h2(
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
            onTap: (){
              Get.toNamed(AppRoutes.passwordChangeScreen);
            },
          ),

          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.privacyText,
            icon: AppIcons.privaciIcon,
            onTap: (){
              Get.toNamed(AppRoutes.privacyScreen);
            },
          ),
          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.termConditionText,
            icon: AppIcons.termIcon,
            onTap: (){
              Get.toNamed(AppRoutes.termsScreen);
            },
          ),
          SizedBox(height: 16.h),
          Customlisttile(
            title:AppString.aboutusText,
            icon: AppIcons.aboutIcon,
            onTap: (){
              Get.toNamed(AppRoutes.aboutsScreen);
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
