void main() async {
  print('Start');
  await Future.delayed(Duration(seconds: 1), () => print('Delayed'));
  Future(() => print('Future 1'));
  Future(() => print('Future 2'));
  print('End');
}
// start
// delayed
//end
//future 1
// future 2
