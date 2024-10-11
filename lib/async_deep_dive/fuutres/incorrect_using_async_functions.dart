String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() => Future.delayed(
      const Duration(seconds: 10),
      () => 'Large Latte',
    );

void main() {
  print(createOrderMessage());
  print("will ....??");
}
