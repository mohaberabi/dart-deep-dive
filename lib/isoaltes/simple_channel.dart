import 'dart:isolate';

void main() {
  final receivePort = ReceivePort();

  final worker = Isolate.spawn(
    (message) {
      final workerRecievePort = ReceivePort();
      message.send(workerRecievePort);
    },
    receivePort.sendPort,
  );
}
