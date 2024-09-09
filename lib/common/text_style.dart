import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colours.dart';

class AppTextStyles {
  static TextStyle headline1 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static TextStyle title = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.accentColor,
  );

  static TextStyle subTitle = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.subTextColor,
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 28.sp,
    color: AppColors.textColor,
  );

  static TextStyle caption = TextStyle(
    fontSize: 24.sp,
    color: AppColors.subTextColor,
  );

  static TextStyle button = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.accentColor,
  );
}
