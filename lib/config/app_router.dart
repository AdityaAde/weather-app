import 'package:flutter/material.dart';
import '../view/splash/splash_screen.dart';
import '../view/view.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return SplashScreen.route();
      case '/home':
        return HomeScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const Scaffold(
        body: Center(child: Text('Something went wrong')),
      ),
    );
  }
}
