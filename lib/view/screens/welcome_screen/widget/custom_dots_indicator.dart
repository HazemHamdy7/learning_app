import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';
import '../bloc _welcome/welcome_bloc.dart';
import '../bloc _welcome/welcome_state.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return Positioned(
          bottom: 30.h,
          child: DotsIndicator(
            position: state.page.toDouble(),
            dotsCount: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            decorator: DotsDecorator(
              color: AppColors.primaryThreeElementText,
              activeColor: AppColors.primaryElement,
              size: const Size.square(8.0),
              activeSize: const Size(18.0, 8.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
