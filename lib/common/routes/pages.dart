import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/common/routes/routes.dart';
import 'package:udemy/view/screens/appliction_screen/application_screen_body.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_bloc.dart';
import 'package:udemy/view/screens/sign_in_screen/bloc/signin_bloc.dart';
import 'package:udemy/view/screens/sign_in_screen/screen/sign_in.dart';
import 'package:udemy/view/screens/welcome_screen/bloc%20_welcome/welcome_bloc.dart';
import 'package:udemy/view/screens/welcome_screen/screen/welcome_page.dart';

import '../../view/screens/appliction_screen/bloc/app_bloc.dart';
import '../../view/screens/register_screen/screens/register_screen_body.dart';
import 'names.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.INITIAL,
        page: const WelcomeScreen(),
        bloc: BlocProvider(
          create: (_) => WelcomeBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_IN,
        page: const SignInScreen(),
        bloc: BlocProvider(
          create: (_) => SignInBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.REGISTER,
        page: const RegisterScreenBody(),
        bloc: BlocProvider(
          create: (_) => RegisterBlocs(),
        ),
      ),
      PageEntity(
        route: AppRoutes.APPLICATIONPAGE,
        page: const ApplicationBody(),
        bloc: BlocProvider(
          create: (_) => AppBlocs(),
        ),
      ),
    ];
  }

// return all the  bloc providers

  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

  static MaterialPageRoute GenerateRouteSetting(RouteSettings settings) {
    if (settings.name != null) {
      //! chack for route name maching when navigating dets triggered
      var result = routes().where((element) => element.route == settings.name);
      if (result.isEmpty) {
        print("============ Valid============ ${settings.name}");
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    print(" ===========inValid============== ${settings.name}");
    return MaterialPageRoute(
        builder: (_) => const SignInScreen(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;
  PageEntity({
    required this.route,
    required this.page,
    this.bloc,
  });
}