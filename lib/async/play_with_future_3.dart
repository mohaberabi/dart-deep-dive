import 'dart:async';

void main() async {
  await doSomething("1").then((value) => null);
  await doSomething("2").then((value) => null);
  doSomething("3").then((value) => null);

  await Future.microtask(() => print("i am micro future 1 "));
  await Future.microtask(() => print("i am micro future 2 "));
  await Future.microtask(() => print("i am micro future 3 "));
  print("iam non future 1");
  print("iam non future 2 ");
  print("iam non future 3");
}

Future<void> doSomething(
  String id,
) async {
  await Future.delayed(Duration(seconds: 5));
  print("iam done $id");
}
