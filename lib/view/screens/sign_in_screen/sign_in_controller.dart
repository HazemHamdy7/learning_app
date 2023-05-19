import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/flutter_toast.dart';
import 'bloc/signin_bloc.dart';

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
          debugPrint("=============email empty====================");
          toastInfo(msg: "You need to fill email addresss");
        }
        // else {
        //   debugPrint("email is============= $emailAddress");
        // }
        if (password.isEmpty) {
          toastInfo(msg: "You need to fill password");
          return;

          //   debugPrint("================password is Empty===============");
        }
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if (credential.user == null) {
            toastInfo(msg: "You dont exist");
            return;

            // debugPrint("============user does not exist=================");
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "You need to verify your email account");
            return;

            // debugPrint("=================== not verified ================");
          }
          var user = credential.user;
          if (user != null) {
            debugPrint("=============== USER EXISTS =============");
            Navigator.of(context)
                .pushNamedAndRemoveUntil("/register", (route) => false);
          } else {
            toastInfo(msg: "Currently you are not user of this app");
            return;

            // debugPrint("===================== no user ==================");
            //? we have error getting user from firebase
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-fount') {
            toastInfo(msg: "No user found for that email");
            return;

            // debugPrint(
            //     "==============No user found for that email .=========== ");
          } else if (e.code == ' worng-password') {
            toastInfo(msg: "wrong password provided for that user");
            return;

            // debugPrint(
            //     "=================wrong password provided for that user ===================. ");
          } else if (e.code == 'invalid - email') {
            toastInfo(msg: "Your email format is wrong");
            return;
          }
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
