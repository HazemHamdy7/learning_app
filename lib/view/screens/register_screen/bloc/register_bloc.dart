import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_event.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_state.dart';

class RegisterBlocs extends Bloc<RegisterEvent, RegisterState> {
  RegisterBlocs() : super(RegisterState()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<RePasswordEvent>(_rePasswordEvent);
  }
  void _userNameEvent(UserNameEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWithRegister(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWithRegister(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWithRegister(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWithRegister(rePassword: event.rePassword));
  }
}
