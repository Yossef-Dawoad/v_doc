import 'package:flutter/material.dart';
import 'package:v_doc/core/themes/colors.dart';

class WelcomeHomeAppBar extends StatelessWidget {
  const WelcomeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Yousef!', style: Theme.of(context).textTheme.titleMedium),
            Text(
              'How Are you Today?',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: ColorsPalette.textGray,
                  ),
            ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsPalette.brightGery,
          child: Badge(
            child: Icon(Icons.notifications),
          ),
        )
      ],
    );
  }
}
