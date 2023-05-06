import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bloc_test_app/app_bloc.dart';
import 'view/screens/sign_in_screen/screen/sign_in.dart';
import 'view/screens/welcome_screen/bloc _welcome/welcome_bloc.dart';
import 'view/screens/welcome_screen/screen/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (contex) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (contex) => AppBlocs(),
        )
      ],
      child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(),
                  home: const WelcomeScreen(),
                  routes: {
                    // "myHomePage": (context) => const SignInScreen(),
                    "signIn": (context) => const SignInScreen(),
                  })),
    );
  }
}
