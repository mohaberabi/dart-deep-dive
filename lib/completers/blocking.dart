void main() {
  final res = longExecution();
  print(res);
}

int longExecution() {
  var result = 0;
  for (int i = 0; i < 1000000000; i++) {
    result += i;
  }
  return result;
}
