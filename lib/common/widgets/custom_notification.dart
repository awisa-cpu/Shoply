import 'package:flutter/material.dart';

class CustomNotification extends StatelessWidget {
  const CustomNotification({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      isThreeLine: true,
      trailing: Text(
        '1h',
        style: TextStyle(color: color),
      ),
    );
  }
}
