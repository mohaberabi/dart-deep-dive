Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1), () {
    print('Data fetched');
  });
}

void main() async {
  print('Start');
  await fetchData();
  print('End');
  Future(() => print('Future executed after End'));
}
//start - data fetched - end - future executed after end
