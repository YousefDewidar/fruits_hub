import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(S.of(context).login, style: TextStyles.bold19),
          centerTitle: true,
        ),
        body: const SafeArea(child: LoginViewBody()));
  }
}
