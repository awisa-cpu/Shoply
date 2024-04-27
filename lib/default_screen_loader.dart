import 'package:flutter/material.dart';
import 'package:shoply/utilities/constants/sizes.dart';

class DefaultScreenLoader extends StatelessWidget {
  const DefaultScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: CusSizes.spaceBtwSections),
            Text('In Progress, Please wait...')
          ],
        ),
      ),
    );
  }
}