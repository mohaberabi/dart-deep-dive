void main() {
  print('Start');

  Future(() {
    for (var i = 0; i < 5; i++) {
      print('Future 4: $i');
    }
  });

  print('End');
}

// start end , loop prints
