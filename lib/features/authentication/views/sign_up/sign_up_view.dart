import 'package:flutter/material.dart';
import 'package:shoply/common/styles/custom_app_view_layout.dart';
import 'package:shoply/utilities/constants/sizes.dart';

import 'widgets/custom_sign_up_footer_section.dart';
import 'widgets/custom_sign_up_form.dart';
import 'widgets/custom_sign_up_header_with_title.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppViewLayout(
        child: Column(
          children: [
            CustomSignUpHeaderWithTitle(),

            SizedBox(height: CusSizes.spaceBtwSections),

            //sign up  form
            CustomSignUpForm(),

            SizedBox(height: CusSizes.spaceBtwItems),

            CustomSignUpFooterSection(),
          ],
        ),
      ),
    );
  }
}
