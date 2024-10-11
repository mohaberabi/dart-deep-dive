void main() {
  final Stream<String> stream = getStream.map((it) => "$it");

  stream.listen(
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
