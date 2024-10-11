import 'funktion.dart';

abstract interface class Stack<T> {
  void push(T t);

  bool get isEmpty;

  T? pop();

  int get size;

  T? get top;
}

class CallStack extends Stack<SyncFunction> {
  final _stack = <SyncFunction>[];

  @override
  bool get isEmpty => _stack.isEmpty;

  @override
  SyncFunction? pop() => _stack.removeLast();

  @override
  void push(SyncFunction t) => _stack.add(t);

  @override
  int get size => _stack.length;

  @override
  SyncFunction? get top => _stack.isEmpty ? null : _stack[_stack.length - 1];
}
