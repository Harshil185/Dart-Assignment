/*  1. Basic Calculator
A program that performs basic arithmetic operations (addition, subtraction, multiplication,
division) on two numbers based on user input. Following things should be covered in the
program.
1. Taking 2 numbers from the user as input
2. Provide operator selection
3. Print answer based on selected operator.
*/

import 'dart:io';

void main() {
  
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Select an operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  double result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero is not allowed.');
        return;
      }
      break;
    default:
      print('Error: Invalid operator.');
      return;
  }

  print('The result of $num1 $operator $num2 is $result');
}

