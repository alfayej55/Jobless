
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';

import '../../../utils/app_icons.dart';
import '../../base/custom_text_field.dart';
import '../Widget/friend_request_card.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  TextEditingController _searchCtrl=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Field
            CustomTextField(
                contentPaddingVertical: 15.h,
                hintText: "search",
                prefixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(AppIcons.searchIcon,height: 24.h,width: 24.w,),
                ),
                controller: _searchCtrl),
            SizedBox(height:16.h,),
            Text(AppString.suggestedText,style: AppStyles.h4(family: "Schuyler"),),

            /// Request Cart List
            ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.symmetric(vertical:10.h),
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context,index){
              return   Padding(
                padding: EdgeInsets.symmetric(vertical:10.h),
                child: FriendRequestCard(),
              );
            })




            
          ],
        ),
      ),
    );
  }
}
