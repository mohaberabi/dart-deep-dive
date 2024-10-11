import 'dart:async';

void main() {
  print('Start');

  Stream<int> errorStream =
      Stream<int>.periodic(Duration(milliseconds: 500), (x) {
    if (x == 3) throw Exception('Error at 3');
    return x;
  });

  errorStream.listen((value) {
    print('Stream value: $value');
  }, onError: (error) {
    print('Caught an error: $error');
  });

  print('End');
}
//start
//end
// stream value 0,1,2
// 'Caught an error: 3
// stream continues
