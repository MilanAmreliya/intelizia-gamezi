import 'package:flutter/material.dart';

import 'colors.dart';

abstract class MyFontFamily {
  static const String inter = 'Inter';
}

abstract class MyFontStyle {
  static TextStyle kNormal({required double fontSize, required Color color}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.normal,
      fontFamily: MyFontFamily.inter,
    );
  }

  static TextStyle kW500({required double fontSize, required Color color}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: MyFontFamily.inter,
    );
  }

  static TextStyle kW600({required double fontSize, required Color color}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w600,
      fontFamily: MyFontFamily.inter,
    );
  }

  static TextStyle kW700({required double fontSize, required Color color}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
      fontFamily: MyFontFamily.inter,
    );
  }

  static TextStyle s52 = TextStyle(
    color: AppColors.white,
    fontSize: 52,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s32 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s28 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s24 = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s18 = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle s17 = TextStyle(
    color: AppColors.white,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle s16 = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s14 = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle s16Normal = TextStyle(
    color: AppColors.subHeadingColor,
    fontFamily: 'Inter',
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 1.5,
  );

  static TextStyle s46 = TextStyle(
    fontSize: 46,
    color: AppColors.white,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle subTitleStyle = TextStyle(
    fontSize: 18,
    color: AppColors.subHeadingColor,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
}
