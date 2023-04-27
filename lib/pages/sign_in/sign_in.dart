import 'package:ecom_bloc/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/sign_in_widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
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
              padding: EdgeInsets.only(left: 25.w),
              child: Column(
                children: [
                  builText('Email'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
