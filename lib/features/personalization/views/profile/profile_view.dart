import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/common/widgets/custom_app_bar_title.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/features/authentication/views/sign_in/sign_in_view.dart';
import 'package:shoply/utilities/constants/image_strings.dart';
import 'package:shoply/utilities/constants/sizes.dart';
import 'package:shoply/utilities/constants/text_strings.dart';

import '../../../../common/widgets/custom_button.dart';
import '../../../../common/widgets/custom_list_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // final color = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: const CustomAppBarTitle(title: 'Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.5,
          right: 15.5,
          top: 3.5,
          bottom: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //profile details
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(CusImageStrings.profile),
                        radius: 70,
                      ),

                      //picture edit
                      GestureDetector(
                        onTap: () {
                          //change picture
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 60,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.border_color_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //
                  const SizedBox(
                    height: 12.5,
                  ),

                  //profile name
                  const Text(
                    'Esther Howard',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 17.5,
              ),

              //options
              Column(
                children: [
                  CustomListTile(
                    action: () {},
                    icon: Icons.person_2_outlined,
                    title: 'Your profile',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.payment_outlined,
                    title: 'Payment Methods',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.shopping_bag_outlined,
                    title: 'My Orders',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.settings,
                    title: 'Settings',
                    shoudAddDiv: true,
                    forPay: false,
                  ),

                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.info_outline,
                    title: 'Help Center',
                    shoudAddDiv: true,
                    forPay: false,
                  ),

                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.lock_outline,
                    title: 'Privacy Policy',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                  //
                  CustomListTile(
                    action: () {},
                    icon: Icons.person_add_alt_outlined,
                    title: 'Invite Friends',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                  //
                  CustomListTile(
                    action: () => showLogoutModalSheet(),
                    icon: Icons.logout_rounded,
                    title: 'Log out',
                    shoudAddDiv: true,
                    forPay: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showLogoutModalSheet() async {
    final color = Theme.of(Get.context!).primaryColor;
    return await Get.bottomSheet(
      isDismissible: false,
      Container(
        color: Colors.white,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                CustomStrings.logOut,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: CusSizes.spaceBtwItems - 5),
              const Divider(),

              const SizedBox(height: CusSizes.spaceBtwItems),

              const Text(
                'Are you sure you want to log out?',
              ),

              const SizedBox(height: CusSizes.spaceBtwItems - 5),

              //action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //cancel
                  CustomButton(
                    actionPressed: () => Navigator.of(Get.context!).pop(),
                    containerColor: Colors.white,
                    boxBorder: Border.all(color: color),
                    textColor: color,
                    text: 'Cancel',
                  ),

                  //logout
                  CustomButton(
                    actionPressed: () => Get.offAll(() => const SignInView()),
                    containerColor: color,
                    text: 'Yes, Logout',
                  )
                  //logout
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
