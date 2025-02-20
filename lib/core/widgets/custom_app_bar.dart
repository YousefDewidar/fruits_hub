import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/icon_back.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(title, style: TextStyles.bold19),
    centerTitle: true,
    leadingWidth: 80,
    leading: const IconsBack(),
  );
}
