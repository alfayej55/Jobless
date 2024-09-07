import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobless/utils/app_image.dart';
import 'package:jobless/views/base/custom_gradientcolor.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

   return  Scaffold(
     body:CustomGradientcolor(
       chiled: Center(
         child: SvgPicture.asset(AppImage.appIcon,height:134,width: 134,),
       ),
     ),
   );

  }
}
