import 'package:ecom_bloc/main.dart';
import 'package:ecom_bloc/pages/sign_in/sign_in.dart';
import 'package:ecom_bloc/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';

import 'route_name.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.welcomepage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Welcome(),
        );

      case RouteName.homepage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MyHomePage(),
        );

      case RouteName.signIn:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignInPage(),
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
