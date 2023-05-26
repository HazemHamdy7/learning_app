import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';
import 'bloc/app_bloc.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';
import 'widget_Appliction/application_widget.dart';

class ApplicationBody extends StatefulWidget {
  const ApplicationBody({super.key});

  @override
  State<ApplicationBody> createState() => _ApplicationBodyState();
}

class _ApplicationBodyState extends State<ApplicationBody> {
  // int _index = 0;
  Widget? activeIcon;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              body: buildPage(state.index),
              bottomNavigationBar: Container(
                width: 300.w,
                height: 63.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.h),
                        topRight: Radius.circular(20.h)),
                    color: AppColors.primaryElement,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 1,
                          color: Colors.grey.withOpacity(0.1))
                    ]),
                child: BottomNavigationBar(
                  currentIndex: state.index,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  selectedItemColor: AppColors.primaryElement,
                  unselectedItemColor: AppColors.primaryFourElementText,
                  onTap: (value) {
                    context.read<AppBlocs>().add(TriggerAppEvent(value));
                  },
                  elevation: 0,
                  items: bottomTabs,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
