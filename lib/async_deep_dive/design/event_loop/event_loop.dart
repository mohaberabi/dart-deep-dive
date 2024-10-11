import 'package:dart_deep_dive/async_deep_dive/design/event_loop/event_queue.dart';
import 'package:dart_deep_dive/async_deep_dive/design/event_loop/funktion.dart';
import 'package:dart_deep_dive/async_deep_dive/design/event_loop/stack.dart';

typedef FuncCallStack = Stack<Funktion>;
typedef FuncQueue = Queue<Funktion>;

class DartEventLoop {
  final FuncQueue _micro;

  final FuncQueue _async;

  DartEventLoop({
    required FuncQueue micro,
    required FuncQueue async,
  })  : _async = async,
        _micro = micro;

  void execute() {
    while (!_micro.isEmpty) {
      final pollMicro = _micro.dequeue();
      pollMicro!.call();
    }
    while (!_async.isEmpty) {
      final pollAsync = _async.dequeue();
      pollAsync!.call();
    }
  }

  void schaduele(Funktion fun) {
    if (fun is AsyncFunction) {
      _async.enqueue(fun);
    } else if (fun is MicroFunction) {
      _micro.enqueue(fun);
    }
  }
}
