import 'dart:async';

void main() async {
  final stream = timedCounter(const Duration(seconds: 1), 20);
  await Future.delayed(const Duration(seconds: 19));
}

Stream<int> timedCounter(Duration interval, [int? maxCount]) {
  var controller = StreamController<int>();
  int counter = 0;
  void tick(Timer timer) {
    counter++;
    controller.add(counter);
    print(counter);
    if (maxCount != null && counter >= maxCount) {
      timer.cancel();
      controller.close();
    }
  }

  Timer.periodic(interval, tick);
  return controller.stream;
}
