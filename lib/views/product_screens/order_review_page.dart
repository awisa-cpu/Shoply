// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';
import 'package:shoply/utilities/widgets/custom_button.dart';
import 'package:shoply/views/product_screens/my_orders_page.dart';

import '../../utilities/widgets/custom_app_bar_title.dart';
import '../../utilities/widgets/rating.dart';

class OrderReviewPage extends StatefulWidget {
  Product? product;
  OrderReviewPage({super.key, this.product});

  @override
  State<OrderReviewPage> createState() => _OrderReviewPageState();
}

class _OrderReviewPageState extends State<OrderReviewPage> {
  late final TextEditingController _review;

  @override
  void initState() {
    super.initState();
    _review = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _review.dispose();
  }

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
        title: const CustomAppBarTitle(title: 'Leave Review'),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleProduct(
                product: Product(
                    name: "Brown Jacket",
                    imageUrl: "",
                    price: 83.97,
                    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
                    quantity: '10'),
                actionText: "Re-Order",
              ),

              //
              const SizedBox(
                height: 23,
              ),

              //
              Container(
                alignment: Alignment.center,
                height: 90,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.2),
                    bottom: BorderSide(width: 0.2),
                  ),
                ),
                child: const Text(
                  'How is your Order?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              //

              const SizedBox(
                height: 20,
              ),

              //
              Text(
                'Your overall rating',
                style: TextStyle(color: Colors.grey.shade500),
              ),

              //
              const SizedBox(
                height: 20,
              ),

              //ratings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rating(
                    onPressed: () {},
                  ),
                  Rating(
                    onPressed: () {},
                  ),
                  Rating(
                    onPressed: () {},
                  ),
                  Rating(
                    onPressed: () {},
                  ),
                  Rating(
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              //
              const Divider(
                thickness: 1,
              ),

              //
              const SizedBox(
                height: 20,
              ),

              //footer
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add detailed review',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //

                  const SizedBox(
                    height: 10,
                  ),

                  //add review
                  TextField(
                    controller: _review,
                    maxLines: 4,
                    cursorColor: Colors.grey.shade300,
                    decoration: InputDecoration(
                      hintText: 'Enter here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),

                  //
                  const SizedBox(
                    height: 10,
                  ),

                  //add photo
                  GestureDetector(
                    onTap: () {
                      //do something
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.photo_camera_outlined,
                          color: color,
                        ),

                        //
                        const SizedBox(
                          width: 5,
                        ),

                        //
                        Text(
                          'add photo',
                          style: TextStyle(color: color),
                        )
                      ],
                    ),
                  )
                ],
              ),
              //
              const SizedBox(
                height: 20,
              ),

              //action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //cancel
                  CustomButton(
                    actionPressed: () {},
                    containerColor: Colors.grey.shade200,
                    text: 'Cancel',
                    textColor: color,
                  ),

                  //submit
                  CustomButton(
                    actionPressed: () {},
                    containerColor: color,
                    text: 'Submit',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
