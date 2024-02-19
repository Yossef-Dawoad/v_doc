import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_hub/core/routes/routes.dart';
import 'package:recipe_hub/core/themes/colors.dart';
import 'package:recipe_hub/core/themes/styles.dart';
import 'package:recipe_hub/core/utils/extensions/route.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.f32w900prime,
                ),
                const SizedBox(height: 8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.f13w400gray,
                ),
                const SizedBox(height: 36),
                Column(
                  children: [
                    //TODO FORM HERE
                    const SizedBox(height: 16),
                    //TODO  TermsAndConditionsText(),
                    const SizedBox(height: 30),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already to have an account?',
                            style: TextStyles.f13w400gray,
                          ),
                          TextSpan(
                            text: 'LogIn',
                            style: TextStyles.f13w400gray
                                .copyWith(color: ColorsPalette.primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => context.pushReplacementNamedRoute(
                                    Routes.loginScreen,
                                  ),
                          ),
                        ],
                      ),
                    ),
                    // TODO SignupBlocListener(),
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
