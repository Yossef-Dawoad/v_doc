import 'package:flutter/material.dart';
import 'package:v_doc/core/themes/styles.dart';

class TermsAndConditionTextMin extends StatelessWidget {
  const TermsAndConditionTextMin({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: 'By Logging, you agree to our',
              style: TextStyles.f13w400gray),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.f13w400gray.copyWith(fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: 'and',
            style: TextStyles.f13w400gray.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.f13w400gray.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
