void main() async {
  await Future.forEach<Future<String>>(
    [
      doOrFail(duration: 5, fail: true),
      doOrFail(duration: 1, fail: false),
    ],
    (element) async {
      print(await element);
    },
  );
}

Future<String> doOrFail({
  required int duration,
  bool fail = false,
}) async {
  if (fail) {
    throw Exception("error");
  }
  await Future.delayed(Duration(seconds: duration));

  return "i got executed after ${duration} seconds";
}
