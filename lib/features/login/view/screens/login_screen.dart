import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_doc/core/routes/routes.dart';
import 'package:v_doc/core/themes/colors.dart';
import 'package:v_doc/core/themes/styles.dart';
import 'package:v_doc/core/utils/extensions/route.dart';

import 'widgets/authenticate_form.dart';
import 'widgets/login_bloc_listener.dart';
import '../../../../core/widgets/terms_condition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Text(
                  'Welcome Back',
                  style: TextStyles.f24w700white
                      .copyWith(color: ColorsPalette.primaryColor),
                ),
                SizedBox(height: 10.h),
                Text(
                  'we\'r exicted to have you back, can\'t wait to see what your\'ve been up to since your last login',
                  style: TextStyles.f13w400gray,
                ),
                SizedBox(height: 40.h),
                Column(
                  children: [
                    const AuthentecationForm(),
                    const SizedBox(height: 16.0),
                    const TermsAndConditionTextMin(),
                    const SizedBox(height: 16.0),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't to have an account?",
                            style: TextStyles.f13w400gray,
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyles.f13w400gray
                                .copyWith(color: ColorsPalette.primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => context.pushReplacementNamedRoute(
                                    Routes.signUpScreen,
                                  ),
                          ),
                        ],
                      ),
                    ),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
