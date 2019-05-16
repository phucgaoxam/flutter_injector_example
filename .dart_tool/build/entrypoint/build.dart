import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:inject_generator/inject_generator.dart' as _i2;
import 'dart:isolate' as _i3;
import 'package:build_runner/build_runner.dart' as _i4;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
      'inject_generator:inject_generator',
      [_i2.summarizeBuilder, _i2.generateBuilder],
      _i1.toDependentsOf('inject_generator'),
      hideOutput: false)
];
main(List<String> args, [_i3.SendPort sendPort]) async {
  var result = await _i4.run(args, _builders);
  sendPort?.send(result);
}
