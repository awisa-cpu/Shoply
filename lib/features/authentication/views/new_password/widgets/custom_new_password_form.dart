// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/custom_action_button.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

class CustomNewPasswordForm extends StatelessWidget {
  const CustomNewPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomStrings.password),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //password field
          TextFormField(
            decoration: InputDecoration(
                hintText: '**********',
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                  color: color,
                )),
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.confirmPassword),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //Confirm password field
          TextFormField(
            decoration: InputDecoration(
                hintText: '**********',
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                  color: color,
                )
                
                ),
          ),

          const SizedBox(height: CusSizes.spaceBtwSections),

          //Verify button
          CustomActionButton(
            text: CustomStrings.createNewPassword,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
