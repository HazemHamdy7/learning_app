import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/bloc/app_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/screen/profile/screen/setting/bloc/settings_bloc.dart';
import 'package:udemy/view/screens/register_screen/bloc/register_bloc.dart';

import 'view/screens/sign_in_screen/bloc/signin_bloc.dart';
import 'view/screens/welcome_screen/bloc _welcome/welcome_bloc.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(lazy: false, create: (contex) => WelcomeBloc()),
        BlocProvider(lazy: false, create: (contex) => AppBlocs()),
        BlocProvider(lazy: false, create: (contex) => HomePageBlocs()),
        BlocProvider(create: (contex) => SignInBloc()),
        BlocProvider(create: (contex) => RegisterBlocs()),
        BlocProvider(create: (contex) => SettingsBlocs()),
      ];
}
