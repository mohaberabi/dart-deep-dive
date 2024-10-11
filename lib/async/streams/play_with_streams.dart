void main() async {
  await Future.delayed(const Duration(seconds: 2), () {
    print("future delayed");
  });

  final stream = introToStreams();

  await for (final val in stream) {
    print(val);
  }
  print("before the stream");
}

Stream<int> introToStreams() => Stream.periodic(
      const Duration(seconds: 1),
      (it) => it,
    );
