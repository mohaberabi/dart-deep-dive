void main() async {
  print('Start');
  await Future.delayed(Duration(seconds: 2));
  print('Middle');
  await Future(() => print('Future executed'));
  print('End');
}
