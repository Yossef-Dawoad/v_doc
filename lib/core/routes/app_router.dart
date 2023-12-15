import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_hub/core/di/dependency_inject.dart';
import 'package:recipe_hub/core/routes/routes.dart';
import 'package:recipe_hub/features/login/logic/cubit/login_cubit.dart';
import 'package:recipe_hub/features/login/view/screens/login_screen.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      switch (settings.name) {
        Routes.loginScreen => MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: const LoginScreen(),
            ),
          ),
        Routes.onBoardingScreens =>
          MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
        _ => _errorRoute(settings.name)
      };

  static Route<dynamic> _errorRoute(String? pageName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('Error: No route defined for $pageName'),
        ),
      ),
    );
  }
}
