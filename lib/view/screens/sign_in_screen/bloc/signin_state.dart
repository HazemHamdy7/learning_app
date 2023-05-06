class SignInState {
  final String email;
  final String password;

  SignInState({this.email = "", this.password = ""});

  SignInState copyWithHH({String? email, String? password}) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
