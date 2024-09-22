
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/route.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../Widget/my_friend_cart.dart';

class SeeAllMember extends StatelessWidget {
  const SeeAllMember({super.key});

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
        title: Text(AppString.memberText,style: AppStyles.h2(
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),

      body: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context,insdex){
            return MyFriendCard(
              onTab: (){

                Get.toNamed(AppRoutes.friendprofileViewcreen);

              },
              buttonTitle: 'View',
              icon: AppIcons.starIcon,
            );
          })
    );
  }
}
