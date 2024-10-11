import 'dart:async';

import 'package:dart_deep_dive/async_deep_dive/streams/range.dart';

class EmitData<T> {
  final T data;

  const EmitData(this.data);
}

class OwnStream<T> extends Stream<EmitData> {
  final _controller = StreamController<EmitData>.broadcast();

  void emitData(T data) {
    _controller.add(EmitData<T>(data));
  }

  @override
  StreamSubscription<EmitData> listen(
    void Function(EmitData event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _controller.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}

void main() {
  final stream = OwnStream<String>();
  stream.listen((d) => print(d.data));
  for (final i in Range(20)) {
    stream.emitData("Sent $i");
  }
}
