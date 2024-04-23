import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_doc/core/di/dependency_inject.dart';
import 'package:v_doc/core/routes/routes.dart';
import 'package:v_doc/features/home/view/home_screen.dart';
import 'package:v_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:v_doc/features/login/view/screens/login_screen.dart';
import 'package:v_doc/features/signup/logic/cubit/signup_cubit.dart';
import 'package:v_doc/features/signup/view/signup_screen.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      switch (settings.name) {
        Routes.onBoardingScreens => MaterialPageRoute(
            builder: (_) => const OnBoardingScreen(),
          ),
        Routes.loginScreen => MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: const LoginScreen(),
            ),
          ),
        Routes.signUpScreen => MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => sl<SignupCubit>(),
              child: const SignupScreen(),
            ),
          ),
        Routes.home => MaterialPageRoute(builder: (_) => const HomeScreen()),
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
