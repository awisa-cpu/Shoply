import 'package:flutter/material.dart';

class CustomSingleOtherSignIn extends StatelessWidget {
  const CustomSingleOtherSignIn({
    super.key,
    required this.imageUrl,
    required this.onPressed,
    this.width = 40,
    this.height = 40,
  });

  final String imageUrl;
  final VoidCallback onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: Center(
          child: Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.contain,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
