import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //CounterProvider class banayera matra hudaina extends ChangeNotifier pani garna parxa so that Observer lai data change vako notify hos
  int _count = 0;
  int get Count => _count;

  void incrementCount(int value) {
    _count = _count + value;
    notifyListeners(); //Notify all UI users which are listening
  }

  void decrementCount() {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }
}
