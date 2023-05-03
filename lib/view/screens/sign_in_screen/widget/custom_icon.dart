import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
      child: Row(
    children: [
      GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: 40.w,
          height: 40.h,
          child: Image.asset("assets/icons/google.png"),
        ),
      )
    ],
  ));
}
