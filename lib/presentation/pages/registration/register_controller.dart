import 'package:ecom_bloc/common/widgets/reusable_toast.dart';
import 'package:ecom_bloc/presentation/pages/registration/bloc/register_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationController {
  final BuildContext context;

  const RegistrationController({
    required this.context,
  });

  Future<void> handleRegistration() async {
    final state = context.read<RegistrationBlocs>().state;
    String userName = state.userName;
    String emailAddress = state.email;
    String password = state.password;
    String confirmPassword = state.confirmPassword;

    if (userName.isEmpty) {
      reusableToastMsg(
        msg: 'Please enter your Username',
      );
      return;
    }

    if (emailAddress.isEmpty) {
      reusableToastMsg(
        msg: 'Please enter your Email',
      );
      return;
    }
    if (password.isEmpty) {
      reusableToastMsg(
        msg: 'Please enter Password',
      );
      return;
    }
    if (confirmPassword.isEmpty) {
      reusableToastMsg(
        msg: 'Please enter confirm Password',
      );
      return;
    }

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        reusableToastMsg(
          msg:
              'Verification email has been send to your email kindly verify your email.',
        );

        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        reusableToastMsg(
          msg: 'Weak Password',
        );
      } else if (e.code == 'invalid-email') {
        reusableToastMsg(
          msg: 'Invalid Email',
        );
      } else if (e.code == 'email-already-in-use') {
        reusableToastMsg(
          msg: 'Email already in Use',
        );
      } else if (e.code == 'operation-not-allowed') {
        reusableToastMsg(
          msg: 'Operation Not allowed',
        );
      }
    }
  }
}
