import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/pages/sign_in/bloc/signin_bloc.dart';
import 'package:ecom_bloc/pages/sign_in/bloc/signin_events.dart';
import 'package:ecom_bloc/pages/sign_in/bloc/signin_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/sign_in_widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: BlocBuilder<SignInBloc, SignInStates>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                40.myPh,
                buildThirdPartyRow(context),
                20.myPh,
                Center(
                  child: builText('Or use your email account to login'),
                ),
                66.myPh,
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      builText('Email'),
                      10.myPh,
                      buildTextField(
                        hintText: 'Enter Your Email',
                        fieldType: 'email',
                        iconName: 'user',
                        func: (value) {
                          context.read<SignInBloc>().add(
                                EmailEvent(value),
                              );
                        },
                      ),
                      20.myPh,
                      builText('Password'),
                      10.myPh,
                      buildTextField(
                        hintText: 'Enter Your Password',
                        fieldType: 'password',
                        iconName: 'lock',
                        func: (value) {
                          context.read<SignInBloc>().add(
                                PasswordEvent(value),
                              );
                        },
                      ),
                      20.myPh,
                      buildForgotPassword(),
                      60.myPh,
                      buildLogAndRegButton(
                        buttonTitle: 'Log In',
                        buttonType: 'login',
                      ),
                      20.myPh,
                      buildLogAndRegButton(
                        buttonTitle: 'Register',
                        buttonType: 'register',
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
