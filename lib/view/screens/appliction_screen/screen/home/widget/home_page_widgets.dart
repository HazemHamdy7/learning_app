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

// menu view for showing item
Widget menuView() {
  return Column(
    children: [
      Container(
        width: 325.w,
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            reuseableText("Choose your course"),
            GestureDetector(
              child: reuseableText("See all",
                  color: AppColors.primaryThreeElementText, fontSize: 14),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20.w),
        child: Row(
          children: [
            _reuseableMenuText("All"),
            _reuseableMenuText("Pooular",
                textColor: AppColors.primaryThreeElementText,
                backGroundColor: Colors.white),
            _reuseableMenuText("Newest",
                textColor: AppColors.primaryThreeElementText,
                backGroundColor: Colors.white),
          ],
        ),
      )
    ],
  );
}

Widget reuseableText(
  String text, {
  Color color = AppColors.primaryText,
  int fontSize = 16,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Text(
    text,
    style:
        TextStyle(color: color, fontSize: fontSize.sp, fontWeight: fontWeight),
  );
}

// for menu buttons
Widget _reuseableMenuText(String menuText,
    {Color textColor = AppColors.primaryElementText,
    Color backGroundColor = AppColors.primaryElement}) {
  return Container(
    margin: EdgeInsets.only(right: 20.w),
    padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h, bottom: 5.h),
    decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(7.w),
        border: Border.all(
          color: backGroundColor,
        )),
    child: reuseableText(
      menuText,
      color: textColor,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
  );
}

// text in section grid view in
Widget courseGride() {
  return Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.w),
      image: const DecorationImage(
        image: AssetImage(
          AssetsData.image2,
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best course for IT and Engineering",
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.primaryElementText,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          "Flutter best course",
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.primaryFourElementText,
            fontWeight: FontWeight.normal,
            fontSize: 10.sp,
          ),
        ),
      ],
    ),
  );
}
