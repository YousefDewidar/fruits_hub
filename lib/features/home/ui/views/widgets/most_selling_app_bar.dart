import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/icon_back.dart';
import 'package:fruits_hub/core/widgets/notification_icon.dart';
import 'package:fruits_hub/generated/l10n.dart';

class MostSellingAppBar extends StatelessWidget {
  const MostSellingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const IconsBack(),
        Text(
          S.of(context).mostPop,
          style: TextStyles.bold19,
        ),
        const NotificationIcon(),
      ],
    );
  }
}
