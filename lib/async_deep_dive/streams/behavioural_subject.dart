import 'dart:async';

class SubjectData<T> {
  final T t;

  const SubjectData(this.t);
}

class BehaviouralSubject<T> {
  late SubjectData _subjectData;

  final _controller = StreamController<T>.broadcast();

  BehaviouralSubject({required T initial}) {
    _subjectData = SubjectData(initial);
  }

  Stream<T> get stream async* {
    yield _subjectData.t;
    yield* _controller.stream;
  }

  void update(T Function(T) block) {
    final newData = block(_subjectData.t);
    _subjectData = SubjectData(newData);
    _controller.add(_subjectData.t);
  }

  Future<void> close() async {
    await _controller.close();
  }

  T get value => _subjectData.t;
}
