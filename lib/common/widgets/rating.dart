// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final VoidCallback onPressed;
  const Rating({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        enableFeedback: false,
        onPressed: onPressed,
        icon: Icon(
          Icons.star_rounded,
          size: 45,
          color: Colors.orange[300],
        ));
  }
}
