import 'dart:async';

void makeCoffee() {
  print('Start coffee-making process');

  // Diagnostic check (high priority microtask)
  scheduleMicrotask(() {
    print('Running diagnostic check...');
  });

  // Grind beans (asynchronous task)
  Future.delayed(Duration(seconds: 2), () {
    print('Beans are ground');
  });

  // Boil water (asynchronous task)
  Future.delayed(Duration(seconds: 3), () {
    print('Water is boiled');
  });

  print('Waiting for coffee to be ready...');
}

void main() {
  makeCoffee();
  //Start coffee-making process
  //Waiting for coffee to be ready...
  //Running diagnostic check...
  //Beans are ground
  //Water is boiled
}
