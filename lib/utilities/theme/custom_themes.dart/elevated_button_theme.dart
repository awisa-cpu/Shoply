import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/app_colors.dart';

class CustomElevatedButtonTheme {
  //
  static ElevatedButtonThemeData lightElevatedButton=
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          enableFeedback: false,
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          side: const BorderSide(color: AppColors.primaryColor),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      );
}
