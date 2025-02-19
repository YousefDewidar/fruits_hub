import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/dont_have_acc.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/forget_pass_text_button.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/social_login_list.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late TextEditingController _emailCon;
  late TextEditingController _passCon;

  @override
  void initState() {
    _emailCon = TextEditingController();
    _passCon = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SpaceV(10),
            CustomTextField(controller: _emailCon, hint: S.of(context).email),
            const SpaceV(16),
            PasswordField(controller: _passCon),
            const SpaceV(8),
            const ForgetPasswordTextButton(),
            const SpaceV(30),
            CustomButton(onPressed: () {}, title: S.of(context).login),
            const SpaceV(26),
            const DontHaveAcc(),
            const SpaceV(28),
            const OrDivider(),
            const SpaceV(16),
            const SocialLoginList(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailCon.dispose();
    _passCon.dispose();
    super.dispose();
  }
}
