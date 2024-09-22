import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
class MyGroupRequestCard extends StatelessWidget {
  final Function() onTab;
  String? buttonTitle;
  String? icon;
  MyGroupRequestCard({super.key,required this.onTab,this.buttonTitle,this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 24.h),
      minVerticalPadding: 8.0.h,
      minLeadingWidth: 0,
      leading: CustomNetworkImage(
        imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
        height: 70.h,
        width: 64.w,
        borderRadius: BorderRadius.circular(10.r),
      ),
      title: Text("Job Community",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(icon ??AppIcons.starIcon),
              SizedBox(width: 5,),
              Text('Public',style: AppStyles.h6(color: AppColors.subTextColor)),
            ],
          ),
          CustomButton(
              width: 76.w,
              height: 30.h,
              onTap: onTab, text: buttonTitle ??'View')
        ],
      ),
    );
  }
}
