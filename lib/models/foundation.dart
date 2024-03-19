import 'package:flutter/foundation.dart';
import 'dart:async';

class InterestModel extends ChangeNotifier {
  int _getInterest = 1;

  int get getInterest => _getInterest;

  void getInterestFunc() {
    _getInterest = 0;
    notifyListeners();
    Timer(const Duration(seconds: 2), () {
      _getInterest = 1;
      notifyListeners();
    });
  }
}
