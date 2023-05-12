abstract class RegisterEvent {
  const RegisterEvent();
}

class UserNameEvent extends RegisterEvent {
  final String userName;

  UserNameEvent(this.userName);
}

class EmailEventR extends RegisterEvent {
  final String email;

  EmailEventR(this.email);
}

class PasswordEventR extends RegisterEvent {
  final String password;

  PasswordEventR(this.password);
}

class RePasswordEvent extends RegisterEvent {
  final String rePassword;

  RePasswordEvent(this.rePassword);
}
