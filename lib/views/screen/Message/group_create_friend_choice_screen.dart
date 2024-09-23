

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../helpers/route.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
import '../../base/custom_button.dart';

class GroupCreateFriendChoiceScreen extends StatefulWidget {
  const GroupCreateFriendChoiceScreen({super.key});

  @override
  State<GroupCreateFriendChoiceScreen> createState() => _GroupCreateFriendChoiceScreenState();
}

class _GroupCreateFriendChoiceScreenState extends State<GroupCreateFriendChoiceScreen> {

  List<String> users = [
    "Rocky Parker",
    "Maisy Hupheri",
    "Rocky",
    "Jobless Community",
    "Job Free Community"
  ];
  List<bool> isSelected = List.filled(5, false);
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
        title: Text('Create Group',style: AppStyles.h3(
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),
      body: Column(children: [

        SizedBox(height: 16.0),
        Expanded(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CustomNetworkImage(
                  imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                  height: 54.h,
                  width: 54.w,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                title: Text(users[index]),
                trailing: Radio<bool>(
                  value: true,
                  groupValue: isSelected[index] ? true : false,
                  onChanged: (bool? value) {
                    setState(() {
                      isSelected[index] = ! isSelected[index]; // Toggle selection
                    });
                  },
                ),
              );
            },
          ),
        ),

        Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              padding: EdgeInsets.symmetric(horizontal: 24.h,vertical: 10),
                onTap: (){
              Get.offAllNamed(AppRoutes.messageScreen);
            }, text: 'Create Group Message'))
      ],),
    );
  }
}
