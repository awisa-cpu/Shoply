import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_app_bar_title.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';
import 'package:shoply/utilities/widgets/custom_list_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(goBackTo: () {
          
        },),
        title: const CustomAppBarTitle(title: 'Settings'),
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
