
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';

class MyBioScreen extends StatelessWidget {
  const MyBioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
        
            Text('Full Name',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Basar Islam', AppIcons.profileIcon),
            SizedBox(height: 10.h),
            Text(AppString.emailText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
              customListTile('test@gmail.com', AppIcons.emailIcon),
            SizedBox(height: 10.h),
            Text(AppString.phoneText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('12345678', AppIcons.phoneIcon),
            SizedBox(height: 10.h),
            Text(AppString.genderText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Male', AppIcons.friendlistIcon),
            SizedBox(height: 10.h),
            Text(AppString.dateOfBirthText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('13-11-2015', AppIcons.calenderIcon),

            SizedBox(height: 10.h),
            Text('Address',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Dhaka Bangladesh', AppIcons.locationIcon),
            SizedBox(height: 10.h),
            Text('Skill',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Ui/Ux ,Flutter', AppIcons.skillIcon),
            SizedBox(height: 10.h),

            /// Bio
            Text('Bio',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
           Container(
          height:146.h,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor,width: 1),
              color: AppColors.fillColor,
              borderRadius: BorderRadius.circular(16).r
          ),
          child:  Padding(
            padding:  EdgeInsets.only(left: 10.w,top: 10.h),
            child: Text('I am Super Man',style:AppStyles.h5(family: "Schuyler")),
          ),
        ),
/// job experience
            SizedBox(height: 10.h),
            Text('job experience',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            Container(
              height:146.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor,width: 1),
                  color: AppColors.fillColor,
                  borderRadius: BorderRadius.circular(16).r
              ),
              child:  Padding(
                padding:  EdgeInsets.only(left: 10.w,top: 10.h),
                child: Text('I am Super Man',style:AppStyles.h5(family: "Schuyler")),
              ),
            ),

            /// Update Button

            CustomButton(
              padding: EdgeInsets.only(top: 25.h,bottom: 10.h),
                onTap: (){}, text: 'Edit Profile')
        
        
          ],
        ),
      ),
    );
  }

   customListTile(
       String title,String icon
       ){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor,width: 1),
          color: AppColors.fillColor,
          borderRadius: BorderRadius.circular(16).r
      ),
      child: ListTile(

        leading: SvgPicture.asset(icon),
        title:Text(title,style:  AppStyles.customSize(
          size: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.subTextColor,
          family: "Schuyler",
        )),
      ),
    );

   }
}
