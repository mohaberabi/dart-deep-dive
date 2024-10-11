import 'dart:isolate';

void main() async {
  var x = 1000;

  final isolate = Isolate.current.debugName;
  print("$isolate has x = $x");
  await Isolate.run(
    () {
      final isolate = Isolate.current.debugName;
      print("$isolate has x = $x");
      x = 900;
      print("$isolate has x = $x");
    },
  );
  await Isolate.run(
    () {
      final isolate = Isolate.current.debugName;
      print("$isolate has x = $x");
      x = 200;
      print("$isolate has x = $x");
    },
  );
  print("$isolate has x = $x");
}
