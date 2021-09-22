import 'package:stacked/stacked.dart';

//this is where 
class HomeViewModel extends BaseViewModel {
  final String _title = 'Home View';
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners(); //makes our viewmodel rebuild
  }
}
