// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';
import '../../../../constant/utils/styles.dart';

class CustomTextInBording extends StatelessWidget {
  const CustomTextInBording({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 130.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10.h),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Text(subTitle,
                style: TextStyle(
                    color: AppColors.primarySecondaryElementText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
