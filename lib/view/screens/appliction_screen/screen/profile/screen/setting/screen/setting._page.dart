import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/values/colors.dart';
import 'package:udemy/common/values/constants.dart';
import 'package:udemy/constant/utils/assets.dart';
import 'package:udemy/view/screens/appliction_screen/screen/profile/screen/setting/bloc/settings_state.dart';

import '../../../../../../../../common/routes/names.dart';
import '../../../../../../../../global.dart';
import '../../../../../bloc/app_bloc.dart';
import '../../../../../bloc/app_event.dart';
import '../bloc/settings_bloc.dart';
import '../widget/setting_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void removeUserData() {
    context.read<AppBlocs>().add(TriggerAppEvent(0));
    Navigator.of(context)
        .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
    Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbarSettingPage(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBlocs, SettingsStates>(
          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [settingsButton(context, removeUserData)],
              ),
            );
          },
        ),
      ),
    );
  }
}
