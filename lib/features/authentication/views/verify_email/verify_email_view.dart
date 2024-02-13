import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shoply/features/authentication/views/sign_in/sign_in_view.dart';
import 'package:shoply/utilities/constants/image_strings.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';
import 'package:shoply/utilities/helper/helper_function.dart';

import '../../../../common/widgets/custom_back_navigator.dart';
import '../../../../common/widgets/custom_action_button.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CusSizes.defaultSpace,
          vertical: CusSizes.defaultSpace * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackNavigator(goBackTo: () => Get.offAll(() => const SignInView())),

            const SizedBox(height: CusSizes.spaceBtwItems),
            

            Column(
              children: [
                Text(
                  CustomStrings.verifyEmail,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),

                const SizedBox(height: CusSizes.spaceBtwItems),

                Text(CustomStrings.verifyEmailText),
                Text(
                  'example123@gmail.com',
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: CusSizes.spaceBtwSections + 10),

                Lottie.asset(
                  CusImageStrings.verifyEmailAnimate,
                  width: HelperFunctions.screenWidth(context) * 0.6,
                ),

                const SizedBox(height: CusSizes.spaceBtwSections),

                Text(CustomStrings.didNotReceiveEmail),

                //resend email
                GestureDetector(
                  onTap: () {
                    //email resend
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        CustomStrings.resendEmail,
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 85,
                        color: color,
                      )
                    ],
                  ),
                ),

                const SizedBox(height: CusSizes.spaceBtwSections),

                //Verify button
                CustomActionButton(
                  text: CustomStrings.continueEmail,
                  onPressed: () => Get.offAll(() => const SignInView()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
