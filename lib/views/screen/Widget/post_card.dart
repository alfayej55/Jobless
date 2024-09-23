
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_constants.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/casess_network_image.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_image.dart';

class PostCart extends StatelessWidget {
  
  bool isthreeDot;
   Function()? threeDotOnTap;
   PostCart({super.key,this.isthreeDot=false,this.threeDotOnTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [

          /// Profile Picture
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading:  Container(
              height:48.h,
              width: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(AppImage.personImage)),
              ),
            ),
            title: Row(
              children: [
                Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
              SizedBox(width:5.w,),
                SvgPicture.asset(AppIcons.tiomarkIcon)
              ],
            ),
            subtitle: Row(

              children: [

                Text("1h. ",style: AppStyles.h6(color: AppColors.subTextColor),),
                Text("Dhaka Bangladesh",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.h6(color: AppColors.subTextColor),),

              ],
            ),
            trailing: isthreeDot ? InkWell(
              onTap: threeDotOnTap,
              child: CircleAvatar(
                radius: 18,
                  backgroundColor: Colors.transparent,
                  child: SvgPicture.asset(AppIcons.threeDotIcon)),
            ):SizedBox(),
          ),

          /// Post Image and post Text Section
          Column(
            children: [
              Text("A car wash is a facility or location where vehicles are cleaned and maintained, There are various types of car washes, each offering different levels of service and automation",
                overflow: TextOverflow.ellipsis,
                maxLines: 26,
                textAlign:TextAlign.justify,
                style: AppStyles.h5(color: AppColors.subTextColor),),
              SizedBox(height: 10.h),
              CustomNetworkImage(imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                  height: 180.h,
                  width: double.infinity,
                borderRadius: BorderRadius.circular(15.r),
              )

            ],
          ),

          /// Like and comment icon
          SizedBox(height:18.h,),
          Row(
            children: [
              SvgPicture.asset(AppIcons.likeIcon),
              SizedBox(width: 24.w,),
              SvgPicture.asset(AppIcons.massageIcon,color: AppColors.subTextColor,height: 18.h,width: 22.w,),
              SizedBox(width: 24.w,),
              Row(
                children: [
                  Text("2",style: AppStyles.h4(color: AppColors.primaryColor)),
                  SvgPicture.asset(AppIcons.rewordIcon),
                ],
              ),

            ],
          ),
          SizedBox(height:18.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 9,
                      backgroundColor: AppColors.primaryColor,
                      child: Center(child: SvgPicture.asset(AppIcons.likeIcon,height:8,color: Colors.white,))),
                  SizedBox(width: 5,),
                  Text("Liked arif and 155 others",style: AppStyles.customSize(size: 10,fontWeight: FontWeight.w400),)
                ],
              ),
              Row(
                children: [
                  Text("2",style:AppStyles.customSize(size: 10,fontWeight: FontWeight.w400)),
                  SizedBox(width: 5.h,),
                  Text("Comment",style:AppStyles.customSize(size: 10,fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          SizedBox(height:10.h,),

        ],
      ),
    );
  }
}
