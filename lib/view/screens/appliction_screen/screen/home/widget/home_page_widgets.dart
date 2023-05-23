import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/constant/utils/assets.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_state.dart';

import '../../../../../../common/values/colors.dart';
import '../bloc_home/home_page_bloc.dart';
import '../bloc_home/home_page_event.dart';

AppBar buildAppBarInHomePage() {
  return AppBar(
      title: Container(
    margin: EdgeInsets.only(left: 7.w, right: 7.w),
    color: Colors.white,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 15.w, height: 12.w, child: Image.asset(AssetsData.menu)),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsData.person),
                ),
              ),
            ),
          )
        ]),
  ));
}

Widget homePageText(String text,
    {Color color = AppColors.primaryText,
    int top = 20,
    FontWeight? fontWeight}) {
  return Container(
    margin: EdgeInsets.only(top: top.h),
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 24.sp,
        fontWeight: fontWeight,
      ),
    ),
  );
}

Widget buildTextFieldSearch() {
  OutlineInputBorder outLineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent));
  }

  return Row(
    children: [
      Container(
          width: 300.w,
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
                child: Image.asset(AssetsData.search),
              ),
              SizedBox(
                width: 260.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: "Search your coures",
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
                  obscureText: false,
                ),
              )
            ],
          )),
      SizedBox(width: 12.w),
      GestureDetector(
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(
                Radius.circular(13.w),
              ),
              border: Border.all(color: AppColors.primaryElement)),
          child: Image.asset(AssetsData.options),
        ),
      )
    ],
  );
}

Widget silderView(BuildContext context, HomePageStates state) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20.h),
        width: 350.w,
        height: 160.h,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomePageBlocs>().add(HomePageDots(value));
          },
          children: [
            _sildersContainer(path: AssetsData.artView),
            _sildersContainer(path: AssetsData.image1),
            _sildersContainer(path: AssetsData.image2),
          ],
        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index.toDouble(),
          decorator: DotsDecorator(
              activeColor: AppColors.primaryElement,
              size: const Size.square(7.0),
              activeSize: const Size(18.0, 7.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )),
        ),
      )
    ],
  );
}

Widget _sildersContainer({
  required String path,
}) {
  return Container(
    width: 325.w,
    height: 160.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20.h)),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(path),
      ),
    ),
  );
}
