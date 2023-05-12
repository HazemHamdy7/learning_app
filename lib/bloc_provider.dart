import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_test_app/app_bloc.dart';
import 'view/screens/sign_in_screen/bloc/signin_bloc.dart';
import 'view/screens/welcome_screen/bloc _welcome/welcome_bloc.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(lazy: false, create: (contex) => WelcomeBloc()),
        BlocProvider(lazy: false, create: (contex) => AppBlocs()),
        BlocProvider(create: (contex) => SignInBloc()),
      ];
}
