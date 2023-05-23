import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../common/values/colors.dart';
import '../../../../../../constant/utils/assets.dart';

AppBar buildAppbarProfilePage() {
  return AppBar(
      title: Container(
    color: Colors.white,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 18.w,
            height: 12.w,
            child: Image.asset(AssetsData.menu),
          ),
          Text(
            "Profile",
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            width: 24.w,
            height: 24.w,
            child: Image.asset(
              AssetsData.morevertical,
            ),
          ),
        ]),
  ));
}

Widget profileIconAndEditButton() {
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(right: 6.w),
    width: 80.w,
    height: 80.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        image: const DecorationImage(
          image: AssetImage(
            AssetsData.headpic,
          ),
        )),
    child: Image(
        width: 25.w, height: 25.h, image: const AssetImage(AssetsData.edit3)),
  );
}
