Stream<int> errorStream() async* {
  for (int i = 0; i < 3; i++) {
    if (i == 2) throw Exception('Stream error');
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print('Error stream start');
  try {
    await for (var number in errorStream()) {
      print('Stream value: $number');
    }
  } catch (e) {
    print('Caught: $e');
  }
  print('Error stream end');
}

// error stream start
// stream value : 0
// stream value : 1
// caught stream error
// Error stream end
