import 'package:flutter/material.dart';

class HeadlineTitleRow extends StatelessWidget {
  const HeadlineTitleRow({
    super.key,
    required this.title,
    this.onSeeAllPressed,
  });
  final String title;
  final VoidCallback? onSeeAllPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (onSeeAllPressed != null)
          TextButton(
            onPressed: onSeeAllPressed,
            child: Text(
              'See All',
              style:
                  Theme.of(context).textTheme.titleSmall?.copyWith(color: const Color(0xff227cff)),
            ),
          ),
      ],
    );
  }
}
