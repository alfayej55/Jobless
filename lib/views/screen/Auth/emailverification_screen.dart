
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/custom_text_field.dart';
class EmailverificationScreen extends StatelessWidget {
   EmailverificationScreen({super.key});

  TextEditingController emailCtrl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55.h,),
            Text(AppString.forgotPasswordText,style:AppStyles.h1(family: "Schuyler")),
            Text(AppString.subforgotPassword,style:AppStyles.h5()),

            SizedBox(height: 30.h,),
            Text(AppString.emailText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h),
            CustomTextField(
                contentPaddingVertical: 12.h,
                hintText: "Enter Email",
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.emailIcon),
                ),
                controller: emailCtrl),

            /// Sent otp Butoon

            SizedBox(height: 30,),
            CustomButton(onTap: (){
              Get.toNamed(AppRoutes.otpScreen);
            }, text: AppString.sentOtpTExt)

          ],
        ),
      ),
    );
  }
}
