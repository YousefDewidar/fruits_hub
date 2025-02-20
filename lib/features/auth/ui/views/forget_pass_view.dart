import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/icon_back.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/forget_pass/forget_pass_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(S.of(context).forgetPassAppbar, style: TextStyles.bold19),
        centerTitle: true,
        leadingWidth: 80,
        leading: const IconsBack(),
      ),
      body: const SafeArea(
        child: ForgetPassViewBody(),
      ),
    );
    
  }
}
