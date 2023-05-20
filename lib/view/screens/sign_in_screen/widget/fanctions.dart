// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class GoogleSignInButton extends StatefulWidget {
//   @override
//   _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
// }

// class _GoogleSignInButtonState extends State<GoogleSignInButton> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<UserCredential?> handleSignIn() async {
//     await Firebase.initializeApp();

//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser!.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       final UserCredential? userCredential =
//           await _auth.signInWithCredential(credential);
//       return userCredential;
//     } catch (e) {
//       print('Error signing in with Google: $e');
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return RaisedButton(
//   //     onPressed: () {
//   //       _handleSignIn().then((UserCredential? user) {
//   //         if (user != null) {
//   //           // User signed in successfully
//   //           // Do something with the user data
//   //         } else {
//   //           // Error occurred during sign-in
//   //         }
//   //       });
//   //     },
//   //     child: Text('Sign in with Google'),
//   //   );
//   // }
// }
