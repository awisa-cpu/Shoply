import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_app_bar_title.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';

import '../../utilities/widgets/custom_notification.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final color = Theme.of(context).primaryColor;

    //
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: const CustomAppBarTitle(title: 'Notification'),
        centerTitle: true,
        actions: [
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //today
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Today'),
                  Text(
                    'Mark all as read',
                    style: TextStyle(color: color),
                  )
                ],
              ),

              //
              const SizedBox(
                height: 11.5,
              ),

              //today notifications
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  CustomNotification(
                    title: 'Order Shipped',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.car_repair,
                  ),

                  //
                  CustomNotification(
                    title: 'Flash Sale Alert',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.podcasts_sharp,
                  ),

                  //
                  CustomNotification(
                    title: 'Product Review Request',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.star,
                  ),
                ],
              ),

              const SizedBox(
                height: 11.5,
              ),

              //yesterday
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Yesterday'),
                  Text(
                    'Mark all as read',
                    style: TextStyle(color: color),
                  )
                ],
              ),

              const SizedBox(
                height: 11.5,
              ),

              // yesterday notifications
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  CustomNotification(
                    title: 'Order Shipped',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.car_repair,
                  ),

                  //
                  CustomNotification(
                    title: 'New Paypal Added',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.wallet,
                  ),

                  //
                  CustomNotification(
                    title: 'Flash Sale Alert',
                    subTitle:
                        "Every day, we take the initiative to make Softkodes a stand-out company.  ",
                    icon: Icons.star,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
