

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widget/post_card.dart';
class MyPostScreen extends StatelessWidget {
  const MyPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return  PostCart();
        },
        separatorBuilder: (context,index){
          return Divider(
              color: Color(0xffC4D3F6)
          );
        },
      ),
    );

  }
}
