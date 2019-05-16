import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_injector_example/view/counter_event_view.dart';
import 'package:inject/inject.dart';
import 'package:flutter_injector_example/bloc/counter_bloc.dart';

@provide
class CounterView extends StatelessWidget {
  final CounterBloc _counterBloc;
  final CounterEventView _counterEventView;

  const CounterView(this._counterBloc, this._counterEventView);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter View'),
      ),
      body: BlocBuilder(
        bloc: _counterBloc,
        builder: (BuildContext context, CounterState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Counter value: ${state.value}'),
                RaisedButton(
                  child: Text('Go to counter event'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => _counterEventView));
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
