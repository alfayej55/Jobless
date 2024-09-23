
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/style.dart';
import '../../../base/casess_network_image.dart';
import '../../Widget/post_card.dart';

class ViewGroupScreen extends StatelessWidget {
   ViewGroupScreen({super.key});

  var group=Get.arguments;

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
        backgroundColor: Colors.transparent,

      ),

      body: SingleChildScrollView(
        child: Column(

          children: [
            /// Group Hader
            groupHadder(),
            SizedBox(height: 16.h,),
            /// Search Section
            searchSection(),
            /// post Section
            postCartSection()

          ],
        ),
      ),
    );
  }


  groupHadder(){
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNetworkImage(
            imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
            height: 64.h,
            width: 64.w,
            borderRadius: BorderRadius.circular(10.r),
          ),
          Expanded( // Added Expanded here
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jobless Community",
                          style: AppStyles.customSize(
                            size: 14,
                            fontWeight: FontWeight.w500,
                            family: "Schuyler",
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppIcons.friendlistIcon),
                            SizedBox(width: 5.w),
                            Text(
                              "1k Member",
                              style: AppStyles.h6(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.w),

                  /// Aboute Button

                  CustomButton(
                    height: 30.h,
                    width: 30.w,
                    onTap: () {
                    group=='group'?  Get.toNamed(AppRoutes.myGroupAboutScreen):Get.toNamed(AppRoutes.aboutGroupScreen);
                    },
                    text: AppString.aboutText,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

  searchSection(){
    return
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height:48.h,
              width: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(AppImage.personImage)),
              ),
            ),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.feelpostScreen);
              },
              child: Container(
                height: 46.h,
                width: 240.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23).r,
                    color: Colors.white,
                    boxShadow: [
                      AppStyles.boxShadow
                    ]
                ),
                child: Center(child: Text(AppString.homeSearchText,style: AppStyles.customSize(size:10,fontWeight: FontWeight.w400,family: "Schuyler",color: AppColors.dark2Color),)),
              ),
            ),
            SvgPicture.asset(AppIcons.gelaryIcon,height: 21,width: 23,)
          ],
        ),
      );
  }

  postCartSection(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return  PostCart();
        },
        separatorBuilder: (context,index){
          return Divider(
              color: Color(0xffC4D3F6)
          );
        },
      ),
    );
  }


}
