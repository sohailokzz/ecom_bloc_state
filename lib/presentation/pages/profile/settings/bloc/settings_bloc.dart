import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_events.dart';
import 'package:ecom_bloc/presentation/pages/profile/settings/bloc/settings_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingBlocs extends Bloc<SettingsEvents, SettingsStates> {
  SettingBlocs() : super(const SettingsStates()) {
    on<TriggerSettings>(_triggerSettings);
  }

  _triggerSettings(SettingsEvents events, Emitter<SettingsStates> emit) {
    emit(
      const SettingsStates(),
    );
  }
}
