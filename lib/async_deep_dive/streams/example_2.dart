void main() async {
  try {
    var result = 0;
    result = await sumStream(stream);
    print("synced");
    print(result);
  } catch (e) {}
}

Stream<int> get stream async* {
  final list = List.generate(20, (it) => it);

  for (final it in list) {
    await Future.delayed(const Duration(seconds: 2));
    if (it == 10) {
      throw Exception("");
    }
    yield it;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final val in stream) {
    sum += val;
  }
  return sum;
}
