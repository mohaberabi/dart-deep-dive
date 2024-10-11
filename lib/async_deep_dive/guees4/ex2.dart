Stream<int> numberStream() async* {
  for (int i = 0; i < 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print('Stream start');
  await for (var number in numberStream()) {
    print('Stream value: $number');
    if (number == 1) {
      await Future.delayed(Duration(seconds: 2), () {
        print('Inside stream: delayed 2 seconds');
      });
    }
  }
  print('Stream end');
}
//stream start
// stream value :0
//stream value :1
//Inside stream: delayed 2 seconds
//stream value :2
//stream 2nd
