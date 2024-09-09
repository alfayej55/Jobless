import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobless/utils/app_string.dart';
import 'package:jobless/utils/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text(AppString.loginText,style:AppStyles.h1()),
            Text(AppString.subLoginText,style:AppStyles.h5(family: "DMSans")),
            SizedBox(height: 30.h),

            Text(AppString.emailText,style:AppStyles.h1()),





          ],
        ),
      ),
    );
  }
}
