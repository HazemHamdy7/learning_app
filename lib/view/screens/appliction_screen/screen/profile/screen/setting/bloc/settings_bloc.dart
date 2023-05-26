import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/screen/profile/screen/setting/bloc/settings_event.dart';
import 'package:udemy/view/screens/appliction_screen/screen/profile/screen/setting/bloc/settings_state.dart';

class SettingsBlocs extends Bloc<SettingsEvents, SettingsStates> {
  SettingsBlocs() : super(const SettingsStates()) {
    on<TriggerSetings>(_triggerSettins);
  }

  _triggerSettins(SettingsEvents event, Emitter<SettingsStates> emit) {
    emit(const SettingsStates());
  }
}
