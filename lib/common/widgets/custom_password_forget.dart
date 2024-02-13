import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/text_strings.dart';
import 'package:shoply/utilities/typedefs/custom_typedefs.dart';

class CustomPasswordForget extends StatelessWidget {
  const CustomPasswordForget({
    super.key,
    required this.passwordAction,
  });

  final PasswordForget passwordAction;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: passwordAction,
          child: Text(
            CustomStrings.forgotPassword,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
