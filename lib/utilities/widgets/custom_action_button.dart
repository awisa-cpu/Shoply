import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.text,
    required this.perform,
  });

  final String text;
  final VoidCallback perform;

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: perform,
      child: Container(
        width: 500,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(35)),
        child:  Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
