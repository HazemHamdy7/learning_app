import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/values/colors.dart';
import 'package:udemy/constant/utils/assets.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/widget/custom_search%20.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/widget/home_page_widgets.dart';

import '../../../../sign_in_screen/widget/custom_text_feild.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarInHomePage(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homePageText("Hello", color: AppColors.primaryThreeElementText),
            homePageText("Hazem Hamdy", fontWeight: FontWeight.bold, top: 5),
            SizedBox(height: 20.h),
            buildTextFieldSearch(),
          ],
        ),
      ),
    );
  }
}
