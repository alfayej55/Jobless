
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
class FriendListScreen extends StatefulWidget {
  const FriendListScreen({super.key});

  @override
  State<FriendListScreen> createState() => _FriendListScreenState();
}

class _FriendListScreenState extends State<FriendListScreen> {

  final List<String> tabbarList = ["Friend request", "My Friends"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabbarList.length,
      child: Scaffold(

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

          title: Text(AppString.friendListText,style: AppStyles.h2(
            family: "Schuyler",
          )),
          backgroundColor: Colors.transparent,

        ),
        body:Column(
          children: [
            TabBar(
              indicatorColor: AppColors.primaryColor,
              dividerColor: Colors.transparent,
              padding: EdgeInsets.zero,
              labelStyle: AppStyles.customSize(
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
              unselectedLabelStyle: AppStyles.customSize(
                size: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.subTextColor,
              ),
              tabs: [
                for (String tab in tabbarList) Tab(text: tab.tr),
              ],
            ),

            /// Tab Bar View
            Expanded(
              child: TabBarView(
                children: [

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
