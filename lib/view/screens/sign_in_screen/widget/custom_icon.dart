// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconLogin extends StatelessWidget {
  const CustomIconLogin({
    Key? key,
    this.onTap,
    required this.iconName,
  }) : super(key: key);
  final void Function()? onTap;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/$iconName.png"),
          ),
        ),
      ],
    ));
  }
}
