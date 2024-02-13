// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';
import 'widgets/custom_new_password_form.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: CusSizes.defaultSpace,
            vertical: CusSizes.defaultSpace * 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackNavigator(
                goBackTo: () => Get.back(),
              ),
              const SizedBox(height: CusSizes.spaceBtwItems),
              Column(
                children: [
                  Text(
                    CustomStrings.newPassword,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),

                  const SizedBox(height: CusSizes.spaceBtwItems),

                  Text(CustomStrings.passwordMustBeDifferent),
                  Text(CustomStrings.fromPreviousPassword),

                  const SizedBox(height: CusSizes.spaceBtwSections),

                  //password details
                  const CustomNewPasswordForm(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
