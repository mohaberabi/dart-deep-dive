void main() async {
  await doSomething(1);
  await doSomething(2);
}

Future doSomething(int duration) async {
  await Future.delayed(Duration(seconds: duration));

  print("i got executed after ${duration} seconds");
}
