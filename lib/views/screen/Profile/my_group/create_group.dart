import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../controllers/create_group_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/style.dart';
import '../../../base/image_dialog.dart';

class CreateGroupScreen extends StatelessWidget {
   CreateGroupScreen({super.key});

  CreateGroupController _createGroupCtrl=Get.put(CreateGroupController());

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
        title: Text('Create Group',style: AppStyles.h2(
          family: "Schuyler",
        )),
        backgroundColor: Colors.transparent,

      ),

      body: Column(
        children: [
          /// Upload Picture
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    ShowImagePickerRegister().showImagePickerOption(context);
                  },
                  child:_createGroupCtrl.imagePath.isNotEmpty? Container(
                    height: 120.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffF9F6F1),
                      border: Border.all(color:AppColors.primaryColor),
                      image: DecorationImage(image: FileImage(
                        File(_createGroupCtrl.imagePath.value),
                      ),fit: BoxFit.cover ),
                    ),

                  ):
                  Container(
                    height: 120.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffF9F6F1),
                      border: Border.all(color:AppColors.primaryColor),
                    ),
                    child: Center(child: SvgPicture.asset(AppIcons.cameraIcon,height: 48.h,width: 48.w,)),
                  ),
                ),

                SizedBox(height: 10.h,),
                Text(AppString.uploadProfilePictureText,style:AppStyles.h5()),
              ],
            ),
          ),
        ],
      ),
    );
  }
   showImagePickerOption(BuildContext context) {
     showModalBottomSheet(
       // backgroundColor: AppColors.AppBgColor,
         context: context,
         builder: (builder) {
           return Padding(
             padding: const EdgeInsets.all(18.0),
             child: SizedBox(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height / 4.2,
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Expanded(
                     child: InkWell(
                       onTap: () {
                         _createGroupCtrl.pickImageFromCamera(ImageSource.gallery);
                       },
                       child: SizedBox(
                         child: Column(
                           children: [
                             Icon(
                               Icons.image,
                               size: 50.w,
                               color: AppColors.primaryColor,
                             ),
                             Text('Gallery')
                           ],
                         ),
                       ),
                     ),
                   ),
                   Expanded(
                     child: InkWell(
                       onTap: () {
                         _createGroupCtrl.pickImageFromCamera(ImageSource.camera);
                       },
                       child: SizedBox(
                         child: Column(
                           children: [
                             Icon(
                               Icons.camera_alt,
                               size: 50.w,
                               color: AppColors.primaryColor,
                             ),
                             Text('Camera')
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           );
         });
   }
}
