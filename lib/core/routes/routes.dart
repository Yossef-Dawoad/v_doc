class Routes {
  static const String home = '/';
  static const String onBoardingScreens = '/onboarding';
  static const String loginScreen = '/login';

  // static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case home:
  //       return MaterialPageRoute(builder: (_) => HomeScreen());
  //     default:
  //       return _errorRoute();
  //   }
  // }

  // static Route<dynamic> _errorRoute() {
  //   return MaterialPageRoute(
  //     builder: (_) => Scaffold(
  //       body: Center(
  //         child: Text('Error: No route defined for ${settings.name}'),
  //       ),
  //     ),
  //   );
  // }
}
