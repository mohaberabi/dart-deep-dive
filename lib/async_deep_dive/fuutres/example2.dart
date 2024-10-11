Future<void> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() async {
  await fetchUserOrder();
  print('Fetching user order...');
}
