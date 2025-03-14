import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/managers/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  AuthRepo authRepo;
  LoginCubit(this.authRepo) : super(LoginInitial());

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    Either<Failuer, UserEntity> response =
        await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    response.fold((failuer) {
      emit(LoginFailure(message: failuer.message));
    }, (user) {
      emit(LoginSuccess());
    });
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoading());
    final response = await authRepo.signInWithGoogle();
    response.fold((failuer) {
      emit(LoginFailure(message: failuer.message));
    }, (user) {
      emit(LoginSuccess());
    });
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoading());
    final response = await authRepo.signInWithFacebook();
    response.fold((failuer) {
      emit(LoginFailure(message: failuer.message));
    }, (user) {
      emit(LoginSuccess());
    });
  }

  sendCodeToEmail({required String email}) async {
    await authRepo.resetPassword(email: email);
  }
}
