import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/dont_have_acc.dart';

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
            CustomTextField(
              controller: _emailCon,
              hint: 'البريد الالكتروني',
            ),
            const SpaceV(16),
            CustomTextField(
              controller: _emailCon,
              hint: 'كلمة المرور',
            ),
            const SpaceV(10),
            Text(
              'نسيت كلمة المرور؟',
              textAlign: TextAlign.end,
              style: TextStyles.regular22.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            const SpaceV(25),
            CustomButton(
              onPressed: () {},
              title: 'تسجيل دخول',
            ),
            const SpaceV(20),
            const DontHaveAcc(),
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
