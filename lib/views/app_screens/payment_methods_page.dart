import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_app_bar_title.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';
import 'package:shoply/utilities/widgets/custom_list_tile.dart';

class PaymentMethodsPage extends StatefulWidget {
  const PaymentMethodsPage({super.key});

  @override
  State<PaymentMethodsPage> createState() => _PaymentMethodsPageState();
}

class _PaymentMethodsPageState extends State<PaymentMethodsPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: const CustomAppBarTitle(title: 'Payment Methods'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.5,
          right: 15.5,
          top: 10.5,
          bottom: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            const Text(
              'Credit & Debit Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            //
            const SizedBox(
              height: 10.5,
            ),

            //
            Container(
              height: 65,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.5),
                  border: Border.all()),
              child: CustomListTile(
                action: () {},
                icon: Icons.credit_card_outlined,
                title: 'Add New Card',
                shoudAddDiv: false,
                forPay: true,
              ),
            ),
            //
            const SizedBox(
              height: 27.5,
            ),

            //
            const Text(
              'More Payment Options',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            //
            const SizedBox(
              height: 10.5,
            ),

            //more payment options
            Container(
              height: 65,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(11.5),
                    topRight: Radius.circular(11.5),
                  ),
                  border: Border.all()
                  // border: Border(
                  //     left: BorderSide(), right: BorderSide(), top: BorderSide()),
                  ),
              child: CustomListTile(
                action: () {},
                icon: Icons.paypal_rounded,
                title: 'Paypal',
                shoudAddDiv: false,
                forPay: true,
              ),
            ),

            //
            Container(
              height: 65,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(11.5),
                    bottomRight: Radius.circular(11.5),
                  ),
                  border: Border.all()
                  // border: Border(
                  //     left: BorderSide(),
                  //     right: BorderSide(),
                  //     bottom: BorderSide()),
                  ),
              child: CustomListTile(
                action: () {},
                icon: Icons.apple_sharp,
                title: 'Apple Pay',
                shoudAddDiv: false,
                forPay: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
