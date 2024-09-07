import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobless/utils/app_image.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_gradientcolor.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:CustomGradientcolor(
        chiled: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
               Align(
                 alignment: Alignment.centerRight,
                 child: Padding(
                   padding:  EdgeInsets.only(top: 51.h),
                   child: Text(AppString.skipText,
                    style: AppStyles.customSize(size: 20,fontWeight: FontWeight.w500,underline: TextDecoration.underline)),
                 ),
               ),
              SizedBox(height: 30.h,),
              SvgPicture.asset(AppImage.onbordingImage1),
              SizedBox(height:32.h),
              Text(AppString.onboardingText,style: AppStyles.h1(fontWeight: FontWeight.w500,family: "Schuyler")),
              Text(AppString.subonboardingText,textAlign: TextAlign.center,),


              SizedBox(height: 88.h,),
              CustomButton(
                 width: 165.w,
                  onTap: (){},
                  text: AppString.loginText)


            ],
          ),
        )
      ),
    );

  }
}
