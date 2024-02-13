import 'package:flutter/material.dart';

class CustomSignInOrUpWith extends StatelessWidget {
  const CustomSignInOrUpWith({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 70,
          color: color,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(text),
        const SizedBox(
          width: 7,
        ),
        Container(
          height: 1,
          width: 70,
          color: color,
        ),
      ],
    );
  }
}
