import 'dart:async';

final list = [1, 2, 3, 4, 5];
final map = {1: "one", 2: "two", 3: "three", 4: "four", 5: "five"};

void main() {
  final stream = getStream;
  final transformer = StreamTransformer<int, String>.fromHandlers(
    handleData: (int data, EventSink<String> sink) {
      if (map.containsKey(data)) {
        sink.add(map[data]!);
      } else {
        sink.add("unknown");
      }
    },
  );
  stream.transform(transformer).listen((data) {
    print(data);
  });
}

Stream<int> get getStream async* {
  final list = List.generate(20, (it) => it);

  for (final it in list) {
    await Future.delayed(const Duration(seconds: 1));
    yield it;
  }
}
