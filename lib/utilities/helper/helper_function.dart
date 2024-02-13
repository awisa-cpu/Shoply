import 'package:flutter/material.dart';

class HelperFunctions{



  static bool isLight(BuildContext context)=>
   Theme.of(context).brightness == Brightness.light;

static double screenWidth(BuildContext context)=>MediaQuery.of(context).size.width;
static double screenHeight(BuildContext context)=>MediaQuery.of(context).size.height;
  
}