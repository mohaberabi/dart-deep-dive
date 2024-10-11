void main() async {
  await Future.wait([
    doOrFail(duration: 5, fail: true),
    doOrFail(duration: 1),
  ]);
}

Future doOrFail({
  required int duration,
  bool fail = false,
}) async {
  if (fail) {
    throw Exception("error");
  }
  await Future.delayed(Duration(seconds: duration));

  print("i got executed after ${duration} seconds");
}
