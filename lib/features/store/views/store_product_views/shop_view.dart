import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Shop', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
    );
  }
}
