
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../../base/casess_network_image.dart';
import '../../../base/custom_button.dart';

class InvitingPeopleScreen extends StatelessWidget {
  const InvitingPeopleScreen({super.key});

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
        title: Text('Inviting People',style: AppStyles.h2(
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,insdex){
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.h),
            child: ListTile(

              title: Text("Labu Basar",style: AppStyles.customSize(size:14,fontWeight: FontWeight.w500,family: "Schuyler",),),
              leading: CustomNetworkImage(
                imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                height: 64.h,
                width: 64.w,
                borderRadius: BorderRadius.circular(10.r),
              ),
              trailing: CustomButton(
                  onTap: (){},
                  width:120.w,
                  height:32.h,
                  text: 'Invite'),
            ),
          );
        })
    );
  }
}
