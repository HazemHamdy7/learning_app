import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';
import '../../../constant/utils/assets.dart';
import 'bloc/app_bloc.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';
import 'widget/application_widget.dart';

class ApplicationBody extends StatefulWidget {
  const ApplicationBody({super.key});

  @override
  State<ApplicationBody> createState() => _ApplicationBodyState();
}

class _ApplicationBodyState extends State<ApplicationBody> {
  int _index = 0;
  Widget? activeIcon;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              body: buildPage(_index),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.h),
                      topRight: Radius.circular(20.h),
                    ),
                    color: AppColors.primaryElement,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 1,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ]),
                child: BottomNavigationBar(
                  currentIndex: _index,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  selectedItemColor: AppColors.primaryElement,
                  unselectedItemColor: AppColors.primaryFourElementText,
                  onTap: (value) {
                    context.read<AppBlocs>().add(TriggerAppEvent(value));
                  },
                  elevation: 0,
                  items: [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(AssetsData.home)),
                      activeIcon: Image.asset(
                        AssetsData.home,
                        color: AppColors.primaryElement,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Search',
                      icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(AssetsData.search)),
                      activeIcon: Image.asset(
                        AssetsData.search,
                        color: AppColors.primaryElement,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Application',
                      icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(AssetsData.play)),
                      activeIcon: Image.asset(
                        AssetsData.play,
                        color: AppColors.primaryElement,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Chat',
                      icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(AssetsData.chat)),
                      activeIcon: Image.asset(
                        AssetsData.chat,
                        color: AppColors.primaryElement,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Profile',
                      icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(AssetsData.profile)),
                      activeIcon: Image.asset(
                        AssetsData.profile,
                        color: AppColors.primaryElement,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
