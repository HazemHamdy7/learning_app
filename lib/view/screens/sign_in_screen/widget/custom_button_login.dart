// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({
    Key? key,
    required this.buttonName,
    this.buttonType,
  }) : super(key: key);
  final String buttonName;
  final String? buttonType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 325.w,
        height: 50.h,
        margin: EdgeInsets.only(top: buttonType == "login" ? 40.h : 20.h),
        decoration: BoxDecoration(
            color: buttonType == "login"
                ? AppColors.primaryElement
                : AppColors.primaryBackground,
            border: Border.all(
                color: buttonType == "login"
                    ? AppColors.primaryElement
                    : AppColors.primaryFourElementText),
            borderRadius: BorderRadius.circular(15.w),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
                color: Colors.grey.withOpacity(0.1),
              ),
            ]),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: buttonType == "login"
                  ? AppColors.primaryBackground
                  : AppColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}
