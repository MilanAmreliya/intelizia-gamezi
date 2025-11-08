import 'package:flutter/material.dart';

import '../utils/colors.dart';

abstract class CustomTheme {
  static ThemeData lightTheme() => ThemeData.light();

  static ThemeData darkTheme() => ThemeData(
        primaryColor: AppColors.primaryColor,
        highlightColor: AppColors.secondaryColor,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Inter',
      );
}
