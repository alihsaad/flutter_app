import 'package:flutter/material.dart';
import 'package:flutter_app/app/router.gr.dart';
import 'package:flutter_app/ui/views/home/home_view.dart';

import 'package:flutter_app/app/router.gr.dart' as router;

// Views should never MAKE USE of a service directly.
// Views should contain zero to (preferred) no logic. If the logic is from UI only items then we do the least amount of required logic and pass the rest to the ViewModel.
// Views should ONLY render the state in its ViewModel.
// 1 View has 1 ViewModel
// ViewModels for widgets that represent page views are bound to a single View only.
// ViewModels may be re-used if the UI requires the exact same functionality.
// ViewModels should not know about other ViewModels**

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      
      // initialRoute: _appRouter.startupViewRoute,
      // routeInformationParser: _appRouter.defaultRouteParser(),
      home: HomeView(),
    );
  }
}
