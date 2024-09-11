import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/app_image.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/bottom_menu..dart';
import 'package:jobless/views/screen/Widget/post_card.dart';

import '../../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(0),
      appBar: AppBar(
        leadingWidth: 65,
       leading: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: SvgPicture.asset(AppImage.appIcon,height: 48.h,width: 48.w,),
       ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SvgPicture.asset(AppIcons.searchIcon,height: 36.h,width: 36.w,),
          ),
        ],
        title: Text(AppString.joblessText,style:AppStyles.customSize(size: 16,family: "Schuyler",fontWeight: FontWeight.w500,color: AppColors.primaryColor)),
        backgroundColor: Colors.transparent,
      ),
      body: Scaffold(
        body:SingleChildScrollView(

          child: Column(
            children: [
          
              /// Searech Section
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
                    Container(
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
                    SvgPicture.asset(AppIcons.gelaryIcon,height: 21,width: 23,)
                  ],
                ),
              ),
          
              /// JOb Post Section
          
           Padding(
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
           )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
