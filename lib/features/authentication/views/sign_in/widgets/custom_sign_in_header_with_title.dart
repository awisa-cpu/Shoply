import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

class CustomSignInHeaderWithTitle extends StatelessWidget {
  const CustomSignInHeaderWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          CustomStrings.signIn,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: CusSizes.fontSizexLg),
        ),
        const SizedBox(height: CusSizes.spaceBtwItems),
        Text(CustomStrings.dontHaveAccount),
      ],
    );
  }
}
