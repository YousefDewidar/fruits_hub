import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthServices {
  SupabaseAuthServices._();
  static SupabaseClient supabase = Supabase.instance.client;

  static Future<UserEntity> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    final AuthResponse response = await supabase.auth.signUp(
      email: email,
      password: password,
      data: {'name': name},
    );

    return UserEntity(
      id: response.user!.id,
      email: response.user!.email!,
      name: response.user!.userMetadata!['name'],
    );
  }

  static Future<UserEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final AuthResponse response = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    return UserEntity(
      id: response.user!.id,
      email: response.user!.email!,
      name: response.user!.userMetadata!['name'],
    );
  }

  static Future<void> verifyEmail({
    required String code,
    required String email,
  }) async {
    await supabase.auth.verifyOTP(
      type: OtpType.email,
      email: email,
      token: code,
    );
  }

  static Future<void> resendOtp({
    required String email,
  }) async {
    await supabase.auth.resend(
      type: OtpType.signup,
      email: email,
    );
  }

  static Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  static Future<void> resetPassword({
    required String email,
  }) async {
    await supabase.auth.resetPasswordForEmail(
      email,
    );
  }

  static Future<void> updatePassword({
    required String newPassword,
  }) async {
    await supabase.auth.updateUser(
      UserAttributes(password: newPassword),
    );
  }

  static Future<UserEntity> getUser() async {
    UserResponse u = await supabase.auth.getUser();

    return UserEntity(
      id: u.user!.id,
      email: u.user!.email!,
      name: u.user!.userMetadata!['name'],
    );
  }
}
