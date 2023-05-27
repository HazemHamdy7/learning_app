import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/routes/routes.dart';

import '../../../../../../common/values/colors.dart';
import '../../../../../../common/widgets/besa_text_widget.dart';
import '../../../../../../constant/utils/assets.dart';

AppBar buildAppbarProfilePage() {
  return AppBar(
      title: Container(
    color: Colors.white,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 18.w,
            height: 12.w,
            child: Image.asset(AssetsData.menu),
          ),
          reuseableText("Profile", fontSize: 20),
          SizedBox(
            width: 24.w,
            height: 24.w,
            child: Image.asset(
              AssetsData.morevertical,
            ),
          ),
        ]),
  ));
}

Widget profileIconAndEditButton() {
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(right: 6.w),
    width: 80.w,
    height: 80.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        image: const DecorationImage(
          image: AssetImage(
            AssetsData.headpic,
          ),
        )),
    child: Image(
        width: 25.w, height: 25.h, image: const AssetImage(AssetsData.edit3)),
  );
}

// setting section botton
var imageInfo = <String, String>{
  "Settings": "settings.png",
  "Payment details": "credit-card.png",
  "Love": "heart(1).png",
  "Achievment": "award.png",
  "Reminders": "cube.png",
};

Widget buildListView(BuildContext context) {
  return Column(
    children: [
      ...List.generate(
          imageInfo.length,
          (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SETTINGS);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7.0),
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: AppColors.primaryElement,
                        ),
                        child: Image.asset(
                            "assets/icons/${imageInfo.values.elementAt(index)}"),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        imageInfo.keys.elementAt(index),
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
    ],
  );
}
