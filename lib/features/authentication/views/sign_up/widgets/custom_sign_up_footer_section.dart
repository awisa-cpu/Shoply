import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/features/authentication/views/sign_in/sign_in_view.dart';
import 'package:shoply/features/authentication/views/sign_in/widgets/custom_sign_in_options.dart';
import 'package:shoply/features/authentication/views/sign_in/widgets/custom_sign_in_with.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

import '../../../../../common/widgets/custom_auth_footer.dart';

class CustomSignUpFooterSection extends StatelessWidget {
  const CustomSignUpFooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //options
        CustomSignInOrUpWith(text: CustomStrings.orSignUpWith),

        //
        const SizedBox(height: CusSizes.spaceBtwItems),

        //other sign in options
        const CustomSocialButtons(),

        const SizedBox(height: CusSizes.spaceBtwItems),

        //footer
        CustomAuthFooter(
          infoText: CustomStrings.alreadyHaveaccount,
          actionText: CustomStrings.signIn,
          onTap: () => Get.off(() => const SignInView()),
        ),
      ],
    );
  }
}
