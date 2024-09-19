import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/screen/Home/Search/friend_suggested.dart';
import 'package:jobless/views/screen/Home/Search/group_suggested.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../base/custom_text_field.dart';
import '../../Widget/friend_request_card.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController _searchCtrl = TextEditingController();
  final List<String> tabbarList = ["Friends", "Group"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabbarList.length, // Ensuring TabController knows the correct number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              radius: 20,
                backgroundColor: Colors.transparent,
                child: Icon(Icons.arrow_back_ios)),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Search Field
              CustomTextField(
                contentPaddingVertical: 15.h,
                hintText: "search".tr,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(
                    AppIcons.searchIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                controller: _searchCtrl,
              ),
              SizedBox(height: 16.h),

              /// Tab Bar
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
                    FriendSuggested(),
                    GroupSuggested(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
