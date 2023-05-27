import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_bloc.dart';
import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SettingBlocs, SettingsStates>(
        builder: (context, state) {
          return const SingleChildScrollView(
            child: Center(
              child: Text('Hello Settings'),
            ),
          );
        },
      ),
    );
  }
}
