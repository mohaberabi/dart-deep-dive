Future<void> fetchUserOrder() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw Exception('Logout failed: user ID is invalid'),
  );
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
  // 1 Fetching user order...
  // after 2 seconds throws exception
}
