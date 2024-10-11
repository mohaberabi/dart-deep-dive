Future<void> chain() async {
  print('Chaining start');
  await Future.delayed(Duration(seconds: 1));
  print('Chaining step 1');
  await Future.delayed(Duration(seconds: 1));
  print('Chaining step 2');
}

void main() async {
  print('Main start');
  Future(() => print('Future 1'));
  await chain();
  print('Main end');
}
// main start
//Chaining start
//future1
//Chaining step 1
//Chaining step 2
//Main end
