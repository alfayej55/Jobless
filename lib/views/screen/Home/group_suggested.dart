import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/friend_request_card.dart';

class GroupSuggested extends StatelessWidget {
  const GroupSuggested({super.key});

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
            child: FriendRequestCard(),
          );
        });
  }
}
