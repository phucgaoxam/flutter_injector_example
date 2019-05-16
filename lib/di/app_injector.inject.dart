import 'app_injector.dart' as _i1;
import '../bloc/counter_bloc.dart' as _i2;
import 'dart:async' as _i3;
import '../main.dart' as _i4;
import '../view/counter_view.dart' as _i5;
import '../view/counter_event_view.dart' as _i6;

class AppInjector$Injector implements _i1.AppInjector {
  AppInjector$Injector._();

  _i2.CounterBloc _singletonCounterBloc;

  static _i3.Future<_i1.AppInjector> create() async {
    final injector = AppInjector$Injector._();

    return injector;
  }

  _i4.MyApp _createMyApp() => _i4.MyApp(_createCounterView);
  _i5.CounterView _createCounterView() =>
      _i5.CounterView(_createCounterBloc(), _createCounterEventView());
  _i2.CounterBloc _createCounterBloc() =>
      _singletonCounterBloc ??= _i2.CounterBloc();
  _i6.CounterEventView _createCounterEventView() =>
      _i6.CounterEventView(_createCounterBloc());
  @override
  _i4.MyApp get app => _createMyApp();
  @override
  _i5.CounterView get counterView => _createCounterView();
  @override
  _i6.CounterEventView get counterEventView => _createCounterEventView();
}
