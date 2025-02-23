import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/managers/signup_cubit.dart';
import 'package:fruits_hub/features/auth/ui/managers/signup_state.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/signup/signup_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(context, S.of(context).signUp),
        body: SafeArea(
          child: BlocConsumer<SignupCubit, SignupState>(
            listener: (context, state) {
              if (state is SignupSuccess) {
                showTopSnackBar(
                  Overlay.of(context),
                  const CustomSnackBar.success(
                    message: "تم انشاء الحساب بنجاح",
                  ),
                );
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SignupLoading,
                child: const SignupViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
