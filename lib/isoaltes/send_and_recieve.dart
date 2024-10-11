import 'dart:isolate';

void isolateEntry(SendPort mainSendPort) {
  final receivePort = ReceivePort();

  mainSendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    print('Isolate received: $message');
    if (message == 'exit') {
      receivePort.close();
    }
  });
}

void main() async {
  final mainReceivePort = ReceivePort();

  await Isolate.spawn(isolateEntry, mainReceivePort.sendPort);
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      final isolateSendPort = message;
      isolateSendPort.send('Hello from main isolate!');
      isolateSendPort.send('exit');
      mainReceivePort.close();
    }
  });
}
