import 'dart:async';

void main() async {
  final res = await nonBlocking();
  print(res);
}

Future<int> nonBlocking() async {
  final completer = Completer<int>();
  final res = longExecution();
  completer.complete(res);
  return completer.future;
}

int longExecution() {
  var result = 0;
  for (int i = 0; i < 1000000000; i++) {
    result += i;
  }
  return result;
}
