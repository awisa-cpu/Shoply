// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';

import 'package:shoply/common/widgets/custom_toggle_button2.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  bool isActive = true;
  bool isCompleted = false;
  bool isCancelled = false;

  final _products = <Product>[
    Product(
        name: "Brown Jacket",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Suit",
        imageUrl: "",
        price: 60.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Tshirt",
        imageUrl: "",
        price: 120.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Black Jacket",
        imageUrl: "",
        price: 163.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Grey Suit",
        imageUrl: "",
        price: 150.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Polo",
        imageUrl: "",
        price: 200.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Tshirt",
        imageUrl: "",
        price: 90.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Red Sleeves",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Green Jacket",
        imageUrl: "",
        price: 99.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Yellow Polo",
        imageUrl: "",
        price: 102.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Jacket",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Jacket",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Jacket",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
    Product(
        name: "Brown Jacket",
        imageUrl: "",
        price: 83.97,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'],
        quantity: '10'),
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: Text('My Orders', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //toggle options
              Row(
                children: [
                  //active
                  CustomToggleButton2(
                    action: () {
                      setState(() {
                        isActive = true;
                        if (isActive) {
                          isCompleted = false;
                          isCancelled = false;
                        }
                      });
                    },
                    text: 'Active',
                    isOption: isActive,
                  ),

                  //completed
                  CustomToggleButton2(
                    action: () {
                      setState(() {
                        isCompleted = true;
                        if (isCompleted) {
                          isActive = false;
                          isCancelled = false;
                        }
                      });
                    },
                    text: 'Completed',
                    isOption: isCompleted,
                  ),

                  //cancelled
                  CustomToggleButton2(
                    action: () {
                      setState(() {
                        isCancelled = true;
                        if (isCancelled) {
                          isCompleted = false;
                          isActive = false;
                        }
                      });
                    },
                    text: 'Cancelled',
                    isOption: isCancelled,
                  ),
                ],
              ),

              //determine products to show
              isActive
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * .75,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _products.length,
                        itemBuilder: (context, index) {
                          final product = _products[index];

                          return SingleProduct(
                            product: product,
                            actionText: 'Track Order',
                          );
                        },
                      ),
                    )
                  : isCompleted
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * .75,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: _products.length,
                            itemBuilder: (context, index) {
                              final product = _products[index];

                              return SingleProduct(
                                product: product,
                                actionText: 'Leave Review',
                              );
                            },
                          ),
                        )
                      : isCancelled
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * .75,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: _products.length,
                                itemBuilder: (context, index) {
                                  final product = _products[index];

                                  return SingleProduct(
                                    product: product,
                                    actionText: 'Re-order',
                                  );
                                },
                              ),
                            )
                          : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final Product product;
  final String actionText;
  const SingleProduct({
    required this.product,
    required this.actionText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 100,
          width: 100,
          child: Card(
            color: Colors.transparent,
          ),
        ),

        //
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Size: XL | Qty: 10pcs",
              style: TextStyle(color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "\$${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),

        //call to action
        OrderActionButton(
          actionPressed: () {},
          text: actionText,
        )
      ],
    );
  }
}

class OrderActionButton extends StatelessWidget {
  final String text;
  final VoidCallback actionPressed;
  const OrderActionButton({
    required this.actionPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionPressed,
      child: Chip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        label: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final List<String> sizes;
  final String quantity;
  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.sizes,
    required this.quantity,
  });
}
