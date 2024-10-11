void main() {
  final stream = getStream.skip(19);
  final stream2 = getStream.skip(1);
  stream.listen(
    (data) {
      print(data);
    },
  );
  stream2.listen(
    (data) {
      print(data);
    },
  );
}

Stream<dynamic> get getStream async* {
  final list = List.generate(20, (it) => it);

  for (final it in list) {
    await Future.delayed(const Duration(seconds: 1));
    yield it;
  }
}
