import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/presentation/pages/profile/profile_widgets/profile_widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: builProfileAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              buildProfileImage(),
              32.myPh,
              buildProfileListveiw(),
            ],
          ),
        ),
      ),
    );
  }
}
