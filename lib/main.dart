import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bloc_test_app/app_bloc.dart';
import 'bloc_test_app/app_event.dart';
import 'bloc_test_app/app_state.dart';
import 'view/screens/sign_in_screen/screen/sign_in.dart';
import 'view/screens/welcome_screen/bloc _welcome/welcome_bloc.dart';
import 'view/screens/welcome_screen/screen/welcome_page.dart';

void main() {
  runApp(const MyApp());
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
                  theme: ThemeData(
                      appBarTheme: const AppBarTheme(
                          elevation: 0, backgroundColor: Colors.white)),
                  home: const SignInScreen(),
                  routes: {
                    // "myHomePage": (context) => const SignInScreen(),
                    "signIn": (context) => const SignInScreen(),
                  })),
    );
  }
}
// ScreenUtilInit(

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, this.title});

//   final String? title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             // title: Text(title),
//             ),
//         body: Center(
//           child: BlocBuilder<AppBlocs, AppState>(
//             builder: (context, state) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text(
//                     'You have pushed the button this many times:',
//                   ),
//                   Text(
//                     "${BlocProvider.of<AppBlocs>(context).state.counter}",
//                     style: Theme.of(context).textTheme.headlineMedium,
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//         floatingActionButton: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             FloatingActionButton(
//               heroTag: 'gi 1',
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Increement()),
//               tooltip: 'Increment',
//               child: const Icon(Icons.add),
//             ),
//             FloatingActionButton(
//               heroTag: 'gi 1331',
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Decreement()),
//               tooltip: 'decrement',
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         ));
//   }
// }
