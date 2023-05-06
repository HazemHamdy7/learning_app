import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';

AppBar buildAppBar() {
  return AppBar(
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: AppColors.primarySecondaryBackground,
          height: 1.0,
        ),
      ),
      backgroundColor: AppColors.primarySecondaryBackground,
      title: Center(
        child: Text(
          "Log In",
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal),
        ),
      ));
}
