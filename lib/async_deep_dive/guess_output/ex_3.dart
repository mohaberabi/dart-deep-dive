void main() {
  print('Start');

  Future(() {
    print('Future 3');
  });

  print('Middle');

  Future.microtask(() {
    print('Microtask 2');
  });

  print('End');
}

//start , middle , end , microtask2 , future 3
