import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/values/colors.dart';

import '../../sign_in_screen/widget/custom_app_bar.dart';
import '../../sign_in_screen/widget/custom_button_login.dart';
import '../../sign_in_screen/widget/custom_text.dart';
import '../../sign_in_screen/widget/custom_text_feild.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_event.dart';
import '../bloc/register_state.dart';
import '../register_controller.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBlocs, RegisterState>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar("Sign Up"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CustomText(
                        color: AppColors.primarySecondaryElementText,
                        text: 'Enter your details blow & free sign up'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60.h),
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextUpperFeild('User name'),
                        SizedBox(height: 3.h),
                        CustomTextFeild(
                          func: (value) {
                            context
                                .read<RegisterBlocs>()
                                .add(UserNameEvent(value));
                          },
                          hintText: 'Enter your user name',
                          textTyab: "email",
                          iconName: "user",
                        ),
                        buildTextUpperFeild('Email'),
                        CustomTextFeild(
                          func: (value) {
                            context
                                .read<RegisterBlocs>()
                                .add(EmailEventR(value));
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
                            context
                                .read<RegisterBlocs>()
                                .add(PasswordEventR(value));
                          },
                        ),
                        buildTextUpperFeild('Comfirm Password'),
                        CustomTextFeild(
                          hintText: 'Enter your Comfirm Password',
                          textTyab: "password",
                          iconName: "lock",
                          func: (value) {
                            context
                                .read<RegisterBlocs>()
                                .add(RePasswordEvent(value));
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25.w, top: 20.w),
                          child: const CustomText(
                              color: AppColors.primarySecondaryElementText,
                              text:
                                  'By creating a account you have to agree with our them & condiction'),
                        ),
                        CustomButtonLogin(
                          func: () {
                            RegisterController(context: context)
                                .handEmailRegister();
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
    });
  }
}
