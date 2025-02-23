import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/features/auth/ui/views/forget_pass_view.dart';
import 'package:fruits_hub/features/auth/ui/views/login_view.dart';
import 'package:fruits_hub/features/auth/ui/views/new_password_view.dart';
import 'package:fruits_hub/features/auth/ui/views/signup_view.dart';
import 'package:fruits_hub/features/auth/ui/views/verify_code_view.dart';
import 'package:fruits_hub/features/home/ui/views/home_view.dart';
import 'package:fruits_hub/features/splash/ui/views/landing_view.dart';
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
    case Routes.verify:
      return MaterialPageRoute(
          builder: (context) => const VerifyCodeView(email: ''));
    case Routes.newPass:
      return MaterialPageRoute(builder: (context) => const NewPasswordView());
    case Routes.landing:
      return MaterialPageRoute(builder: (context) => const LandingView());
    case Routes.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return null;
  }
}
