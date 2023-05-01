// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant/utils/assets.dart';
import 'custom_bottom_InBoroding.dart';
import 'custom_text_in_bording.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({
    Key? key,
    required this.title,
    required this.nameButtom,
    required this.imagePath,
    required this.subTitle,
    required BuildContext context,
    required int index,
  }) : super(key: key);
  final String title;
  final String nameButtom;

  final String imagePath;
  final String subTitle;
  int? index;
  BuildContext? context;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(AssetsData.man),
        ),
        CustomTextInBording(
          title: title,
          subTitle: subTitle,
        ),
        CustomBottomInBording(
          text: nameButtom,
          onTap: () {},
        ),
      ],
    );
  }
}
