import 'package:flutter/widgets.dart';

@immutable
class RegistrationStates {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;

  const RegistrationStates({
    required this.userName,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  RegistrationStates copyWith({
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
  }) {
    return RegistrationStates(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}
