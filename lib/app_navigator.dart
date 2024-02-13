import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/utilities/helper/helper_function.dart';
import 'package:shoply/features/store/views/app_nav_views/settings/help_center_page.dart';
import 'package:shoply/features/store/views/app_nav_views/message/notification_page.dart';
import 'package:shoply/features/store/views/app_nav_views/settings/password_manager_page.dart';
import 'package:shoply/features/personalization/views/profile/profile_view.dart';
import 'package:shoply/features/store/views/app_nav_views/settings/settings_view.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isLight = HelperFunctions.isLight(context);
    final color = Theme.of(context).primaryColor;
    return Obx(
      () => Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: NavigationBar(
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: controller.onDestinationSelected,
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Iconsax.home5,
                    color: isLight ? color : Colors.black,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.bag_2,
                    color: isLight ? color : Colors.black,
                  ),
                  label: 'Shop'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.heart,
                    color: isLight ? color : Colors.black,
                  ),
                  label: 'Saved'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.message,
                    color: isLight ? color : Colors.black,
                  ),
                  label: 'Message'),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.profile_circle,
                    color: isLight ? color : Colors.black,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
        body: controller.currentWidget(controller.selectedIndex.value),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final RxInt selectedIndex = 0.obs;

  void onDestinationSelected(int index) => selectedIndex.value = index;

  Widget? currentWidget(int index) {
    switch (index) {
      case 0:
        return const ProfilePage();

      case 1:
        return const SettingsView();

      case 2:
        return const HelpCenterPage();

      case 3:
        return const NotificationsPage();

      case 4:
        return const PasswordManagerPage();

      default:
        return Container();
    }
  }
}
