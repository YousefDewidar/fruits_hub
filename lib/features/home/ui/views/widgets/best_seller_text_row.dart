import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellerTextRow extends StatelessWidget {
  const BestSellerTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).mostPop,
          style: TextStyles.bold16,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.mostSelling);
          },
          child: Text(
            S.of(context).more,
            style: TextStyles.regular13.copyWith(color: AppColors.greyColor),
          ),
        ),
      ],
    );
  }
}
