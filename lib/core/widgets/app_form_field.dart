import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors.dart';
import '../themes/styles.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;

  const CustomFormField({
    super.key,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: TextStyles.f13w400gray.copyWith(color: const Color(0xFF242424)),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: 20.w,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsPalette.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsPalette.textGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: TextStyles.f13w400gray,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
