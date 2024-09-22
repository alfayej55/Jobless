
import 'package:flutter/material.dart';
import 'package:jobless/utils/app_icons.dart';

import '../../Widget/my_friend_cart.dart';

class JoinGroupScreen extends StatelessWidget {
  const JoinGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,insdex){
          return MyFriendCard(
            onTab: (){

              //Get.toNamed(AppRoutes.friendRequestViewcreen);
            },
            buttonTitle: 'Join',
            icon: AppIcons.friendlistIcon,
          );
        });
  }
}
