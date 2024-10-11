void main() async {
  print("1");
  print("2");
  print("3");
  print("4");

  Future.delayed(
    const Duration(seconds: 2),
    () => print("7"),
  );
  Future.delayed(
    const Duration(seconds: 3),
    () => print("8"),
  );
  print("5");
  print("6");
}
