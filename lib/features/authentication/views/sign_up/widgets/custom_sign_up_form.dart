import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/custom_action_button.dart';
import 'package:shoply/features/authentication/views/verify_email/verify_email_view.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

import 'custom_terms_and_conditions.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //first and last name field
          Row(
            children: [
              //first name
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomStrings.firstName),
                    const SizedBox(height: CusSizes.spaceBtwItems / 2),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'John'),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: CusSizes.spaceBtwItems),
              //lastname
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomStrings.lastName),
                    const SizedBox(height: CusSizes.spaceBtwItems / 2),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Doe'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.userName),
          const SizedBox(height: CusSizes.spaceBtwItems / 2),
          //username
          TextFormField(
            decoration: const InputDecoration(hintText: 'johnDoe'),
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.email),
          const SizedBox(height: CusSizes.spaceBtwItems / 2),
          //email field
          TextFormField(
            decoration: const InputDecoration(hintText: 'example@gmail.com'),
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.phoneNumber),
          const SizedBox(height: CusSizes.spaceBtwItems / 2),
          //email field
          TextFormField(
            decoration: const InputDecoration(),
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.password),
          const SizedBox(height: CusSizes.spaceBtwItems / 2),
          //password field
          TextFormField(
            decoration: InputDecoration(
              hintText: '**********',
              suffixIcon: Icon(
                Iconsax.eye_slash,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //Terms and conditions
          const CustomTermsAndConditions(),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //sign up button
          CustomActionButton(
            text: CustomStrings.signUp,
            onPressed: () => Get.to(() => const VerifyEmailView()),
          ),
        ],
      ),
    );
  }
}
