import 'package:flutter/material.dart';
import 'package:shoply/utilities/custom_definitions.dart';

class CustomPasswordForget extends StatefulWidget {
  const CustomPasswordForget({
    super.key,
    required this.passwordAction,
  });

  final PasswordForget passwordAction;

  @override
  State<CustomPasswordForget> createState() => _CustomPasswordForgetState();
}

class _CustomPasswordForgetState extends State<CustomPasswordForget> {
  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).primaryColor;

    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              enableFeedback: false,
              onTap: widget.passwordAction,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 1,
              width: 118,
              color: color,
            ),
          ],
        )
      ],
    );
  }
}
