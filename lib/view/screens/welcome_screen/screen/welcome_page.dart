import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_bottom_InBoroding.dart';

import '../bloc _welcome/welcome_bloc.dart';
import '../bloc _welcome/welcome_event.dart';
import '../bloc _welcome/welcome_state.dart';
import '../widget/custom_dots_indicator.dart';
import '../widget/custom_page_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(10),
            width: 375.w,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                    debugPrint('ondwx============ $index');
                  },
                  children: [
                    CustomPageView(
                      index: 1,
                      title: 'First See Learning',
                      subTitle:
                          'Forget about  for of paper all knowledge in one learning',
                      imagePath: 'assets/images/reading.png',
                      context: context,
                      nameButtom: 'Next',
                    ),
                    CustomPageView(
                      index: 2,
                      title: 'Connect With Everyone',
                      subTitle:
                          'Always Keep in touch with your tutor & friend. let`s get connected!',
                      imagePath: 'assets/images/boy.png',
                      context: context,
                      nameButtom: 'Next',
                    ),
                    CustomPageView(
                      index: 3,
                      title: 'Always Fascinated Learning',
                      subTitle:
                          'Any Where . anytime. The time is at youe discretion so study when never want to ',
                      imagePath: 'assets/images/man.png',
                      context: context,
                      nameButtom: 'Get Started',
                    ),
                  ],
                ),
                const CustomDotsIndicator(),
              ],
            ),
          );
        },
      ),
    );
  }
}
