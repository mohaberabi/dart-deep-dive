import 'dart:isolate';

void methodOne(SendPort sendPort) {
  print("Method One started");
  int result = heavyComputation(1);
  sendPort.send("Method One Result: $result");
}

void methodTwo(SendPort sendPort) async {
  print("Method Two started");
  int result = heavyComputation(2);
  await Future.delayed(const Duration(seconds: 5));
  sendPort.send("Method Two Result: $result");
}

int heavyComputation(int method) {
  int sum = 0;
  for (int i = 0; i < 1e6; i++) {
    sum += i;
  }
  return sum + method;
}

void main() async {
  final receivePortOne = ReceivePort();
  final receivePortTwo = ReceivePort();

  await Isolate.spawn(methodOne, receivePortOne.sendPort);
  await Isolate.spawn(methodTwo, receivePortTwo.sendPort);

  receivePortOne.listen((message) {
    print(message);
    receivePortOne.close();
  });

  receivePortTwo.listen((message) {
    print(message);
    receivePortTwo.close();
  });
}
