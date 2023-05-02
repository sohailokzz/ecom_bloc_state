import 'package:ecom_bloc/presentation/pages/registration/bloc/register_events.dart';
import 'package:ecom_bloc/presentation/pages/registration/bloc/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationBlocs extends Bloc<RegistrationEvents, RegistrationStates> {
  RegistrationBlocs()
      : super(
          const RegistrationStates(
            userName: '',
            email: '',
            password: '',
            confirmPassword: '',
          ),
        ) {
    on<UserNameEvent>(_regUserNameEvent);
    on<RegEmailEvent>(_regEmailEvent);
    on<RegPasswordEvent>(_regPasswordEvent);
    on<RegConfPassEvent>(_regConfPassEvent);
  }

  void _regUserNameEvent(
    UserNameEvent event,
    Emitter<RegistrationStates> emit,
  ) {
    emit(
      state.copyWith(
        userName: event.userName,
      ),
    );
  }

  void _regEmailEvent(
    RegEmailEvent event,
    Emitter<RegistrationStates> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _regPasswordEvent(
    RegPasswordEvent event,
    Emitter<RegistrationStates> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _regConfPassEvent(
    RegConfPassEvent event,
    Emitter<RegistrationStates> emit,
  ) {
    emit(
      state.copyWith(
        confirmPassword: event.confirmPassword,
      ),
    );
  }
}
