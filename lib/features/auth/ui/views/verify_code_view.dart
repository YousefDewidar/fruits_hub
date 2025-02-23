import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/managers/verify/verify_cubit.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/verify/verify_code_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(context, S.of(context).verifyAppbar),
        body: const SafeArea(
          child: VerifyCodeViewBody(),
        ),
      ),
    );
  }
}
