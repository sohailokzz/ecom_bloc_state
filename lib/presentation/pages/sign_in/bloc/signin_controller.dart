import 'dart:developer';

import 'package:ecom_bloc/common/apis/user_api.dart';
import 'package:ecom_bloc/common/entities/entities.dart';
import 'package:ecom_bloc/common/widgets/reusable_toast.dart';
import 'package:ecom_bloc/presentation/pages/sign_in/bloc/signin_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
            String? displayName = user.displayName;
            String? email = user.email;
            String? id = user.uid;
            String? photoUrl = user.photoURL;

            LoginRequestEntity loginRequestEntity = LoginRequestEntity();
            loginRequestEntity.avatar = photoUrl;
            loginRequestEntity.name = displayName;
            loginRequestEntity.open_id = id;
            loginRequestEntity.email = email;
            loginRequestEntity.type = 1;
            log('User exist');
            asyncPostAllData(loginRequestEntity);

            // Global.storageService.setString(
            //   AppConstant.storageusertokenkey,
            //   '12345678',
            // );

            // if (context.mounted) {
            //   Navigator.pushNamed(
            //     context,
            //     RouteName.mainpage,
            //   );
            // }
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

  Future<void> asyncPostAllData(LoginRequestEntity loginRequestEntity) async {
    EasyLoading.show(
      indicator: const CircularProgressIndicator(),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );
    var result = await UserAPI.login(
      param: loginRequestEntity,
    );
  }
}
