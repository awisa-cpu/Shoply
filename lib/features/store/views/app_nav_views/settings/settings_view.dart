import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/common/widgets/custom_list_tile.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: Text('Settings', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //notification
            CustomListTile(
              action: () {},
              icon: Icons.person,
              title: 'Notification Settings',
              shoudAddDiv: true,
              forPay: false,
            ),

            //password manager
            CustomListTile(
              action: () {},
              icon: Icons.key_outlined,
              title: 'Password Manager',
              shoudAddDiv: true,
              forPay: false,
            ),

            //accout delete
            CustomListTile(
              action: () {},
              icon: Icons.payment_outlined,
              title: 'Delete Account',
              shoudAddDiv: true,
              forPay: false,
            )
          ],
        ),
      ),
    );
  }
}
