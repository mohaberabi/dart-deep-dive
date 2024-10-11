import 'dart:isolate';

Future<void> main() async {
  print("before");
  await Isolate.run(veryLong);
  print("middle");
  await Isolate.run(veryLong);
  print("end");
}

void veryLong() async {
  var res = 0;
  for (int i = 0; i < 10000000; i++) {
    res += i;
  }
  print(res);
}
