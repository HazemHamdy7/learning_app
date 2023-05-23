import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/values/colors.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_state.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/widget/home_page_widgets.dart';

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
        body: BlocBuilder<HomePageBlocs, HomePageStates>(
            builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homePageText("Hello", color: AppColors.primaryThreeElementText),
                homePageText("Hazem Hamdy",
                    fontWeight: FontWeight.bold, top: 5),
                SizedBox(height: 20.h),
                buildTextFieldSearch(),
                silderView(context, state),
                menuView(),
              ],
            ),
          );
        }));
  }
}
