import 'package:ecom_bloc/global.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/main_page.dart';
import 'package:ecom_bloc/presentation/pages/profile/settings/settings.dart';
import 'package:ecom_bloc/presentation/pages/sign_in/sign_in.dart';
import 'package:ecom_bloc/presentation/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/registration/registration.dart';
import 'route_name.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    bool deviceOpenFirst = Global.storageService.deviceStore();
    bool isLoggedIn = Global.storageService.getLoggedIn();
    switch (settings.name) {
      case RouteName.welcomepage:
        if (settings.name == RouteName.welcomepage && deviceOpenFirst) {
          if (isLoggedIn) {
            return MaterialPageRoute(
              builder: (BuildContext context) => const MainPage(),
            );
          }
          return MaterialPageRoute(
            builder: (BuildContext context) => const SignInPage(),
          );
        }
        return MaterialPageRoute(
          builder: (BuildContext context) => const Welcome(),
        );

      case RouteName.signIn:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignInPage(),
        );

      case RouteName.registration:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegistrationPage(),
        );

      case RouteName.mainpage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainPage(),
        );

      case RouteName.settings:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SettingsPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Selected'),
              ),
            );
          },
        );
    }
  }
}
