import 'package:bloc/bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBlocs extends Bloc<AppEvent, AppState> {
  AppBlocs() : super(AppState()) {
    on<TriggerAppEvent>(
      (event, emit) {
        emit(AppState(index: event.index));
      },
    );
  }
}
