import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/bottom_menu..dart';
import '../../base/casess_network_image.dart';
import '../Widget/customListtile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomMenu(3),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 50.h,),

                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                              AppString.profileText,
                              style: AppStyles.h4(color: Colors.white)
                          ),
                        ),
                    SizedBox(height: 10.h,),
                    CustomNetworkImage(
                      imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                      height: 120.h,
                      width: 120.w,
                      border: Border.all(color: Colors.white,width: 3),
                      boxShape: BoxShape.circle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "MD AL-FAYEJ",
                            style: AppStyles.h4(color: Colors.white)
                        ),
                        SizedBox(width: 5,),
                        SvgPicture.asset(AppIcons.tiomarkIcon,color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.starIcon,color: Colors.white,),
                        SizedBox(width: 5.w,),
                        Text(
                            "Full-time student",
                            style: AppStyles.h6(color: Colors.white)
                        ),
                      ],
                    ),
        
                    SizedBox(height: 30.h,)
                  ],
                ),
              ),
            ),
        
        
        
            SizedBox(height: 16.h),
        
            /// Gold package container
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                height:78.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.primaryColor
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 14.w),
                      child: SvgPicture.asset(AppIcons.crownIcon),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "gold package",
                            style: AppStyles.h4(color: Colors.white)
                        ),
                        Text(
                            "annually subscription",
                            style: AppStyles.h6(color: Colors.white)
                        ),
        
                      ],
                    ),
        
                  ],
                ),
              ),
            ),
        
            SizedBox(height: 16.h),
        
            /// inpormation
        
            Customlisttile(
              title:AppString.personalInfoText,
              icon: AppIcons.profileIcon,
              onTap: (){
                Get.toNamed(AppRoutes.personalInfoScreen);
              },
            ),


            SizedBox(height: 16.h),
            Customlisttile(
              title:AppString.myFriendText,
              icon: AppIcons.friendlistIcon,
              onTap: (){},
            ),


            SizedBox(height: 16.h),
            Customlisttile(
              title:AppString.myGroupText,
              icon: AppIcons.menuIcon,
              onTap: (){},
            ),


            SizedBox(height: 16.h),
            Customlisttile(
              title:AppString.settionText,
              icon: AppIcons.settingIcon,
              onTap: (){},
            ),


            SizedBox(height: 16.h),
            Customlisttile(
              title:AppString.logoutText,
              icon: AppIcons.logOutIcon,
              onTap: (){},
            )
        
          ],
        ),
      ),
    );
  }

}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at the top left
    path.moveTo(0, 0);

    // Draw a straight line to the top right corner
    path.lineTo(size.width, 0);

    // Draw a line to the bottom right, leaving space for the curve
    path.lineTo(size.width, size.height.h - 15);

    // Create a curve at the bottom-right corner
    var controlPointRight = Offset(size.width.w / 2, size.height.h + 40.h);
    var endPointRight = Offset(0, size.height.h - 15);
    path.quadraticBezierTo(
        controlPointRight.dx, controlPointRight.dy, endPointRight.dx, endPointRight.dy);

    // Line to the bottom-left corner
    path.lineTo(0, size.height.h - 30);

    // Close the path
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

