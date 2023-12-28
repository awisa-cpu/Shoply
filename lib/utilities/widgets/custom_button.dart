// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback actionPressed;
  final Color containerColor;
  final String text;
  Color? textColor;
  BoxBorder? boxBorder;
  CustomButton({
    required this.actionPressed,
    required this.containerColor,
    required this.text,
    this.textColor,
    this.boxBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 130,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(23),
        border: boxBorder
      ),
      child: TextButton(
        style: const ButtonStyle(enableFeedback: false),
        onPressed: actionPressed,
        child: Text(
         text,
          style:  TextStyle(color: textColor??Colors.white),
        ),
      ),
    );
  }
}
