import 'dart:async';

void main() async {
  print('Start');

  Stream<int> stream1 = Stream.periodic(Duration(seconds: 1), (i) => i).take(3);
  Stream<int> stream2 =
      Stream.periodic(Duration(seconds: 1), (i) => i * 10).take(3);

  await for (var value in stream1) {
    print('Stream 1 value: $value');
    await Future.delayed(Duration(milliseconds: 200));
  }

  await for (var value in stream2) {
    print('Stream 2 value: $value');
  }

  print('End');
}
//start
//  'Stream 1 value:0
//  'Stream 1 value:1
//  'Stream 1 value:2
//  'Stream 2 value:0
//  'Stream 2 value:10
//  'Stream 2 value:20
//end
