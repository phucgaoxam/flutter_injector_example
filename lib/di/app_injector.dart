import 'package:flutter_injector_example/main.dart';
import 'package:flutter_injector_example/view/counter_event_view.dart';
import 'package:flutter_injector_example/view/counter_view.dart';
import 'package:inject/inject.dart';

import 'app_injector.inject.dart' as g;

@Injector()
abstract class AppInjector {
  @provide
  MyApp get app;

  @provide
  CounterView get counterView;

  @provide
  CounterEventView get counterEventView;

  static Future<AppInjector> create() {
    return g.AppInjector$Injector.create();
  }
}