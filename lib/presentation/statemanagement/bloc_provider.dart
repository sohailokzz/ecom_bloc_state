import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_blocs.dart';
import '../pages/sign_in/bloc/signin_bloc.dart';
import '../pages/welcome/bloc/welcome_blocs.dart';

class AllBlocProvider {
  static get allBlocProvider => [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (context) => AppBlocs(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
      ];
}
