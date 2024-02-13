import 'package:flutter/material.dart';

class CustomToggleButton2 extends StatefulWidget {
  final VoidCallback action;
  final String text;
  final bool isOption;
  const CustomToggleButton2({
    super.key,
    required this.action,
    required this.text,
    required this.isOption,
  });

  @override
  State<CustomToggleButton2> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton2> {
  @override
  Widget build(BuildContext context) {
    //
    final color = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: widget.action,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width * .30,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: widget.isOption ? color : Colors.grey.shade400,
              width: widget.isOption ? 3.5 : 1.0,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.isOption ? color : Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
