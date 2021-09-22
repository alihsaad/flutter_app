import 'package:auto_route/annotations.dart';
import 'package:flutter_app/ui/views/home/home_view.dart';
import 'package:flutter_app/ui/views/startup/startup_view.dart';
//import 'package:stacked/stacked.dart';


// https://pub.dev/packages/auto_route#setup-and-usage
//
// @MaterialAutoRouter(    
//   replaceInRouteName: 'Page,Route',    
//   routes: <AutoRoute>[    
//     AutoRoute(page: BookListPage, initial: true),    
//     AutoRoute(page: BookDetailsPage),    
//   ],    
// )    
// class $AppRouter {}    




@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomeView, initial: true, name: 'homeViewRoute'),
  MaterialRoute(page: StartupView, initial: true, name: 'startupViewRoute')
])
class $AppRouter {
  // @initial
  // late StartupView startupViewRoute;
  // late HomeView homeViewRoute;

}
