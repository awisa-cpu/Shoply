import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

class CustomSignUpHeaderWithTitle extends StatelessWidget {
  const CustomSignUpHeaderWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          CustomStrings.createAccount,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: CusSizes.fontSizexLg),
        ),
        const SizedBox(height: CusSizes.spaceBtwItems),
        Text(CustomStrings.fillInfoBelow),
        Text(CustomStrings.withYourSocialAcc),
       
      ],
    );
  }
}
