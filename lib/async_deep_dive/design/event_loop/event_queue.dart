import 'funktion.dart';

abstract interface class Queue<T> {
  int get size;

  void enqueue(T t);

  T? dequeue();

  bool get isEmpty;

  T? get peek;
}

class FunctionQueue implements Queue<Funktion> {
  final _queue = <Funktion>[];

  @override
  Funktion? dequeue() => _queue.isEmpty ? null : _queue.removeAt(0);

  @override
  void enqueue(Funktion t) => _queue.add(t);

  @override
  bool get isEmpty => _queue.isEmpty;

  @override
  Funktion? get peek => _queue.isEmpty ? null : _queue[0];

  @override
  int get size => _queue.length;
}
