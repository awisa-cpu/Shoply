import 'package:flutter/material.dart';

class BackNavigator extends StatelessWidget {
  final VoidCallback goBackTo;
  const BackNavigator({
    required this.goBackTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goBackTo,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
    );
  }
}
