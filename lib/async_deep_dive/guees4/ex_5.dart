Future<void> main() async {
  print('Start');
  await Future.delayed(Duration(seconds: 1));
  print('After delay 1');
  Future(() => print('Future 1 executed'));

  await Future.delayed(Duration(seconds: 1));

  print('After delay 2');

  Future(() => print('Future 2 executed'));

  print('End');
}

// Start

//After delay 1

//Future 1 executed

//After delay2

//End
//Future 2 executed
