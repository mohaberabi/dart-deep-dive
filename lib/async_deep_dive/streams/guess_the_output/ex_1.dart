import 'dart:async';
import 'dart:io';

void main() {
  Stream<int> countStream =
      Stream.periodic(Duration(seconds: 1), (count) => count);

  print('Start listening to the stream...');

  countStream.listen(
    (value) {
      print('Stream value: $value');
    },
    onDone: () {
      print('Stream has finished emitting values.');
    },
    onError: (error) {
      print('Error occurred: $error');
    },
  );

  for (var i = 0; i < 5; i++) {
    print('Doing some work: $i');
    sleep(
      Duration(seconds: 1),
    );
  }

  print('Finished main work.');
}
