import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

// Views should never MAKE USE of a service directly.

// Views should contain zero to (preferred) no logic. If the logic is from  
//UI-only items then we do the least amount of required logic and pass the rest to the ViewModel.

// Views should ONLY render the state in its ViewModel.

// 1 View has 1 ViewModel


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive( //fires build function when notifyListeners() is called 
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(onPressed: model.updateCounter,),
      ),
      viewModelBuilder: () => HomeViewModel(),
    ); //ViewModelBuilder.reactive
  }
}
