void main() {
  final stream = getStream.distinct();

  stream.listen((data) => print(data));
  // 1,2,3,4,1,2,3,4,5
}

Stream<dynamic> get getStream async* {
  final list = List.generate(20, (it) => it);

  yield 1;
  yield 2;
  yield 2;
  yield 2;
  yield 2;
  yield 3;
  yield 3;
  yield 4;
  yield 1;
  yield 2;
  yield 3;
  yield 4;
  yield 5;
}
