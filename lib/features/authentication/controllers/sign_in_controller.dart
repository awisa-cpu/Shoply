import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  ///variables
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  void signIn() {}

  void forgotPassword() {}
}
