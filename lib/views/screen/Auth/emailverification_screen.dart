
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_string.dart';
import '../../../utils/style.dart';
class EmailverificationScreen extends StatelessWidget {
  const EmailverificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55.h,),
          Text(AppString.creareAccountText,style:AppStyles.h1()),
          Text(AppString.subCreateText,style:AppStyles.h5()),


        ],
      ),
    );
  }
}
