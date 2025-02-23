import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/firebase/firebase_auth_services.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failuer, UserEntity>> signupWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      UserEntity user = await FirebaseAuthServices.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );

      return right(user);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(FirebaseAuthError.fromCode(e.code));
      }
      return left(Failuer(message: "حدث خطأ ما حاول مرة أخرى"));
    }
  }

  @override
  signInWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
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

  @override
  signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }
}
