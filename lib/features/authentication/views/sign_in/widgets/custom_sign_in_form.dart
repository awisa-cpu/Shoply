import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/app_navigator.dart';
import 'package:shoply/common/widgets/custom_action_button.dart';
import 'package:shoply/common/widgets/custom_password_forget.dart';
import 'package:shoply/features/authentication/views/new_password/new_password_view.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomStrings.email),

          const SizedBox(
            height: 7.5,
          ),

          //email field
          TextFormField(
            decoration: const InputDecoration(hintText: 'example@gmail.com'),
          ),

          const SizedBox(height: CusSizes.spaceBtwInputFields),

          Text(CustomStrings.password),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //password field
          TextFormField(
            decoration: InputDecoration(
              hintText: '************',
              suffixIcon: Icon(
                Iconsax.eye_slash,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),

          const SizedBox(height: CusSizes.spaceBtwSections),

          //password forgot
          CustomPasswordForget(
            passwordAction: () => Get.to(
              () => const NewPasswordView(),
            ),
          ),

          const SizedBox(height: CusSizes.spaceBtwItems),

          //sign in button
          CustomActionButton(
            text: CustomStrings.signIn,
            onPressed: () => Get.offAll(() => const AppNavigator()),
          ),
        ],
      ),
    );
  }
}
