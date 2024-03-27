import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  const CustomTextBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.blue.withAlpha(30)),
        fixedSize: MaterialStateProperty.all(
          Size(width?.w ?? double.maxFinite, height?.h ?? 50.h),
        ),
        padding: MaterialStateProperty.all(
          padding ??
              EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 14.h,
              ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
