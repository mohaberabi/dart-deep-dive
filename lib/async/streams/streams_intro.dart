void main() {
  stream.listen((it) => print(it));
  stream.listen((it) => print(it));
}

final stream = Stream<int>.periodic(const Duration(seconds: 1), (it) => it)
    .asBroadcastStream();

void function() {
  final String s = "";
  final object = MyObject();
}

class MyObject {}
