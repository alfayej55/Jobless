

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_text_field.dart';

import '../../../utils/app_colors.dart';
class FeelingPostScreen extends StatelessWidget {
   FeelingPostScreen({super.key});

  TextEditingController postCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.textColor,
              )),
        ),
        actions: [
          CustomButton(
            padding: EdgeInsets.symmetric(horizontal: 24),
              height: 48.h,
              width: 107.w,
              onTap: (){}, text: AppString.postText)
        ],
      ),

      body: Column(
        children: [

          SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              controller: postCtrl,
              cursorColor: AppColors.subTextColor,
              decoration: InputDecoration(
                hintText: "What’s happening?",
                contentPadding: EdgeInsets.zero,
                hintStyle: AppStyles.h6(color: AppColors.subTextColor),// Customize the hint text color
                fillColor: Colors.transparent,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, // Transparent border
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent), // Transparent when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent), // Transparent when focused
                ),
              ),
            ),

          )
        ],
      ),
    );
  }
}
