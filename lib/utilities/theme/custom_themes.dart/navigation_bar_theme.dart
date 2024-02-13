import 'package:flutter/material.dart';

class CustomNavigationBarTheme {
  static NavigationBarThemeData lightNavigationBarTheme =
      NavigationBarThemeData(
    backgroundColor: Colors.black.withOpacity(0.85),
    height: 65,
    indicatorColor: Colors.white,
    elevation: 0.0,
  );

  static NavigationBarThemeData darkNavigationBarTheme =
      const NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: Colors.black,
    height: 65,
    elevation: 0.0,
  );
}
