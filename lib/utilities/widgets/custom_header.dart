// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoply/utilities/custom_definitions.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';

class customHeader extends StatelessWidget {
  final String text;
  final NavAction action;
  double? size;

  customHeader({
    required this.text,
    required this.action,
    this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackNavigator(
          goBackTo: action,
        ),

        SizedBox(
          width: size ?? 97,
        ),

        //
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],

      //
    );
  }
}
