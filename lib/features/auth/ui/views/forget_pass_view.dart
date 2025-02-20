import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/forget_pass/forget_pass_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, S.of(context).forgetPassAppbar),
      body: const SafeArea(
        child: ForgetPassViewBody(),
      ),
    );
  }
}
