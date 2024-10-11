import 'dart:async';

void main() {
  print('Start');

  Future.delayed(Duration(seconds: 2), () {
    print('Future 1');
  }).then((_) {
    print('Future 2');
  }).catchError((e) {
    print('Error: $e');
  });

  Stream.periodic(Duration(seconds: 1), (i) => i).take(3).listen((value) {
    print('Stream value: $value');
  });

  print('End');
}
// start
//end
// 'Stream value: 0,'Stream value:1 ,Future 1
// Future 2,
// 'Stream value: 1,2
