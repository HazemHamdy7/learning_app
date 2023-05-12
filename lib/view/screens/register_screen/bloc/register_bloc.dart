import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_event.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_state.dart';

class RegisterBlocs extends Bloc<RegisterEvent, RegisterState> {
  RegisterBlocs() : super(RegisterState()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEventR>(_emailEvent);
    on<PasswordEventR>(_passwordEvent);
    on<RePasswordEvent>(_rePasswordEvent);
  }
  void _userNameEvent(UserNameEvent event, Emitter<RegisterState> emit) {
    debugPrint(event.userName);
    emit(state.copyWithRegister(userName: event.userName));
  }

  void _emailEvent(EmailEventR event, Emitter<RegisterState> emit) {
    debugPrint(event.email);
    emit(state.copyWithRegister(email: event.email));
  }

  void _passwordEvent(PasswordEventR event, Emitter<RegisterState> emit) {
    debugPrint(event.password);
    emit(state.copyWithRegister(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvent event, Emitter<RegisterState> emit) {
    debugPrint(event.rePassword);
    emit(state.copyWithRegister(rePassword: event.rePassword));
  }
}
