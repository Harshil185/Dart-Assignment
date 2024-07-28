/*  8. Even or Odd Checker
A program that checks whether a given number is even or odd.
Following things should be covered in the program.
1. Number needs to be taken as input from the user.
2. Print the result as the number is odd or even.
*/
import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}
