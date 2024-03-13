import 'package:flutter/foundation.dart';

class InterestModel extends ChangeNotifier {
  int _getInterest = 1;

  int get getInterest => _getInterest;

  void getInterestFunc() {
    _getInterest = 0;
    notifyListeners();
  }
}
