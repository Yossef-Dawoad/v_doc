import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_doc/core/routes/routes.dart';
import 'package:v_doc/core/themes/colors.dart';
import 'package:v_doc/core/themes/styles.dart';
import 'package:v_doc/core/utils/extensions/route.dart';

import 'widgets/doc_appbar.dart';
import 'widgets/onboarding_main_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DocAppBar(),
                SizedBox(height: 30.h),
                const MainOnBoardingWidget(),
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc.',
                  textAlign: TextAlign.center,
                  style: TextStyles.f13w400gray,
                ),
                SizedBox(height: 30.h),
                TextButton(
                  onPressed: () => context.pushNamedRoute(Routes.loginScreen),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(ColorsPalette.primaryColor),
                    minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 52.h),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text('Get Started', style: TextStyles.f24w700white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
