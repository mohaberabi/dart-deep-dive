import 'dart:async';

void main() {
  print('Start');

  Stream<int> infiniteStream =
      Stream.periodic(Duration(milliseconds: 100), (x) => x);
  infiniteStream.listen((value) {
    print('Stream value: $value');
    if (value == 5) {
      print('Stopping stream');
      return; // does nothing
    }
  });

  Future(() {
    print('Future 1');
  });

  print('End');
}
// start
// end
//  future 1
//  'Stream value:0->infinite
