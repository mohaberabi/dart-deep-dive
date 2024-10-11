import 'dart:math';

void main() async {
  print("millis with wait[]");
  final millis1 = await millis(() async {
    await Future.wait([
      getData(4),
      getData(3),
      getData(2),
    ]);
  });
  print(millis1);
  print("millis with forEach[]");
  final millis2 = await millis(() async {
    await Future.forEach(
      [
        getData(4),
        getData(3),
        getData(2),
      ],
      (fut) async => await fut,
    );
  });
  print(millis2);
  print("millis sequential");
  final millis3 = await millis(
    () async {
      await getData(4);
      await getData(3);
      await getData(2);
    },
  );
  print(millis3);
}

Future<String> getData(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  print("function with $seconds seconds");
  return "function with $seconds seconds";
}

Future<int> millis(Future<void> Function() bloc) async {
  final now = DateTime.now().millisecondsSinceEpoch;
  await bloc();
  final after = DateTime.now().millisecondsSinceEpoch;
  return after - now;
}
