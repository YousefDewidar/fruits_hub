import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/managers/login/login_cubit.dart';
import 'package:fruits_hub/features/auth/ui/managers/login/login_state.dart';
import 'package:fruits_hub/features/auth/ui/views/verify_code_view.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/custom_text_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/dont_have_acc.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/forget_pass_text_button.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/or_divider.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/password_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/login/social_login_list.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passCon = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _emailCon.dispose();
    _passCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHoripadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SpaceV(10),
              CustomTextField(
                controller: _emailCon,
                hint: S.of(context).email,
              ),
              const SpaceV(16),
              PasswordField(
                controller: _passCon,
              ),
              const SpaceV(8),
              const ForgetPasswordTextButton(),
              const SpaceV(25),
              BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  handleEmailNotConfirmed(state, context);
                },
                child: CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginCubit>().loginWithEmailAndPassword(
                            email: _emailCon.text,
                            password: _passCon.text,
                          );
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  title: S.of(context).login,
                ),
              ),
              const SpaceV(26),
              const DontHaveAcc(),
              const SpaceV(28),
              const OrDivider(),
              const SpaceV(16),
              const SocialLoginList(),
            ],
          ),
        ),
      ),
    );
  }

  void handleEmailNotConfirmed(LoginState state, BuildContext context) {
    if (state is LoginFailure) {
      if (state.message == "Email not confirmed") {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            AuthRepo authRepo = getIt.get<AuthRepo>();
            authRepo.resendOtp(email: _emailCon.text);
            return VerifyCodeView(email: _emailCon.text);
          },
        ));
      }
    }
  }
}
