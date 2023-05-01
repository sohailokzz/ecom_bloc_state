import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/shared_widgets.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: buildAppBar(
        title: 'Sign up ',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.myPh,
            Center(
              child: builText('Enter Your details below & free sign up'),
            ),
            30.myPh,
            Padding(
              padding: EdgeInsets.only(
                left: 25.w,
                right: 25.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  builText('Username'),
                  3.myPh,
                  buildTextField(
                    hintText: 'Enter Your Username',
                    fieldType: 'username',
                    iconName: 'user',
                    func: (value) {},
                  ),
                  15.myPh,
                  builText('Email'),
                  3.myPh,
                  buildTextField(
                    hintText: 'Enter Your Email',
                    fieldType: 'email',
                    iconName: 'user',
                    func: (value) {},
                  ),
                  15.myPh,
                  builText('Password'),
                  3.myPh,
                  buildTextField(
                    hintText: 'Enter Your Password',
                    fieldType: 'password',
                    iconName: 'lock',
                    func: (value) {},
                  ),
                  15.myPh,
                  builText('Confirm Password'),
                  3.myPh,
                  buildTextField(
                    hintText: 'Enter Your confirm password',
                    fieldType: 'confirmpassword',
                    iconName: 'lock',
                    func: (value) {},
                  ),
                  15.myPh,
                  builText(
                      'By creating an account you to agree with our terms and conditions'),
                  30.myPh,
                  buildLogAndRegButton(
                    buttonTitle: 'Sign Up',
                    buttonType: 'login',
                    func: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
