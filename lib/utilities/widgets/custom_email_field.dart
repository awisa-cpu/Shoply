// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  EmailField({
    required this.emailCon,
    this.hintText,
    super.key,
  });
  TextEditingController emailCon;
  String? hintText;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  void initState() {
    super.initState();
    widget.emailCon = TextEditingController();
  }

  @override
  void dispose() {
    widget.emailCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //

    final color = Theme.of(context).primaryColor;

    //
    return TextField(
      controller: widget.emailCon,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(35),
            ),
            borderSide: BorderSide(color: color),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(35),
            ),
          ),
          hintText: widget.hintText ?? 'example@gmail.com'),
    );
  }
}
