void main() {
  print('Start');

  Future(() {
    print('Future 2');
  });

  Future.microtask(() {
    print('Microtask 1');
  });

  print('End');
}
//start
// end
//mirco task1
//future 2
