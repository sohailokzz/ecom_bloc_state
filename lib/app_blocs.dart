import 'package:ecom_bloc/app_events.dart';
import 'package:ecom_bloc/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitState()) {
    on<IncrementEvent>((event, emit) {
      emit(
        AppState(counter: state.counter + 1),
      );
    });

    on<DecrementEvent>((event, emit) {
      emit(
        AppState(counter: state.counter - 1),
      );
    });
  }
}
