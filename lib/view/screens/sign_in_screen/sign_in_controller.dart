import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_bloc.dart';

class SignInController {
  final BuildContext context;

  SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        //! you can use this method ==>
        //BlocProvider.of<SignInBloc>(context).state;
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          //?
        }
        if (password.isEmpty) {
          //?
        }
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if (credential.user == null) {
            //?
          }
          if (!credential.user!.emailVerified) {
            //?
          }
          var user = credential.user;
          if (user != null) {
            // ? we got verified user from firebase
          } else {
            //? we have error getting user from firebase
          }
        } catch (e) {
          //?
        }
      }
    } catch (e) {
      //?
    }
  }
}
