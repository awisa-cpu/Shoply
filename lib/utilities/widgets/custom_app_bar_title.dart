// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;
  const CustomAppBarTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
