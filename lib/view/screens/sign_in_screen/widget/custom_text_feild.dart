// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';
import '../../../../constant/utils/styles.dart';
import 'custom_text.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    Key? key,
    required this.hintText,
    required this.iconName,
    required this.textTyab,
  }) : super(key: key);
  final String hintText;
  final String iconName;
  final String textTyab;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 325.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: AppColors.primaryFourElementText)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 17.w),
              width: 16.w,
              height: 16.h,
              child: Image.asset("assets/icons/$iconName.png"),
            ),
            SizedBox(
              width: 260.w,
              height: 50.h,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: outLineInputBorder(),
                    enabledBorder: outLineInputBorder(),
                    disabledBorder: outLineInputBorder(),
                    focusedBorder: outLineInputBorder(),
                    hintStyle: const TextStyle(
                        color: AppColors.primarySecondaryElementText)),
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                ),
                autocorrect: false,
                obscureText: textTyab == "password" ? true : false,
              ),
            )
          ],
        ));
  }

  OutlineInputBorder outLineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent));
  }
}

Widget buildTextUpperFeild(String text) {
  return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(text: text),
      ]));
}
