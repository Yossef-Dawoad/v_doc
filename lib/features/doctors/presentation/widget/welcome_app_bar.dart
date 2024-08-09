import 'package:flutter/material.dart';
import 'package:v_doc/core/themes/colors.dart';

class WelcomeHomeAppBar extends StatelessWidget {
  const WelcomeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        'Hi, Yousef!',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'How are you today?',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      trailing: CircleAvatar(
        radius: 22.0,
        backgroundColor: ColorsPalette.brightGery,
        child: Badge(
          child: Icon(Icons.notifications),
        ),
      ),
    );
  }
}
