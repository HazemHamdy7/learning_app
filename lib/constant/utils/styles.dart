import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class StylesApp {
  // static const textStyle18 = TextStyle(
  //   fontSize: 18,
  //   fontWeight: FontWeight.w600,
  // );

  // static const textStyle20 = TextStyle(
  //   fontSize: 20,
  //   fontWeight: FontWeight.normal,
  //   // fontFamily: kGtSectraFine,
  // );
  // static const textStyleBold20 = TextStyle(
  //   fontSize: 20,
  //   fontWeight: FontWeight.bold,
  //   // fontFamily: kGtSectraFine,
  // );

  // static const textStyle30 = TextStyle(
  //   fontSize: 30,
  //   fontWeight: FontWeight.normal,
  //   // fontFamily: kGtSectraFine,
  // );
  // static const textStyleBold30 = TextStyle(
  //   fontSize: 30,
  //   fontWeight: FontWeight.bold,
  //   // fontFamily: kGtSectraFine,
  // );

  // static const textStyle14 =
  //     TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal);
  // static const textStyle1Bold14 = TextStyle(
  //   fontSize: 14,
  //   fontWeight: FontWeight.bold,
  // );

  // static const textStyle16 = TextStyle(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w500,
  // );
  // static const textStyle1Bold16 = TextStyle(
  //   fontSize: 16,
  //   fontWeight: FontWeight.bold,
  // );
  static TextStyle textStyle1Bold22 = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStylenormal_14 = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle16 = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
}
