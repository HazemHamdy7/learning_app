import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../bloc/signin_bloc.dart';
import '../bloc/signin_event.dart';
import '../bloc/signin_state.dart';
import '../sign_in_controller.dart';
import '../../../../common/values/colors.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_button_login.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_feild.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(
                "Log In",
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
                        padding: EdgeInsets.only(left: 50.h, right: 50.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomIconLogin(
                                iconName: "google",
                                onTap: () {
                                  print("==============Tap=============");
                                  Future<void> _handleGoogleSignIn() async {
                                    try {
                                      final GoogleSignInAccount? googleUser =
                                          await _googleSignIn.signIn();
                                      final GoogleSignInAuthentication
                                          googleAuth =
                                          await googleUser!.authentication;

                                      final OAuthCredential credential =
                                          GoogleAuthProvider.credential(
                                        accessToken: googleAuth.accessToken,
                                        idToken: googleAuth.idToken,
                                      );

                                      // Use the credential to authenticate with your Firebase account
                                    } catch (e) {
                                      print('Error signing in with Google: $e');
                                    }
                                  }
                                }),
                            CustomIconLogin(iconName: "apple", onTap: () {}),
                            CustomIconLogin(iconName: "facebook", onTap: () {}),
                          ],
                        ),
                      ),
                      const Center(
                        child: CustomText(
                            text: 'Or use your email account to login'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.h),
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildTextUpperFeild('Email'),
                            SizedBox(height: 8.h),
                            CustomTextFeild(
                              func: (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(EmailEvent(value));
                              },
                              hintText: 'Enter your email adress',
                              textTyab: "email",
                              iconName: "user",
                            ),
                            buildTextUpperFeild('Password'),
                            SizedBox(height: 8.h),
                            CustomTextFeild(
                              hintText: 'Enter your Password',
                              textTyab: "password",
                              iconName: "lock",
                              func: (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(PasswordEvent(value));
                              },
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const CustomText(
                                text: 'Forget password ?',
                                color: AppColors.primaryText,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primaryText,
                              ),
                            ),
                            SizedBox(height: 70.h),
                            CustomButtonLogin(
                              func: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    "ApplicationHome", (route) => false);
                                //TODO  i need to fixed navigator when Sign in controller
                                SignInController(context: context)
                                    .handleSignIn("email");
                              },
                              buttonName: 'Log in',
                              buttonType: 'login',
                            ),
                            CustomButtonLogin(
                              func: () {
                                Navigator.of(context).pushNamed('register');
                              },
                              buttonName: 'Register',
                              buttonType: 'register',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
