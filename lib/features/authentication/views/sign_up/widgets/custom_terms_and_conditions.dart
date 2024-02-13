import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

class CustomTermsAndConditions extends StatelessWidget {
  const CustomTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Row(
      children: [
        //
        SizedBox(
          width: 27,
          child: Checkbox(
            activeColor: color,
            checkColor: color,
            value: false,
            onChanged: (value) {},
          ),
        ),

        const SizedBox(width: 5),

        //
        Text.rich(TextSpan(children: [
          TextSpan(text: CustomStrings.agreeWith),
          TextSpan(
            text: CustomStrings.termsAndConditions,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ],),),
      ],
    );
  }
}
