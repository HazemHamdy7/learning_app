import 'package:flutter_bloc/flutter_bloc.dart';
import 'welcome_event.dart';
import 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    on<WelcomeEvent>(
      (event, emit) {
        // print("=====Welcom Bloc");
        emit(WelcomeState(page: state.page));
      },
    );
  }
}
