// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../main.dart';
import 'custom_bottom_InBoroding.dart';
import 'custom_text_in_bording.dart';

// ignore: must_be_immutable
class CustomPageView extends StatelessWidget {
  CustomPageView({
    Key? key,
    required BuildContext context,
    required this.title,
    required this.nameButtom,
    required this.imagePath,
    required this.subTitle,
    required this.index,
  }) : super(key: key);
  final String title;
  final String nameButtom;
  final String imagePath;
  final String subTitle;
  final int index;
  BuildContext? context;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        CustomTextInBording(
          title: title,
          subTitle: subTitle,
        ),
        CustomBottomInBording(
          text: nameButtom,
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(index,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.decelerate);
            }
            {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("signIn", (route) => false);
            }
          },
        ),
      ],
    );
  }
}
