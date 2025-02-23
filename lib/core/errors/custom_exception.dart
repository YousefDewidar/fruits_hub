class Failuer {
  final String message;

  Failuer({required this.message});
}

class FirebaseAuthError extends Failuer {
  FirebaseAuthError({required super.message});

  factory FirebaseAuthError.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return FirebaseAuthError(message: 'البريد الإلكتروني مستخدم بالفعل');
      case 'invalid-email':
        return FirebaseAuthError(message: 'البريد الإلكتروني غير صالح');
      case 'operation-not-allowed':
        return FirebaseAuthError(message: 'لا يمكن التسجيل في هذا الحساب');
      case 'weak-password':
        return FirebaseAuthError(message: 'كلمة المرور ضعيفة');
      default:
        return FirebaseAuthError(message: 'حدث خطأ ما');
    }
  }
}
