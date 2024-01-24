import 'package:app/src/features/sign_in/presentation/pages/sign_in_screen.dart';
import 'package:app/src/features/sign_up/presentation/pages/sign_up_screen.dart';
import 'package:app/src/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static const String splashRoute = '/splashRoute';
  static const String signInRoute = 'signInRoute';
  static const String signUpRoute = 'signUpRoute';

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
