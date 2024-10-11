void main() {
  print("start");

  Future(() {
    print('Future 1');
  });
  Future(() {
    print('Future 2');
  });
  asynK();
  print("end");

  Future.microtask(() => print("mic"));
}
// start-asynk-end-mic-fututre1 -future2

Future<void> asynK() async {
  print("asynck");
}
