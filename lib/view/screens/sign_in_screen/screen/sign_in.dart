import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/constant/utils/styles.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconLogin(iconName: "google", onTap: () {}),
                      CustomIconLogin(iconName: "apple", onTap: () {}),
                      CustomIconLogin(iconName: "facebook", onTap: () {}),
                    ],
                  ),
                  const Center(
                    child:
                        CustomText(text: 'Or use your email account to login'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextUpperFeild('Email'),
                        const CustomTextFeild(
                            hintText: 'Enter your email adress',
                            textTyab: "email",
                            iconName: "user"),
                        buildTextUpperFeild('Password'),
                        const CustomTextFeild(
                            hintText: 'Enter your Password',
                            textTyab: "password",
                            iconName: "lock"),
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
                        const CustomButtonLogin(
                          buttonName: 'Log in',
                          buttonType: 'login',
                        ),
                        const CustomButtonLogin(
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
  }
}
