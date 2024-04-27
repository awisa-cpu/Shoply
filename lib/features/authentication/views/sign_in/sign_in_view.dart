import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import '../../../../common/styles/custom_app_view_layout.dart';
import 'widgets/custom_sign_in_footer_section.dart';
import 'widgets/custom_sign_in_form.dart';
import 'widgets/custom_sign_in_header_with_title.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppViewLayout(
        child: Column(
          children: [
            CustomSignInHeaderWithTitle(),

            SizedBox(height: CusSizes.spaceBtwSections),

            //login form
            CustomSignInForm(),

            SizedBox(height: CusSizes.spaceBtwItems),

            //options
            CustomSignInFooterSection(),
          ],
        ),
      ),
    );
  }
}
