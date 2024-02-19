import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_hub/core/themes/styles.dart';

class DocAppBar extends StatelessWidget {
  const DocAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('./assets/svgs/doc_logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'DocDoc',
          style: TextStyles.f24w700white.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
