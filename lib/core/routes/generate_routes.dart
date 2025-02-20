import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/features/auth/ui/views/forget_pass_view.dart';
import 'package:fruits_hub/features/auth/ui/views/login_view.dart';
import 'package:fruits_hub/features/auth/ui/views/signup_view.dart';
import 'package:fruits_hub/features/splash/ui/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Routes.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case Routes.login:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case Routes.signUp:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case Routes.forgetPass:
      return MaterialPageRoute(builder: (context) => const ForgetPassView());
    default:
      return null;
  }
}
