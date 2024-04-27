import 'package:flutter/material.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title:  Text('Wishlist',style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }
}
