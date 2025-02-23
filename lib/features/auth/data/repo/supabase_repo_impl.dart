
import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/supabase/supabase_auth_services.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRepoImpl implements AuthRepo {
  @override
  Future<Either<Failuer, UserEntity>> signupWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      UserEntity user = await SupabaseAuthServices.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );

      return right(user);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserEntity user = await SupabaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(user);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> signOut() async {
    try {
      await SupabaseAuthServices.signOut();
      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> resetPassword({required String email}) async {
    try {
      await SupabaseAuthServices.resetPassword(email: email);
      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> updatePassword(
      {required String newPassword}) async {
    try {
      await SupabaseAuthServices.updatePassword(newPassword: newPassword);
      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> verifyEmail(
      {required String code, required String email}) async {
    try {
      await SupabaseAuthServices.verifyEmail(
        code: code,
        email: email,
      );
      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> resendOtp({required String email}) async {
    try {
      await SupabaseAuthServices.resendOtp(email: email);

      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
