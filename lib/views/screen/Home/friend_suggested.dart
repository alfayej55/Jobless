import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';

import '../Widget/friend_request_card.dart';

class FriendSuggested extends StatelessWidget {
  const FriendSuggested({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.symmetric(vertical:10.h),
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
      return   Padding(
        padding: EdgeInsets.symmetric(vertical:10.h),
        child: FriendRequestCard(
          viewOnTap: (){
            Get.toNamed(AppRoutes.viewFriendScreen);
          },
        ),
      );
    });
  }
}
