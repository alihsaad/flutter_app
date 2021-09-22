import 'package:stacked/stacked.dart';

//this is where
class StartupViewModel extends BaseViewModel {
  final String _title = "Hello";
  String get title => _title;


  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners(); //makes our viewmodel rebuild
  }
}
