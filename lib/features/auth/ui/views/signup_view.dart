import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/signup/signup_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, S.of(context).signUp),
      body: const SafeArea(
        child: SignupViewBody(),
      ),
    );
  }
}
