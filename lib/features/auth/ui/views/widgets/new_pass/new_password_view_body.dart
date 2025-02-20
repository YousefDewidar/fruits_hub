import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/password_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
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
            Text(
              S.of(context).newPassBody,
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xff0C0D0D),
              ),
            ),
            const SpaceV(30),
            PasswordField(controller: _passwordController),
            const SpaceV(16),
            PasswordField(
              controller: _confirmPasswordController,
              title: S.of(context).confirmPass,
            ),
            const SpaceV(30),
            CustomButton(
              title: S.of(context).newPassButton,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
