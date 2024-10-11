import 'dart:isolate';

void isolateFunction(SendPort sendPort) {
  sendPort.send('Hello from isolate!');
}

void main() async {
  print('Main start');
  final receivePort = ReceivePort();
  Isolate.spawn(isolateFunction, receivePort.sendPort);
  receivePort.listen((message) {
    print(message);
    receivePort.close();
  });
  await Future.delayed(Duration(seconds: 1));
  print('Main end');
}
//main start
//hello from isolate
// main end
