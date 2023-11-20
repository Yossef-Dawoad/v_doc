import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_hub/core/themes/colors.dart';

class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle f24w700black = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle f24w700white = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle f32w900prime = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w900,
    color: ColorsPalette.primaryColor,
  );
  static TextStyle f13w400gray = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w200,
    color: ColorsPalette.textGray,
  );
}
