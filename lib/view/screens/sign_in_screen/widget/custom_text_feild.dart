// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_bloc.dart';

import '../../../../common/values/colors.dart';
import '../bloc/signin_event.dart';
import 'custom_text.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    Key? key,
    required this.hintText,
    required this.func,
    required this.iconName,
    required this.textTyab,
  }) : super(key: key);
  final String hintText;
  final String iconName;
  void Function(String)? onChanged;
  final String textTyab;
  final void Function(String value)? func;

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
                onChanged: (value) => func!(value),
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



// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../common/values/colors.dart';
// import 'custom_text.dart';

// Widget buildTextField(
//   String hinText,
//   String textType,
//   String iconName,
//   void Function(String value)? functionName, {required String hinText, required String textTyab, required String iconName},
// ) {
//   return Container(
//       width: 325.w,
//       height: 50.h,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: const BorderRadius.all(Radius.circular(15)),
//           border: Border.all(color: AppColors.primaryFourElementText)),
//       child: Row(
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 17.w),
//             width: 16.w,
//             height: 16.h,
//             child: Image.asset("assets/icons/$iconName.png"),
//           ),
//           SizedBox(
//             width: 260.w,
//             height: 50.h,
//             child: TextField(
//               onChanged: (value) => functionName!(value),
//               keyboardType: TextInputType.multiline,
//               decoration: InputDecoration(
//                   hintText: hinText,
//                   border: outLineInputBorder(),
//                   enabledBorder: outLineInputBorder(),
//                   disabledBorder: outLineInputBorder(),
//                   focusedBorder: outLineInputBorder(),
//                   hintStyle: const TextStyle(
//                       color: AppColors.primarySecondaryElementText)),
//               style: TextStyle(
//                 color: AppColors.primaryText,
//                 fontFamily: "Avenir",
//                 fontWeight: FontWeight.normal,
//                 fontSize: 14.sp,
//               ),
//               autocorrect: false,
//               obscureText: textType == "password" ? true : false,
//             ),
//           )
//         ],
//       ));
// }

// OutlineInputBorder outLineInputBorder() {
//   return const OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.transparent));
// }

// Widget buildTextUpperFeild(String text) {
//   return Container(
//       margin: EdgeInsets.only(top: 20.h),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         CustomText(text: text),
//       ]));
// }
