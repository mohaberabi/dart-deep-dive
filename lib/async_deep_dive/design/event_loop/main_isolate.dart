import 'package:dart_deep_dive/async_deep_dive/design/event_loop/event_loop.dart';
import 'package:dart_deep_dive/async_deep_dive/design/event_loop/event_queue.dart';
import 'package:dart_deep_dive/async_deep_dive/design/event_loop/funktion.dart';
import 'package:dart_deep_dive/async_deep_dive/design/event_loop/stack.dart';

class MainIsolate {
  final DartEventLoop _loop;

  const MainIsolate({
    required DartEventLoop loop,
  }) : _loop = loop;

  void run(Funktion fun) {
    if (fun is SyncFunction) {
      fun();
    } else {
      _loop.schaduele(fun);
    }
  }

  void execute() => _loop.execute();
}

void main() {
  final micro = FunctionQueue();
  final async = FunctionQueue();
  final loop = DartEventLoop(
    micro: micro,
    async: async,
  );
  final main = MainIsolate(loop: loop);
  for (int i = 0; i < 10; i++) {
    main.run(SyncFunction(() => print("sync function $i")));
  }
  for (int i = 0; i < 10; i++) {
    main.run(AsyncFunction(() => print("async function $i")));
  }
  for (int i = 0; i < 10; i++) {
    main.run(MicroFunction(() => print("micro function  $i")));
  }
  main.execute();
}
