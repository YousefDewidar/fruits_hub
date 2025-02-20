import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/verify/otp_widget.dart';
import 'package:fruits_hub/generated/l10n.dart';

class VerifyCodeViewBody extends StatefulWidget {
  const VerifyCodeViewBody({super.key});

  @override
  State<VerifyCodeViewBody> createState() => _VerifyCodeViewBodyState();
}

class _VerifyCodeViewBodyState extends State<VerifyCodeViewBody> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
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
              '${S.of(context).verifyBody} yous******@gmail.com',
              style: TextStyles.semiBold16.copyWith(color: AppColors.greyColor),
            ),
            const SpaceV(30),
            OtpWidget(otpControllers: _otpControllers),
            const SpaceV(30),
            CustomButton(
                title: S.of(context).verifyButton,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.newPass);
                }),
            const SpaceV(25),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).verifyAgain,
                  textAlign: TextAlign.end,
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
