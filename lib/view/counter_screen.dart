import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mvp/presenter/counter_presenter.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    context.read<CounterPresenter>().increment();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Screen');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterText()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // select a part of the presenter this will trigger a rebuild when it changes
    final counter = context.select((CounterPresenter presenter) => presenter.count);
    print('Build counter text');

    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
