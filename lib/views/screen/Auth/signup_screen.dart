

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../controllers/auth_controller/signup_controller.dart';
import '../../../helpers/route.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/custom_text_field.dart';
import '../../base/image_dialog.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameCtlr=TextEditingController();

  SignupController _signUpCtrl=Get.put(SignupController());

  String? _gender;
  bool isChecked = false;
  List genderList=['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w ),
        child: Obx(()=>SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 55.h,),
              Text(AppString.creareAccountText,style:AppStyles.h1()),
              Text(AppString.subCreateText,style:AppStyles.h5()),


              SizedBox(height: 20,),

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
                      child:_signUpCtrl.imagePath.isNotEmpty? Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xffF9F6F1),
                          border: Border.all(color:AppColors.primaryColor),
                          image: DecorationImage(image: FileImage(
                            File(_signUpCtrl.imagePath.value),
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

              /// TextField Section
              Text(AppString.nameText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h),
              CustomTextField(
                  contentPaddingVertical: 12.h,
                  hintText: "Enter Name",
                  prefixIcon: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: SvgPicture.asset(AppIcons.profileIcon),
                  ),
                  controller: nameCtlr),

              /// Email
              SizedBox(height: 10.h,),
              Text(AppString.emailText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h),
              CustomTextField(
                  contentPaddingVertical: 12.h,
                  hintText: "Enter Email",
                  prefixIcon: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: SvgPicture.asset(AppIcons.emailIcon),
                  ),
                  controller: nameCtlr),

              /// Phone Number
              SizedBox(height: 10.h),
              Text(AppString.phoneText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h,),
              IntlPhoneField(
                decoration: InputDecoration(
                    hintText: "Phone Nomber",
                    contentPadding:EdgeInsets.symmetric(horizontal: 15.h)
                ),
                showCountryFlag: true,
                initialCountryCode: 'US',
                flagsButtonMargin: EdgeInsets.only(left: 10),
                disableLengthCheck: true,
                dropdownIconPosition: IconPosition.trailing,// Default country code
                onChanged: (phone) {
                  print("Phpone>>>${phone.completeNumber}"); // Gets the complete phone number including the country code
                },
              ),

              /// Select Gender
              SizedBox(height: 10.h),
              Text(AppString.genderText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h,),
              DropdownButtonFormField<String>(
                value: _gender,
                padding: EdgeInsets.zero,
                hint: Text("Select Gender"),
                decoration: InputDecoration(
                ),
                items: genderList
                    .map((gender) => DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                ))
                    .toList(),
                onChanged: (newValue) {
                  setState(() {
                    _gender = newValue;
                  });
                },
              ),

              /// Select Dath
              SizedBox(height: 10.h),
              Text(AppString.dateOfBirthText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h,),
              Obx(()=> GestureDetector(
                onTap: ()async{
                  _signUpCtrl.selectDate(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Get.theme.primaryColor.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColors.fillColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _signUpCtrl.selectedDate != null
                              ? _signUpCtrl.selectedDate.value
                              : 'Select your Date of Birth',
                          // age(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal)
                        ),
                        SvgPicture.asset(AppIcons.calenderIcon)
                      ],
                    ),
                  ),
                ),
              )),

              SizedBox(height: 10.h,),
              Text(AppString.passawordText,style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h),
              CustomTextField(
                  contentPaddingVertical: 12.h,
                  hintText: "Password",
                  isPassword: true,
                  prefixIcon: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: SvgPicture.asset(AppIcons.passwordIcon),
                  ),
                  controller: nameCtlr),

              SizedBox(height: 10.h,),
              Text("Confirm Password",style:AppStyles.h4(family: "Schuyler")),
              SizedBox(height: 10.h),
              CustomTextField(
                  contentPaddingVertical: 12.h,
                  hintText: "Confirm Password",
                  isPassword: true,
                  prefixIcon: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: SvgPicture.asset(AppIcons.passwordIcon),
                  ),
                  controller: nameCtlr),

              SizedBox(height: 16.h),
              /// Condition Check Box
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,

                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(AppString.signUoConditionText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.h6(),),
                  ),

                ],
              ),

              SizedBox(height: 10.h),
              CustomButton(
                  color: isChecked ?AppColors.primaryColor:AppColors.dividerColor,
                  onTap: (){}, text: AppString.signuoText),

              SizedBox(height: 10.h,),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.loginScreen);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",style: AppStyles.customSize(size: 14,family: "Schuyler",fontWeight: FontWeight.w500,color: AppColors.subTextColor)),
                    Text("Login",style: AppStyles.customSize(size: 15,family: "Schuyler",fontWeight: FontWeight.w500,color: AppColors.textColor)),
                  ],
                ),
              ),

              SizedBox(height: 25.h,),

            ],
          ),
        )),

      ),
    );
  }
}
