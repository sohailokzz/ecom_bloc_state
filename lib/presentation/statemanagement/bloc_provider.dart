import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/dashboard/bloc/dashboard_blocs.dart';
import '../pages/registration/bloc/register_bloc.dart';
import '../pages/sign_in/bloc/signin_bloc.dart';
import '../pages/welcome/bloc/welcome_blocs.dart';

class AllBlocProvider {
  static get allBlocProvider => [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        // BlocProvider(
        //   create: (context) => AppBlocs(),
        // ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
          create: (context) => RegistrationBlocs(),
        ),
        BlocProvider(
          create: (context) => DashboardBlocs(),
        ),
      ];
}
