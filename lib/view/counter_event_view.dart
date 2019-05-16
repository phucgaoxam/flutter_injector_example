import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_injector_example/bloc/counter_bloc.dart';
import 'package:inject/inject.dart';

@provide
class CounterEventView extends StatelessWidget {
  final CounterBloc _counterBloc;

  const CounterEventView(this._counterBloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Event View'),
      ),
      body: BlocBuilder(
        bloc: _counterBloc,
        builder: (context, CounterState state) => Center(
              child: Column(
                children: <Widget>[
                  Text('Current value: ${state.value}'),
                  RaisedButton(
                    child: Text('+'),
                    onPressed: () => _counterBloc.dispatch(IncrementEvent()),
                  ),
                  RaisedButton(
                    child: Text('-'),
                    onPressed: () => _counterBloc.dispatch(DecrementEvent()),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
