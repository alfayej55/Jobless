

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_outlinebutton.dart';

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
          return  PostCart(
            isthreeDot: true,
            threeDotOnTap: (){
              showBottomSheet(context);
            },
          );
        },
        separatorBuilder: (context,index){
          return Divider(
              color: Color(0xffC4D3F6)
          );
        },
      ),
    );

  }


  showBottomSheet(BuildContext context){
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Text(
                'Delete Post',
                style:AppStyles.h2(),
              ),
              SizedBox(height: 6.0),
              Text(
                'Are you Sure you want to delete the post',
                style:AppStyles.h5(color: AppColors.subTextColor),
              ),
              SizedBox(height: 16.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomOutlineButton(
                    height: 50.h,
                     width: 140.w,
                      color: AppColors.secendryColor,
                      onTap: (){},
                      text: 'Cancel'),
                 // SizedBox(width: 10.w,),
                  CustomButton(
                      height: 50.h,
                      width: 140.w,
                      onTap: (){},
                      text: AppString.yesText)
                ],
              )
            ],
          ),
        );
      },
    );
  }


}
