import 'package:dart_deep_dive/async_deep_dive/streams/behavioural_subject.dart';
import 'package:dart_deep_dive/async_deep_dive/streams/range.dart';

void main() async {
  final subject = BehaviouralSubject(initial: 1);

  subject.stream.listen(
    (data) {
      print(data);
    },
  );
  subject.stream.listen(
    (data) {
      print(data);
    },
  );

  for (final i in Range(10)) {
    subject.update((_) => i);
  }

  print(subject.value);
  print(subject.value);
}
