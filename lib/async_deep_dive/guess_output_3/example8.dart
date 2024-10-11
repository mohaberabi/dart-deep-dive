Future<void> main() async {
  print('Start');
  Future(() => print('Future 1'));
  await Future(() => print('Future 2'));
  print('End');
}
//start
// future1
// fuutre 2
//end
