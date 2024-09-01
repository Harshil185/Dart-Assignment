/*  2. Fibonacci Series Generator
A program that generates and prints the Fibonacci series up to a given number of terms.
Following things should be covered in the program.
1. Take a term number from the user as input.
2. Print fibonacci series up to the term number entered by the user.
*/

import 'dart:io';

void main() {
  print('Enter the number of terms:');
  int terms = int.parse(stdin.readLineSync()!);

  print('Fibonacci series up to $terms terms:');
  for (int i = 0; i < terms; i++) {
    print('${fibonacci(i)}');
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
