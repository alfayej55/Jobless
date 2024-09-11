
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/style.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_image.dart';

class PostCart extends StatelessWidget {
  const PostCart({super.key});

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
          )

          // Row(
          //   children: [
          //     Container(
          //       height:48.h,
          //       width: 48.w,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         image: DecorationImage(image: AssetImage(AppImage.personImage)),
          //       ),
          //     ),
          //    
          //   ],
          // )
        ],
      ),
    );
  }
}
