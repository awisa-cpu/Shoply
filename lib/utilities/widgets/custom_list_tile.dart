import 'package:flutter/material.dart';
import 'package:shoply/utilities/custom_definitions.dart';

class CustomListTile extends StatefulWidget {
  final ListTileAction action;
  final IconData icon;
  final String title;
  final bool shoudAddDiv;
  final bool forPay;
  const CustomListTile({
    required this.action,
    required this.icon,
    required this.title,
    required this.shoudAddDiv,
    required this.forPay,
    super.key,
  });

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          splashColor: Colors.transparent,
          onTap: widget.forPay ? null : widget.action,
          leading: Icon(widget.icon, color: color, size: 30),
          title: Text(widget.title),
          trailing: widget.forPay
              ? TextButton(
                  style: const ButtonStyle(
                    enableFeedback: false,
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Link',
                    style: TextStyle(color: color, fontSize: 20),
                  ))
              : Icon(Icons.chevron_right, color: color, size: 30),
          enableFeedback: false,
          horizontalTitleGap: 10,
        ),

        //
        widget.shoudAddDiv ? const Divider() : const SizedBox.shrink()
      ],
    );
  }
}
