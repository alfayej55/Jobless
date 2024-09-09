import 'package:flutter/material.dart';
import 'package:jobless/utils/app_colors.dart';

ThemeData light({Color color = const Color(0xFF4361EE)}) => ThemeData(
  fontFamily: 'Roboto',
  primaryColor: color,
  secondaryHeaderColor: Color(0xFF1ED7AA),
  disabledColor: Color(0xFFBABFC4),
  brightness: Brightness.light,

  hintColor: Color(0xFF9F9F9F),
  cardColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    elevation: 5,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: AppColors.primaryColor), // Border color

    ),
  ),

  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: color)),
  colorScheme: ColorScheme.light(primary: color, secondary: color).copyWith(background: const Color(0xFFF3F3F3)).copyWith(error: Color(0xFFE84D4F)),






);
