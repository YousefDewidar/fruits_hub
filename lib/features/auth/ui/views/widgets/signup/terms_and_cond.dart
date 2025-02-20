import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/signup/custom_check_box.dart';
import 'package:fruits_hub/generated/l10n.dart';

class TermsAndCond extends StatelessWidget {
  const TermsAndCond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomCheckBox(),
        const SpaceH(16),
        Expanded(
          child: Text(
            S.of(context).termCon1,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
        ),
        Expanded(
          child: Text(
            S.of(context).termCon2,
            style: TextStyles.semiBold13.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
