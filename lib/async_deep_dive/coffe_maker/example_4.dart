import 'dart:async';

void makeCoffee() {
  print('Start coffee-making process');

  // Simulate user pressing a button to check machine status (microtask)
  scheduleMicrotask(() {
    print('Checking machine status...');
  });

  // Simulate grinding beans (asynchronous task)
  Future.delayed(Duration(seconds: 2), () {
    print('Beans are ground');
  });

  // Simulate boiling water (asynchronous task)
  Future.delayed(Duration(seconds: 3), () {
    print('Water is boiled');
  });

  // Simulate user canceling the process after 1 second (asynchronous task)
  Future.delayed(Duration(seconds: 1), () {
    print('User cancelled the coffee-making process.');
  });

  print('Waiting for coffee to be ready...');
}

void main() {
  makeCoffee();
  //Start coffee-making process
  //Waiting for coffee to be ready...
  //Checking machine status..
  //User cancelled the coffee-making process.

  //Beans are ground

  //Water is boiled
}
