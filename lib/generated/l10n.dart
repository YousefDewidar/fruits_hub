// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount1 {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount1',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get dontHaveAccount2 {
    return Intl.message(
      'Sign Up',
      name: 'dontHaveAccount2',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get face {
    return Intl.message(
      'Sign in with Facebook',
      name: 'face',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get google {
    return Intl.message(
      'Sign in with Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get apple {
    return Intl.message(
      'Sign in with Apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get required {
    return Intl.message(
      'This field is required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get createAcc {
    return Intl.message(
      'Create a new account',
      name: 'createAcc',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get termCon1 {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'termCon1',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termCon2 {
    return Intl.message(
      'Terms & Conditions',
      name: 'termCon2',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get allreadyhaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'allreadyhaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get signupSuccess {
    return Intl.message(
      'Account created successfully',
      name: 'signupSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetPassAppbar {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetPassButton {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, just enter your email address and we will send you a verification code.`
  String get forgetPass3 {
    return Intl.message(
      'Don\'t worry, just enter your email address and we will send you a verification code.',
      name: 'forgetPass3',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyAppbar {
    return Intl.message(
      'Verify Code',
      name: 'verifyAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we sent to your email address`
  String get verifyBody {
    return Intl.message(
      'Enter the code we sent to your email address',
      name: 'verifyBody',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyButton {
    return Intl.message(
      'Verify Code',
      name: 'verifyButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get verifyAgain {
    return Intl.message(
      'Resend Code',
      name: 'verifyAgain',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassAppbar {
    return Intl.message(
      'New Password',
      name: 'newPassAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get newPassButton {
    return Intl.message(
      'Change Password',
      name: 'newPassButton',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password to log in`
  String get newPassBody {
    return Intl.message(
      'Create a new password to log in',
      name: 'newPassBody',
      desc: '',
      args: [],
    );
  }

  /// `Confirm `
  String get confirmPass {
    return Intl.message(
      'Confirm ',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get newPassDone {
    return Intl.message(
      'Password changed successfully',
      name: 'newPassDone',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
