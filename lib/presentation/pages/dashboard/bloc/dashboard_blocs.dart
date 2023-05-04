import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_events.dart';
import 'dashboard_states.dart';

class DashboardBlocs extends Bloc<DashboardEvents, DashboardState> {
  DashboardBlocs()
      : super(
          const DashboardState(index: 0),
        ) {
    on<TriggerAppEvent>(
      (event, emit) {
        emit(
          DashboardState(
            index: event.index,
          ),
        );
      },
    );
  }
}
