void main() async {
  print('Start');
  await Future(() {
    print('Future 1');
    Future(() => print('Future 1.1'));
  });
  await Future(() => print('Future 2'));
  print('End');
}

//start
// future 1
// future 1.1
// future 2
//end
