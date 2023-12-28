import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String text;
  const CustomChip({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      backgroundColor: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.transparent),
      ),
    );
  }
}
