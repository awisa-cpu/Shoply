import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppSnackBar{


  static void showAppSnackBar({required String text, required Color color}){
       final snackbar = SnackBar(content: Text(text), backgroundColor: color,dismissDirection: DismissDirection.up,);
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackbar);

  }


}