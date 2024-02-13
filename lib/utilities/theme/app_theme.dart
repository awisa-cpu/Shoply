import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/app_colors.dart';
import 'package:shoply/utilities/theme/custom_themes.dart/navigation_bar_theme.dart';
import 'package:shoply/utilities/theme/custom_themes.dart/textfield_theme.dart';

class AppTheme {
  ///light theme
  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown.shade500),
    primaryColor: AppColors.primaryColor,
    useMaterial3: true,
    brightness: Brightness.light,
    inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme,
    navigationBarTheme: CustomNavigationBarTheme.lightNavigationBarTheme,
    
  );

  ///dark theme
  static ThemeData darkTheme = ThemeData(
    inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme,
    brightness: Brightness.dark,
     navigationBarTheme: CustomNavigationBarTheme.darkNavigationBarTheme,
  );
}
