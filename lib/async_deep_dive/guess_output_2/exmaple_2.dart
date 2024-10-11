import 'dart:async';

void main() {
  print('Start');

  Future.microtask(() {
    print('Microtask 1');
  });

  Stream.fromIterable([1, 2, 3]).listen((value) {
    print('Stream value: $value');
    Future(() {
      print('Future from Stream value: $value');
    });
  });

  Future(() {
    print('Future 2');
  });

  print('End');
}
// start - end , microtask1 ,
//stream value 1,2,3
// future 2
//Future from Stream value: 1
// Future from Stream value: 2
// Future from Stream value: 3
