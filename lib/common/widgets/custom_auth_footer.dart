import 'package:flutter/material.dart';

class CustomAuthFooter extends StatelessWidget {
  const CustomAuthFooter({
    super.key,
    required this.onTap,
    required this.infoText,
    required this.actionText,
  });
  final VoidCallback onTap;
  final String infoText;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(infoText),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
