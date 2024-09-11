import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobless/utils/app_image.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/bottom_menu..dart';

import '../../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(0),
      appBar: AppBar(
       leading: Padding(
         padding: const EdgeInsets.only(left: 5),
         child: SvgPicture.asset(AppImage.appIcon,height: 48.h,width: 48.w,),
       ),
        title: Text(AppString.joblessText,style:AppStyles.customSize(size: 16,family: "Schuyler",fontWeight: FontWeight.w500,color: AppColors.primaryColor)),


        backgroundColor: Colors.transparent,
      ),
      body: Scaffold(
        
      ),
    );
  }
}
