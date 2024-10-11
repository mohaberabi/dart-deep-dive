Stream<int> numberStream() async* {
  for (int i = 0; i < 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print('Start');
  await for (var number in numberStream()) {
    print('Stream value: $number');
  }
  print('End');
}
// start
// stream value : 0,1,2
// end
