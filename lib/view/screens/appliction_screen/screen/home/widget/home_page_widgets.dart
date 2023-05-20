import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/constant/utils/assets.dart';

import '../../../../../../common/values/colors.dart';

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

Widget homePageText(String text,
    {Color color = AppColors.primaryText,
    int top = 20,
    FontWeight? fontWeight}) {
  return Container(
    margin: EdgeInsets.only(top: top.h),
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 24.sp,
        fontWeight: fontWeight,
      ),
    ),
  );
}

Widget buildTextFieldSearch() {
  return Row(
    children: [
      Container(
          width: 300.w,
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
                child: Image.asset(AssetsData.search),
              ),
              SizedBox(
                width: 260.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: "Search your coures",
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
                  obscureText: false,
                ),
              )
            ],
          )),
      SizedBox(width: 12.w),
      GestureDetector(
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(
                Radius.circular(13.w),
              ),
              border: Border.all(color: AppColors.primaryElement)),
          child: Image.asset(AssetsData.options),
        ),
      )
    ],
  );
}

OutlineInputBorder outLineInputBorder() {
  return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent));
}
