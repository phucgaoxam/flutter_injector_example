import 'package:flutter/material.dart';
import 'package:flutter_injector_example/di/app_injector.dart';
import 'package:flutter_injector_example/view/counter_view.dart';
import 'package:inject/inject.dart';

typedef Provider<T> = T Function();

void main() async {
  var container = await AppInjector.create();
  runApp(container.app);
}

@provide
class MyApp extends StatelessWidget {

  final Provider<CounterView> counterView;

  MyApp(this.counterView);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: counterView(),
    );
  }
}
