
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';

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
        
            Text(AppString.emailText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
              customListTile('test@gmail.com', AppIcons.emailIcon),
            Text(AppString.phoneText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('12345678', AppIcons.phoneIcon),
            Text(AppString.genderText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Male', AppIcons.friendlistIcon),
            Text(AppString.dateOfBirthText,style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('13-11-2015', AppIcons.calenderIcon),
        
            Text('Address',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Dhaka Bangladesh', AppIcons.locationIcon),
        
            Text('Skill',style:AppStyles.h4(family: "Schuyler")),
            SizedBox(height: 10.h,),
            customListTile('Ui/Ux ,Flutter', AppIcons.skillIcon),
        
        
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
