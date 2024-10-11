import 'dart:async';

void main() {
  Stream<int> hotStream =
      Stream<int>.periodic(Duration(seconds: 1), (x) => x).asBroadcastStream();
  final controller = StreamController<int>();
  hotStream.listen(
    (it) {
      print("i just print  ${it}");
    },
  );

  Future.delayed(
    const Duration(seconds: 3),
    () {
      hotStream.listen(
        (it) {
          if (it == 3) {
            print("I will start from $it is it 3 ...?");
          } else {
            print(it);
          }
        },
      );
    },
  );
}
