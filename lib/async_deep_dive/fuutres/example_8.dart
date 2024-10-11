void main() async {
  await Future.wait([
    getData(4),
    getData(3),
    getData(2),
  ]);

  print("now withiut the iterable");
  await getData(4);
  await getData(3);
  await getData(2);
}

Future<String> getData(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  print("function with $seconds seconds");
  return "function with $seconds seconds";
}
