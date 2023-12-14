import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_hub/core/themes/colors.dart';
import 'package:recipe_hub/core/themes/styles.dart';
import 'package:recipe_hub/core/widgets/app_form_field.dart';
import 'package:recipe_hub/core/widgets/app_text_btn.dart';

import 'widgets/terms_condition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.f24w700black
                    .copyWith(color: ColorsPalette.primaryColor),
              ),
              SizedBox(height: 10.h),
              Text(
                'we\'r exicted to have you back, can\'t wait to see what your\'ve been up to since your last login',
                style: TextStyles.f13w400gray,
              ),
              SizedBox(height: 40.h),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const CustomFormField(hintText: 'Email'),
                    const SizedBox(height: 18),
                    CustomFormField(
                      hintText: 'Password',
                      obscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () =>
                            setState(() => isObscureText = !isObscureText),
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forget Password?'),
                    ),
                    const SizedBox(height: 40),
                    CutomTextBtn(
                      text: 'Login',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 16.0),
                    const TermsAndConditionTextMin(),
                    const SizedBox(height: 16.0),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Already have an account?',
                              style: TextStyles.f13w400gray),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyles.f13w400gray
                                .copyWith(color: ColorsPalette.primaryColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
