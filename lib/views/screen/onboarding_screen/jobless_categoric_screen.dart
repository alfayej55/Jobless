import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../helpers/route.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/custom_gradientcolor.dart';


class JoblessCategoricScreen extends StatefulWidget {
  const JoblessCategoricScreen({super.key});

  @override
  State<JoblessCategoricScreen> createState() => _JoblessCategoricScreenState();
}

class _JoblessCategoricScreenState extends State<JoblessCategoricScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomGradientcolor(
          chiled: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.jobConfirmScreen);
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 51.h),
                      child: Text(AppString.skipText,
                          style: AppStyles.customSize(size: 20,fontWeight: FontWeight.w500,underline: TextDecoration.underline)),
                    ),
                  ),
                ),

                SizedBox(height: 30.h,),
                SizedBox(height:32.h),
                Text(AppString.choceCategoriText,style: AppStyles.h1(fontWeight: FontWeight.w500,family: "Schuyler")),
                SizedBox(height:20.h,),
                Text(AppString.moreCategoryText,textAlign: TextAlign.center,),
                SizedBox(height: 88.h,),



              ],
            ),
          )
      ),
    );
  }
}
