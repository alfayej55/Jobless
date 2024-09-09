import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:jobless/controllers/onboarding_controller.dart';
import 'package:jobless/utils/app_colors.dart';
import 'package:jobless/views/base/custom_button.dart';

import '../../../helpers/route.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
import '../../base/custom_gradientcolor.dart';



class JoblessCategoricScreen extends StatefulWidget {
  const JoblessCategoricScreen({super.key});

  @override
  State<JoblessCategoricScreen> createState() => _JoblessCategoricScreenState();
}

class _JoblessCategoricScreenState extends State<JoblessCategoricScreen> {

  ChoseCategoriController _categoriCtrl= Get.put(ChoseCategoriController());

 final List categori= [
    'Laid off',
    'Just quit',
    'Actively looking for jobs',
    'Taking an unlimited break',
    'Full-time student',
    'Full-time parent',
    'Studying for graduate school',
    'Fighting against illness',
    'Others (specify)',
    'Retired',
    'Fired',
  ];

 var curentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomGradientcolor(
          chiled: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.jobConfirmScreen);
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 51.h),
                      child: Text(AppString.skipText,
                          style: AppStyles.customSize(size: 20,fontWeight: FontWeight.w500,underline: TextDecoration.underline)),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                SizedBox(height:32.h),
                Text(AppString.choceCategoriText,style: AppStyles.h1(fontWeight: FontWeight.w500,family: "Schuyler")),
                SizedBox(height:20.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(AppString.moreCategoryText,textAlign: TextAlign.center,),
                ),
            Expanded(
                  child: AlignedGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    itemCount: categori.length,
                    crossAxisSpacing: 14,
                    itemBuilder: (context, index) {
                      bool isSelect=_categoriCtrl.categoriList.contains(categori[index]);
                      return InkWell(
                        onTap: (){
                          if(isSelect){
                            _categoriCtrl.categoriList.remove(categori[index]);
                            print("CategoliList>>>${_categoriCtrl.categoriList}");
                          }else{
                            _categoriCtrl.categoriList.add(categori[index]);
                            print("CategoliList>>>${_categoriCtrl.categoriList}");
                          }
                          setState(() {

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color:isSelect?AppColors.primaryColor: Colors.transparent,
                              border: Border.all(color: AppColors.primaryColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Center(child: Text(categori[index],style:AppStyles.h6(color:isSelect?Colors.white:AppColors.textColor, ),textAlign: TextAlign.center,)),
                          ),
                        ),
                      );
                    },
                  )
              ),

                CustomButton(
                    onTap: (){},
                    padding: EdgeInsets.only(bottom: 20.h),
                    text: AppString.submitText)
              ],
            ),
          )
      ),
    );
  }
}
