// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField(
      {required this.passwordCon, required this.showPassword, super.key});
  TextEditingController passwordCon;
  bool showPassword;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  void initState() {
    super.initState();
    widget.passwordCon = TextEditingController();
  }

  @override
  void dispose() {
    widget.passwordCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //

    final color = Theme.of(context).primaryColor;

    //
    return TextField(
      controller: widget.passwordCon,
      cursorColor: color,
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
        hintText: '************',
        suffixIcon: IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              widget.showPassword = !widget.showPassword;
            });
          },
          icon: Icon(
            widget.showPassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
        ),
      ),
      obscureText: widget.showPassword,
    );
  }
}
