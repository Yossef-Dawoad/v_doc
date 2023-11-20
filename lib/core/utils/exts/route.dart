import 'package:flutter/material.dart';

extension NavigatingExtensions on BuildContext {
  Future<T?> pushRoute<T>(Widget page) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => page));
  }

  Future<T?> pushNamedRoute<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<T?> pushNamedRouteAndRemoveUntil<T>(
    String routeName,
    Widget page, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(routeName),
      arguments: arguments,
    );
  }

  void pushReplacementRoute(Widget page) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  Future<T?> pushReplacementNamedRoute<T>(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void popRoute<T>([T? result]) {
    Navigator.of(this).pop(result);
  }
}
