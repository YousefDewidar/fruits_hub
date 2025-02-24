import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/supabase/supabase_auth_services.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';

class SupabaseRepoImpl implements AuthRepo {
  final SupabaseAuthServices services;
  SupabaseRepoImpl(this.services);

  @override
  Future<Either<Failuer, UserEntity>> signupWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      UserEntity user = await services.signUpWithEmailAndPassword(
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
      UserEntity user = await services.signInWithEmailAndPassword(
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
      await services.signOut();
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
      await services.resetPassword(email: email);
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
      await services.updatePassword(newPassword: newPassword);
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
      await services.verifyEmail(
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
      await services.resendOtp(email: email);

      return right(null);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> signInWithFacebook() async {
    try {
      await services.signInWithFacebook();
      return right(null);
    } catch (e) {
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, void>> signInWithGoogle() async {
    try {
      await services.signInWithGoogle();
      return right(null);
    } catch (e) {
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> getUser() async {
    try {
      UserEntity user = await services.getUser();
      return right(user);
    } catch (e) {
      if (e is AuthException) {
        return left(Failuer(message: e.message));
      }
      return left(Failuer(message: 'حدث خطأ ما حاول مرة أخرى'));
    }
  }
}
