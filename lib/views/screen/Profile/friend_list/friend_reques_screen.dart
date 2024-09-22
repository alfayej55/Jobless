
import 'package:flutter/material.dart';

import '../../Widget/friend_accept_card.dart';


class FriendRequesScreen extends StatelessWidget {
  const FriendRequesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,insdex){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: FriendAcceptCard(),
        );
    });
  }
}
