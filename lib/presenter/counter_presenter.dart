import 'package:flutter/material.dart';
import 'package:flutter_mvp/model/counter_service.dart';
class CounterPresenter with ChangeNotifier {
  final CounterService _service = CounterService();
  int count = 0;

  void increment() {
    count = _service.increment();
    notifyListeners();
  }
}
