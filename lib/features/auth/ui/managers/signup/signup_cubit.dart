import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/managers/signup/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  AuthRepo authRepo;
  SignupCubit(this.authRepo) : super(SignupInitial());

  Future<void> signupWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignupLoading());

    Either<Failuer, UserEntity> response =
        await authRepo.signupWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );

    response.fold((failuer) {
      emit(SignupFailure(message: failuer.message));
      emit(EnableTermsAndCondState(value: true));
    }, (user) {
      emit(SignupSuccess());
      emit(EnableTermsAndCondState(value: true));
    });
  }


  void enableTermsAndCond(bool value) {
    emit(EnableTermsAndCondState(value: value));
  }
}
