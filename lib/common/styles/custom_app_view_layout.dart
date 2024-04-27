import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/sizes.dart';

class CustomAppViewLayout extends StatelessWidget {
  const CustomAppViewLayout({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          CusSizes.defaultSpace,
        ),
        child: child,
      ),
    );
  }
}
