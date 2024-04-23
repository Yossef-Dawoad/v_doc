import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_doc/core/themes/colors.dart';

class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle f13w400gray = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsPalette.textGray,
  );

  static TextStyle f18w400black = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
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
}
