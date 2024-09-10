import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/app_image.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController emailCtrl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text(AppString.loginText,style:AppStyles.h1()),
            Text(AppString.subLoginText,style:AppStyles.h5()),

            SizedBox(height: 30.h),

            Text(AppString.emailText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h),
            CustomTextField(
                isEmail: true,
                contentPaddingVertical: 15.h,
                hintText: "Enter Email",
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.emailIcon),
                ),

                controller: emailCtrl),

            SizedBox(height: 16.h),
            Text(AppString.passawordText,style:AppStyles.h4(family: "Schuyler")),

            SizedBox(height: 10.h),

            CustomTextField(
                isEmail: true,
                contentPaddingVertical: 15.h,
                hintText: "Enter Password",
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.passwordIcon),
                ),

                controller: emailCtrl),

            CustomButton(onTap: (){}, text: AppString.loginText)

          ],
        ),
      ),
    );
  }
}
