import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/views/base/bottom_menu..dart';

import '../../../utils/app_colors.dart';
import '../../../utils/style.dart';
import 'inner_widget/notification_cart.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(1),
     appBar:  AppBar(
       centerTitle: true,
        title: Text(AppString.notificationText,style: AppStyles.customSize(
          size: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor,
          family: "Schuyler",
        )),
       backgroundColor: Colors.transparent,

      ),

      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView.separated(
          itemCount: 5,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context,index){
          return  NotificationCart();
        },
          separatorBuilder: (context,index){
            return Divider(
              color: AppColors.secendryColor,
            );
          },
        ),
      ),
    );


  }
}
