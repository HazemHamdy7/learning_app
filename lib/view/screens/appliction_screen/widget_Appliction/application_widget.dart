import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';
import '../../../../constant/utils/assets.dart';
import '../screen/home/screen/home_page.dart';

Widget buildPage(int index) {
  List<Widget> widget = [
    const HomePage(),
    const Center(child: Text("Searsh")),
    const Center(child: Text("Course")),
    const Center(child: Text("Chat")),
    const Center(child: Text("Profile")),
  ];
  return widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: SizedBox(
      width: 15.w,
      height: 15.h,
      child: Image.asset(AssetsData.home),
    ),
    activeIcon: Image.asset(
      AssetsData.home,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Search',
    icon: SizedBox(
        width: 15.w, height: 15.h, child: Image.asset(AssetsData.search)),
    activeIcon: Image.asset(
      AssetsData.search,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Application',
    icon: SizedBox(
        width: 15.w, height: 15.h, child: Image.asset(AssetsData.play)),
    activeIcon: Image.asset(
      AssetsData.play,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Chat',
    icon: SizedBox(
        width: 15.w, height: 15.h, child: Image.asset(AssetsData.chat)),
    activeIcon: Image.asset(
      AssetsData.chat,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Profile',
    icon: SizedBox(
        width: 15.w, height: 15.h, child: Image.asset(AssetsData.profile)),
    activeIcon: Image.asset(
      AssetsData.profile,
      color: AppColors.primaryElement,
    ),
  ),
];
