
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

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
        title: Text('Subscription',style: AppStyles.h2(
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(

          children: [

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30).r,
                color: AppColors.secendryColor

              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.crownIcon),

                    Text('Gold Package',style: AppStyles.h2(
                      family: "Schuyler",
                    )),
                    Divider(color: AppColors.dark2Color.withOpacity(0.2),),

                    Row(
                      children: [
                        Text('\$69.99',style: AppStyles.h2(
                          family: "Schuyler",
                        )),
                        Text('/ Monthly',style: AppStyles.h5(
                          family: "Schuyler",
                        )),
                      ],
                    )


                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30).r,
                  color: AppColors.secendryColor

              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.crownIcon),

                    Text('Gold Package',style: AppStyles.h2(
                      family: "Schuyler",
                    )),
                    Divider(color: AppColors.dark2Color.withOpacity(0.2),),

                    Row(
                      children: [
                        Text('\$100.99',style: AppStyles.h2(
                          family: "Schuyler",
                        )),
                        Text('/ Annually ',style: AppStyles.h5(
                          family: "Schuyler",
                        )),
                      ],
                    )


                  ],
                ),
              ),
            ),

            /// Payment Button

            SizedBox(height: 30.h,),
            CustomButton(onTap: (){}, text: 'Pay Naw')


          ],
        ),
      ),
    );
  }
}
