
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_icons.dart';

import '../../../../helpers/route.dart';
import '../../Widget/my_friend_cart.dart';
import '../../Widget/my_group_request_card.dart';

class JoinGroupScreen extends StatelessWidget {
  const JoinGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,insdex){
          return MyGroupRequestCard(
            onTab: (){

              Get.toNamed(AppRoutes.viewGroupScreen);

            },
            buttonTitle: 'Join',
            icon: AppIcons.friendlistIcon,
          );
        });
  }
}
