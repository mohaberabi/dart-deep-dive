void main() {
  print('Start');

  Future(() {
    while (true) {
      print('This will run forever');
    }
  });

  print('End');
}
// start end , deadlock
