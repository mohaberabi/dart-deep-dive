import 'dart:async';

void main() async {
  await doSomething("1");
  await doSomething("2");
  await doSomething("3");

  await Future.microtask(() => print("i am micro future 1 "));
  await Future.microtask(() => print("i am micro future 2 "));
  await Future.microtask(() => print("i am micro future 3 "));
  print("iam non future 1");
  print("iam non future 2 ");
  print("iam non future 3");
}

FutureOr<void> doSomething(
  String id,
) async {
  await Future.delayed(Duration(seconds: 1));
  print("iam done $id");
}
