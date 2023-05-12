import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/values/colors.dart';

import '../../sign_in_screen/bloc/signin_bloc.dart';
import '../../sign_in_screen/bloc/signin_event.dart';
import '../../sign_in_screen/sign_in_controller.dart';
import '../../sign_in_screen/widget/custom_app_bar.dart';
import '../../sign_in_screen/widget/custom_button_login.dart';
import '../../sign_in_screen/widget/custom_text.dart';
import '../../sign_in_screen/widget/custom_text_feild.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar("Sign Up"),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CustomText(
                      color: AppColors.primarySecondaryElementText,
                      text: 'Enter your details blow & free sign up'),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 10.h),
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTextUpperFeild('User name'),
                      SizedBox(height: 3.h),
                      CustomTextFeild(
                        func: (value) {
                          context.read<SignInBloc>().add(EmailEvent(value));
                        },
                        hintText: 'Enter your user name',
                        textTyab: "email",
                        iconName: "user",
                      ),
                      buildTextUpperFeild('Email'),
                      CustomTextFeild(
                        func: (value) {
                          context.read<SignInBloc>().add(EmailEvent(value));
                        },
                        hintText: 'Enter your email adress',
                        textTyab: "email",
                        iconName: "user",
                      ),
                      buildTextUpperFeild('Password'),
                      SizedBox(height: 3.h),
                      CustomTextFeild(
                        hintText: 'Enter your Password',
                        textTyab: "password",
                        iconName: "lock",
                        func: (value) {
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        },
                      ),
                      buildTextUpperFeild('Comfirm Password'),
                      CustomTextFeild(
                        hintText: 'Enter your Comfirm Password',
                        textTyab: "password",
                        iconName: "lock",
                        func: (value) {
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25.w),
                        child: const CustomText(
                            color: AppColors.primarySecondaryElementText,
                            text:
                                'By creating a account you have to agree with our them & condiction'),
                      ),
                      CustomButtonLogin(
                        func: () {
                          Navigator.of(context).pushNamed('register');
                        },
                        buttonName: 'Sign Up',
                        buttonType: 'login',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
