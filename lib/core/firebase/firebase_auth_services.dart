import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class FirebaseAuthServices {
  FirebaseAuthServices._();
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<UserEntity> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // Update display name
    await credential.user?.updateDisplayName(name);
    return UserEntity(
      id: credential.user!.uid,
      email: email,
      name: name,
    );
  }
}
