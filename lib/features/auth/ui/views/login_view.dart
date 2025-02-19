import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'تسجيل دخول',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const SafeArea(child: LoginViewBody()));
  }
}
