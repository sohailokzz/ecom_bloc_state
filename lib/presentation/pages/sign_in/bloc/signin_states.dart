import 'package:flutter/widgets.dart';

@immutable
class SignInStates {
  final String email;
  final String password;

  const SignInStates({
    required this.email,
    required this.password,
  });

  SignInStates copyWith({
    String? email,
    String? password,
  }) {
    return SignInStates(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
