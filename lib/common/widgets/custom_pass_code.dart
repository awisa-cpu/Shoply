import 'package:flutter/material.dart';

class PassCode extends StatelessWidget {
  const PassCode({
    required this.value,
    super.key,
  });
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(value),
    );
  }
}
