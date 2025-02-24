import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthServices {
  SupabaseClient supabase = Supabase.instance.client;

  Future<UserEntity> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    final AuthResponse response = await supabase.auth.signUp(
      email: email,
      password: password,
      data: {'name': name},
    );
    return UserModel.fromSupabaseUser(response.user!);
  }

  Future<UserEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final AuthResponse response = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return UserModel.fromSupabaseUser(response.user!);
  }

  Future<void> verifyEmail({
    required String code,
    required String email,
  }) async {
    await supabase.auth.verifyOTP(
      type: OtpType.email,
      email: email,
      token: code,
    );
  }

  Future<void> resendOtp({
    required String email,
  }) async {
    await supabase.auth.resend(
      type: OtpType.signup,
      email: email,
    );
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<void> resetPassword({
    required String email,
  }) async {
    await supabase.auth.resetPasswordForEmail(
      email,
    );
  }

  Future<void> updatePassword({
    required String newPassword,
  }) async {
    await supabase.auth.updateUser(
      UserAttributes(password: newPassword),
    );
  }

  Future<UserEntity> getUser() async {
    UserResponse u = await supabase.auth.getUser();

    return UserModel.fromSupabaseUser(u.user!);
  }
}
