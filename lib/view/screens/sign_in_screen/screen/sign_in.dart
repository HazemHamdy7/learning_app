import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_bloc.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_event.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_state.dart';
import 'package:udemy/view/screens/sign_in_screen/sign_in_controller.dart';
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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(),
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
                        padding: EdgeInsets.only(left: 25.h, right: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomIconLogin(iconName: "google", onTap: () {}),
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
                            SizedBox(height: 15.h),
                            CustomButtonLogin(
                              func: () {
                                SignInController(context: context)
                                    .handleSignIn("email");
                                print(
                                    "=======*********=====Login button=======*********=====");
                              },
                              buttonName: 'Log in',
                              buttonType: 'login',
                            ),
                            CustomButtonLogin(
                              func: () {
                                print("register button");
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
