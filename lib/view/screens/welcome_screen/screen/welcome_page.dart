import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/welcome_bloc.dart';
import '../bloc/welcome_state.dart';
import '../widget/custom_page_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20),
            width: 375.w,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  onPageChanged: (index) {},
                  children: [
                    CustomPageView(
                      index: 1,
                      title: 'First See Learning',
                      subTitle:
                          'Forget about  for of paper all knowledge in one learning',
                      imagePath: '',
                      context: context,
                      nameButtom: 'Next',
                    ),
                    CustomPageView(
                      index: 2,
                      title: 'Connect With Everyone',
                      subTitle:
                          'Always Keep in touch with your tutor & friend. let`s get connected!',
                      imagePath: '',
                      context: context,
                      nameButtom: 'Next',
                    ),
                    CustomPageView(
                      index: 3,
                      title: 'Always Fascinated Learning',
                      subTitle:
                          'Any Where . anytime. The time is at youe discretion so study when never want to ',
                      imagePath: '',
                      context: context,
                      nameButtom: 'Get Started',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 70.h,
                  child: DotsIndicator(
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.blue[900]!,
                      activeSize: const Size(10.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
