import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../common/widgets/besa_text_widget.dart';
import '../../../../../../../../constant/utils/assets.dart';

AppBar buildAppbarSettingPage() {
  return AppBar(
    title: Container(child: reuseableText("Settings")),
  );
}

Widget settingsButton(BuildContext context, void Function()? func) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Confirm logout"),
              content: const Text("confirm logout"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text("Cancel")),
                TextButton(
                    onPressed: () {
                      func;
                    },
                    child: const Text("Confirm")),
              ],
            );
          });
    },
    child: Container(
      height: 100.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(AssetsData.logout),
        ),
      ),
    ),
  );
}
