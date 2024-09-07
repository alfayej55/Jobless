import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppStyles {
  static TextStyle h1(
      {Color? color, FontWeight? fontWeight,
        String? family,
        double? letterSpacing}) {
    return TextStyle(
        color: color,
        fontSize: 24.sp,
        letterSpacing: letterSpacing,
        fontFamily: family ?? 'Schuyler',
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle h2(
      {Color? color, FontWeight? fontWeight,
        String? family,
        double? letterSpacing}) {
    return TextStyle(
        color: color,
        fontSize: 20.sp,
        fontFamily: family ?? 'Schuyler',
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle h3({
    Color? color,
    String? family,
    FontWeight? fontWeight,
    double? letterSpacing,

  }) {
    return TextStyle(
        color: color,
        fontSize: 18.sp,
        fontFamily: family ?? 'Schuyler',
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle h4(
      {Color? color,
        FontWeight? fontWeight,
        double? letterSpacing,
        String? family,
        double? height}) {
    return TextStyle(
        fontSize: 16.sp,
        color: color,
        fontFamily: family ?? 'Schuyler',
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle h5(
      {Color? color,
        FontWeight? fontWeight,
        double? letterSpacing,
        String? family,
        double? height}) {
    return TextStyle(
        fontSize: 14.sp,
        fontFamily: family ?? 'Schuyler',
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle h6(
      {Color? color,
        FontWeight? fontWeight,
        double? letterSpacing,
        double? height}) {
    return TextStyle(
        fontSize: 12.sp,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle customSize(
      {Color? color,
        required double size,
        String? family,
        double? letterSpacing,
        double? height,
        Color? underlineColor,
        TextDecoration? underline,
        FontWeight? fontWeight}) {
    return TextStyle(
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color,
        fontSize: size,
        decoration: underline ?? TextDecoration.none,
        decorationColor: underlineColor??Colors.transparent,
        fontFamily: family ?? 'Schuyler',

        height: height,
        letterSpacing: letterSpacing,
       );
  }

  static BoxShadow boxShadow =  BoxShadow(
      blurRadius: 4,
      offset: const Offset(0,0),
      color:Colors.black.withOpacity(0.02),
      spreadRadius:0);
}