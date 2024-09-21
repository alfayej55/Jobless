
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/views/screen/Profile/parsonal_info/my_post_screen.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../../base/casess_network_image.dart';
import 'my_bio_screen.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {

  final List<String> tapbarList = [
    AppString.myPostText,
    AppString.myBioText,
    AppString.statusText,

  ];

  var currentIndex=0;
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

        title: Text(AppString.personalInfoText,style: AppStyles.customSize(
          size: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor,
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),


      body: Column(
        children: [

          /// User Profile Section
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNetworkImage(
                    imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                    height: 90.h,
                    width: 90.w,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Labu Basar",
                          style: AppStyles.customSize(
                            size: 14,
                            fontWeight: FontWeight.w500,
                            family: "Schuyler",
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.starIcon),
                            SizedBox(width: 5.w,),
                            Text(
                                "Full-time student",
                                style: AppStyles.h6()
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 17,),

          /// TabBar
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(var index=0;index<tapbarList.length;index++)
                  Padding(
                    padding:  EdgeInsets.only(left: 10.w),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          currentIndex=index;
                        });

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12).r,
                            color:  currentIndex==index? AppColors.primaryColor:Colors.transparent,
                            border: Border.all(color: AppColors.borderColor)
                        ),
                        child: Center(child: Text(tapbarList[index],style:AppStyles.customSize(
                          size: 16,fontWeight:
                        FontWeight.w500,
                          family:'Schuyler',
                          color: currentIndex==index?Colors.white:AppColors.primaryColor,
                        )),),
                      ),
                    ),
                  ),


              ],
            ),
          ),

          /// Body List data

          SizedBox(height: 20.h,),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              child: Builder(
                builder: (context) {
                  switch (currentIndex) {
                    case 0:
                      return MyPostScreen();
                     case 1:
                       return MyBioScreen();
                    // case 2:
                    //   return ActivityAwardScreen();
            
                    default:
                      return SizedBox.shrink(); // You can return an empty widget or handle the default case as needed
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
