void main() async {
  print("1");
  print("2");
  print("3");
  print("4");

  await Future.delayed(
    const Duration(seconds: 2),
    () => print("5"),
  );
  await Future.delayed(
    const Duration(seconds: 3),
    () => print("6"),
  );
  print("7");
  print("8");
}
