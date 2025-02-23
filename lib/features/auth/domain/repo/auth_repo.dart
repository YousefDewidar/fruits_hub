import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failuer, UserEntity>> signupWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
  signInWithEmailAndPassword({required String email, required String password});

  signInWithGoogle();

  signInWithApple();

  signInWithFacebook();

  signOut();
}
