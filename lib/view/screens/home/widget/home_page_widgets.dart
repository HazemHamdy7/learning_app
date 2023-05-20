import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/constant/utils/assets.dart';

AppBar buildAppBarInHomePage() {
  return AppBar(
      title: Container(
    margin: EdgeInsets.only(left: 7.w, right: 7.w),
    color: Colors.white,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 15.w,
            height: 12.w,
            child: Image.asset(AssetsData.menu),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsData.person),
                ),
              ),
            ),
          )
        ]),
  ));
}
