import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/app_colors.dart';

class CustomNavigationBarTheme {
  static NavigationBarThemeData lightNavigationBarTheme =
      NavigationBarThemeData(
    backgroundColor: Colors.grey.shade400.withOpacity(0.6),
    height: 65,
    indicatorColor: AppColors.primaryColor,
    elevation: 0.0,
    labelTextStyle: const WidgetStatePropertyAll(
      TextStyle(color: Colors.black, fontSize: 12),
    ),
  );

  static NavigationBarThemeData darkNavigationBarTheme =
      const NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: Colors.black,
    height: 65,
    elevation: 0.0,
  );
}
