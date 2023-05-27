import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_bloc.dart';
import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_states.dart';
import 'package:ecom_bloc/presentation/pages/profile/settings/setting_widgets/setting_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildSettingAppBar(),
      body: BlocBuilder<SettingBlocs, SettingsStates>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  buildLogoutButton(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
