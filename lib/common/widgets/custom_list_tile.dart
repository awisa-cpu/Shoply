import 'package:flutter/material.dart';
import 'package:shoply/utilities/typedefs/custom_typedefs.dart';

class CustomListTile extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          splashColor: Colors.transparent,
          onTap: forPay ? null : action,
          leading: Icon(icon, color: color, size: 30),
          title: Text(title),
          trailing: forPay
              ? TextButton(
                  style: TextButton.styleFrom(
                    enableFeedback: false,
                    overlayColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Link',
                    style: TextStyle(color: color, fontSize: 20),
                  ),
                )
              : Icon(Icons.chevron_right, color: color, size: 30),
          enableFeedback: false,
          horizontalTitleGap: 10,
        ),

        //
        shoudAddDiv ? const Divider() : const SizedBox.shrink()
      ],
    );
  }
}
