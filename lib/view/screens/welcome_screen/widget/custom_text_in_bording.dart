// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Container(
      width: 300.w,
      height: 130.h,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: StylesApp.textStyle1Bold22),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Text(subTitle,
                style: StylesApp.textStylenormal_14,
                overflow: TextOverflow.clip),
          ),
        ],
      ),
    );
  }
}
