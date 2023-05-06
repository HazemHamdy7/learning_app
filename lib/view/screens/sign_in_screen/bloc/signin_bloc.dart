import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_event.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWithHH(email: event.email));
  }

//! check her for name email and password in line 17
  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWithHH(email: event.password));
  }
}
