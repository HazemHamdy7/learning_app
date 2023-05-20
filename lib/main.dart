import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/common/routes/pages.dart';
import 'package:udemy/view/screens/appliction_screen/application_screen_body.dart';
import 'package:udemy/view/screens/welcome_screen/screen/welcome_page.dart';
import 'common/routes/routes.dart';
import 'common/values/colors.dart';
import 'bloc_provider.dart';
import 'global.dart';
import 'view/screens/register_screen/screens/register_screen_body.dart';
import 'view/screens/sign_in_screen/screen/sign_in.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
          //  [
          //   ...AppPages.allBlocProviders(context),
          // ],
          AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    //fontFamily: "Montserrat-Medium",
                    appBarTheme: const AppBarTheme(
                        iconTheme: IconThemeData(color: AppColors.primaryText),
                        elevation: 0,
                        backgroundColor: Colors.white)),
                home: const WelcomeScreen(),
              //  onGenerateRoute: AppPages.generateRouteSetting,
                routes: {
                  "signIn": (context) => const SignInScreen(),
                  "register": (context) => const RegisterScreenBody(),
                  "ApplicationHome": (context) => const ApplicationBody(),
                },
              )),
    );
  }
}
