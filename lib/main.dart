import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/values/colors.dart';
import 'bloc_provider.dart';
import 'view/screens/register_screen/screens/register_screen_body.dart';
import 'view/screens/sign_in_screen/screen/sign_in.dart';
import 'view/screens/welcome_screen/screen/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      //fontFamily: "Montserrat-Medium",
                      appBarTheme: const AppBarTheme(
                          iconTheme:
                              IconThemeData(color: AppColors.primaryText),
                          elevation: 0,
                          backgroundColor: Colors.white)),
                  home: const WelcomeScreen(),
                  routes: {
                    "signIn": (context) => const SignInScreen(),
                    "register": (context) => const RegisterScreenBody(),
                  })),
    );
  }
}
