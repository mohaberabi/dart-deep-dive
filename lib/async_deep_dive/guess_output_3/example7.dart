Future<void> futureFunc() async {
  print('Start');
  await Future.delayed(Duration(seconds: 1), () {
    throw Exception('Error occurred');
  });
  print('End');
}

void main() async {
  try {
    await futureFunc();
  } catch (e) {
    print('Caught: $e');
  }
}
//start
//caught : Error Occurered
