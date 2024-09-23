

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';
import 'package:jobless/views/base/custom_button.dart';
import 'package:jobless/views/base/custom_outlinebutton.dart';
import 'package:jobless/views/base/custom_text_field.dart';

import '../../../controllers/create_post_controller.dart';
import '../../../utils/app_colors.dart';
import '../../base/casess_network_image.dart';


class FeelingPostScreen extends StatefulWidget {
   FeelingPostScreen({super.key});

  @override
  State<FeelingPostScreen> createState() => _FeelingPostScreenState();
}

class _FeelingPostScreenState extends State<FeelingPostScreen> {

  CreatePostController _createPostCtrl=Get.put(CreatePostController());
  TextEditingController postCtrl=TextEditingController();

  int? _selectedValue;
  String selectPost="";

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
            padding: EdgeInsets.symmetric(horizontal: 24.w),
              height: 38.h,
              width: 85.w,
              onTap: (){}, text: AppString.postText)
        ],
      ),

      body: Column(
        children: [



          SizedBox(height: 20.h,),

         Obx(()=> InkWell(
           onTap: (){
             showImagePickerOption(context);
           },
           child: Padding(
             padding:  EdgeInsets.symmetric(horizontal: 24.w),
             child:_createPostCtrl.imagePath.isNotEmpty? Container(
               height: 200.h,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12.r),
                 color: Color(0xffF9F6F1),
                 border: Border.all(color:AppColors.primaryColor),
                 image: DecorationImage(image: FileImage(
                   File(_createPostCtrl.imagePath.value),
                 ),fit: BoxFit.fill ),
               ),

             ): Container(
               height:54.h,
               width: double.infinity,
               decoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(16.r),
                   border: Border.all(color: AppColors.primaryColor.withOpacity(0.2))

               ),
               child: Center(child: Text('Upload Image',style: AppStyles.h5(color: AppColors.primaryColor),)),
             ),
           ),
         ),),



          SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              controller: postCtrl,
              cursorColor: AppColors.subTextColor,
             // textAlign: TextAlign.center,  // Centers the text and cursor
              decoration: InputDecoration(
                hintText: "What’s happening ?",
                contentPadding: EdgeInsets.zero,
                hintStyle: AppStyles.h6(color: AppColors.subTextColor), // Customize the hint text color
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
                ), // Adjust the prefix constraints to fit properly
                prefixIcon: Padding(
                  padding:  EdgeInsets.only(right: 10),
                  child: CustomNetworkImage(
                    imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                    height: 48.h,
                    width: 48.w,
                    boxShape: BoxShape.circle,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: (){
                    postSelect(context);
                  },
                  child: CircleAvatar(
                    radius: 15,
                                 backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(
                      AppIcons.threeDotIcon,
                      height: 20.h,

                      color: Color(0xffC4D3F6)),
                  ),
                ),
              ),
            )),

        ],
      ),
    );
  }

  /// Post Select

  void postSelect(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.secendryColor,
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Post Public'),
                    titleTextStyle:AppStyles.customSize(
                    size: 16,
                    fontWeight: FontWeight.w500,
                   color: AppColors.textColor,
                    family: "Schuyler",
              ),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedValue,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedValue = value;
                          selectPost= "Post Public";
                          print("Select>>>$selectPost");
                        });

                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Post Private'),
                    titleTextStyle:AppStyles.customSize(
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                      family: "Schuyler",
                    ),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedValue,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedValue = value;
                          selectPost= "Post Private";
                          print("Select>>>$selectPost");
                        });

                      },
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
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
                        _createPostCtrl.pickImageFromCamera(ImageSource.gallery);
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
                        _createPostCtrl.pickImageFromCamera(ImageSource.camera);
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
