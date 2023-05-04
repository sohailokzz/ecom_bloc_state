import 'dart:developer';

import 'package:ecom_bloc/common/constants.dart';
import 'package:ecom_bloc/common/widgets/reusable_toast.dart';
import 'package:ecom_bloc/global.dart';
import 'package:ecom_bloc/presentation/pages/sign_in/bloc/signin_bloc.dart';
import 'package:ecom_bloc/route_service/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;

  SignInController({
    required this.context,
  });

  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          reusableToastMsg(
            msg: 'You need fill email',
          );
          return;
        }
        if (password.isEmpty) {
          reusableToastMsg(
            msg: 'You need fill Password',
          );
        }

        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if (credential.user == null) {
            reusableToastMsg(
              msg: 'User does not exist',
            );
          }
          if (!credential.user!.emailVerified) {
            reusableToastMsg(
              msg: 'User not verified',
            );
          }

          var user = credential.user;
          if (user != null) {
            log('User exist');
            Global.storageService.setString(
              AppConstant.storageusertokenkey,
              '12345678',
            );

            if (context.mounted) {
              Navigator.pushNamed(
                context,
                RouteName.mainpage,
              );
            }
          } else {
            reusableToastMsg(
              msg: 'Not a user of this platform',
            );
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            reusableToastMsg(
              msg: 'User not found',
            );
          } else if (e.code == 'wrong-password') {
            reusableToastMsg(
              msg: 'Wrong password try again',
            );
          } else if (e.code == 'invalid-email') {
            reusableToastMsg(
              msg: 'Invalid email',
            );
          }
        }
      }
    } catch (e) {
      reusableToastMsg(
        msg: e.toString(),
      );
    }
  }
}
