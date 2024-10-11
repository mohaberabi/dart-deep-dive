void main() {
  final stream = getStream;
  final number = 0;
  final casted = stream.cast<int>();
  casted.listen((d) => print(d));
  // throws exception due to invalid casting
}

Stream<dynamic> get getStream async* {
  final list = List.generate(20, (it) => it);

  for (final it in list) {
    await Future.delayed(const Duration(seconds: 1));
    if (it == 5) {
      yield "1";
    } else {
      yield it;
    }
  }
}
