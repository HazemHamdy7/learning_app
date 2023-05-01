import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy/bloc_test_app/app_bloc.dart';
import 'package:udemy/view/screens/welcome_screen/bloc/welcome_bloc.dart';
import 'view/screens/welcome_screen/screen/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => WelcomeBloc(),
        child: ScreenUtilInit(
          builder: (context, child) => const MaterialApp(
            home: WelcomeScreen(),
          ),
        ));
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
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
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Increement()),
//               tooltip: 'Increment',
//               child: const Icon(Icons.add),
//             ),
//             FloatingActionButton(
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Decreement()),
//               tooltip: 'decrement',
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         ));
//   }
// }
