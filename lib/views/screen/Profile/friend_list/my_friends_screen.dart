

import 'package:flutter/material.dart';
import 'package:jobless/views/screen/Widget/my_friend_cart.dart';

import '../../Widget/friend_accept_card.dart';


class MyFriendScreen extends StatelessWidget {
  const MyFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,insdex){
          return MyFriendCard(
            onTab: (){},
          );
        });
  }
}
