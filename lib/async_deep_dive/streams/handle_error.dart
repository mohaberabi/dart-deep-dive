void main() {
  final stream = getStream;

  mapLogErrors(stream, (number) => number * 2)
      .listen((number) => print(number));

  // 0,1,2,3,4,5,6,7,8,,9
}

Stream<S> mapLogErrors<S, T>(
  Stream<T> stream,
  S Function(T event) convert,
) async* {
  var streamWithoutErrors = stream.handleError((e) => print(e));
  await for (final event in streamWithoutErrors) {
    yield convert(event);
  }
}

Stream<dynamic> get getStream async* {
  final list = List.generate(20, (it) => it);

  for (final it in list) {
    await Future.delayed(const Duration(seconds: 1));
    if (it == 10) {
      throw Exception("oooh");
    }
    yield it;
  }
}
