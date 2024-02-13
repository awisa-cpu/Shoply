import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/image_strings.dart';

import 'custom_single_other_sign_in.dart';

class CustomSocialButtons extends StatelessWidget {
  const CustomSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //apple
        CustomSingleOtherSignIn(
          imageUrl: CusImageStrings.apple,
          onPressed: () {},
          height: 80,
          width: 80,
        ),

        //google
        CustomSingleOtherSignIn(
          imageUrl: CusImageStrings.google,
          onPressed: () {},
        ),

        //facebook
        CustomSingleOtherSignIn(
          imageUrl: CusImageStrings.facebook,
          onPressed: () {},
        ),
      ],
    );
  }
}
