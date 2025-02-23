abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupFailure extends SignupState {
  final String message;
  SignupFailure({required this.message});
}

class SignupSuccess extends SignupState {}

class EnableTermsAndCondState extends SignupState {
  final bool value;
  EnableTermsAndCondState({required this.value});
}
