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
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 3,
      pinned: true,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: NotificationIcon(),
        ),
      ],
      leading: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
        child: IconsBack(),
      ),
      leadingWidth: 70,
      title: Text(
        S.of(context).mostPop,
        style: TextStyles.bold19,
      ),
      centerTitle: true,
    );
  }
}
