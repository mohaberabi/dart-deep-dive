void makeCoffee() {
  print('Start coffee-making process'); //1

  // Grind beans (asynchronous task)
  Future.delayed(Duration(seconds: 2), () {
    print('Beans are ground');
  }); // 3

  // Boil water (asynchronous task)
  Future.delayed(Duration(seconds: 3), () {
    print('Water is boiled');
  }); // 4

  print('Waiting for coffee to be ready...'); //2
}

void main() {
  makeCoffee();
  //Start coffee-making process
  // Waiting for coffee to be ready...
  // Beans are ground
  // Water is boiled
}
