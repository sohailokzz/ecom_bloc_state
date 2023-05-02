import 'package:ecom_bloc/presentation/pages/sign_in/bloc/signin_events.dart';
import 'package:ecom_bloc/presentation/pages/sign_in/bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates> {
  SignInBloc()
      : super(
          const SignInStates(
            email: '',
            password: '',
          ),
        ) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  void _emailEvent(EmailEvent event, Emitter<SignInStates> emit) {
    // print('My Email is ${event.email}');
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInStates> emit) {
    // print('My Email is ${event.password}');
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }
}
