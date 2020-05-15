
import 'package:flutter_mvp/model/counter_service.dart';
import 'package:rxdart/rxdart.dart';

class CounterPresenter2 {
  final CounterService _service = CounterService();

  final BehaviorSubject<int> countSubject = BehaviorSubject.seeded(0);
  ValueStream<int> get countStream => countSubject.stream;

  void increment() {
    countSubject.add(_service.increment());
  }
}
