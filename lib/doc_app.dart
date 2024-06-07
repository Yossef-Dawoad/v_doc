import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_doc/core/themes/colors.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter router;
  const DocApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe Hub',
        theme: ThemeData(
          primaryColor: ColorsPalette.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.home, //onBoardingScreens,
        onGenerateRoute: router.onGenerateRoute,
      ),
    );
  }
}
