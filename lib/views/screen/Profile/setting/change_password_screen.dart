
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../../base/custom_text_field.dart';
class ChangePasswordScreen extends StatelessWidget {
   ChangePasswordScreen({super.key});

  TextEditingController oldpassCtrl=TextEditingController();

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

        title: Text(AppString.changePasswordText,style: AppStyles.h2(
          family: "Schuyler",
        )
        ),
        backgroundColor: Colors.transparent,

      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Old Password
            SizedBox(height: 10.h,),
            Text('Old Password',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h),
            CustomTextField(
                contentPaddingVertical: 12.h,
                hintText: "Enter Password",
               // isPassword: true,
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.passwordIcon),
                ),
                controller: oldpassCtrl),

            /// New Password
            SizedBox(height: 10.h,),
            Text('New Password',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h),
            CustomTextField(
                contentPaddingVertical: 12.h,
                hintText: "Enter Password",
                isPassword: true,
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.passwordIcon),
                ),
                controller: oldpassCtrl),

            SizedBox(height: 10.h,),
            Text('Confirm Password',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h),
            CustomTextField(
                contentPaddingVertical: 12.h,
                hintText: "Enter Password",
                isPassword: true,
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.passwordIcon),
                ),
                controller: oldpassCtrl),

            SizedBox(height: 55.h,),

            /// Button

            CustomButton(onTap: (){}, text:AppString.changePasswordText)

          ],





        ),
      ),
    );


  }
}
