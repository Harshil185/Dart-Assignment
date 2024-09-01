/*  7. Multiplication Table Generator
A program that generates the multiplication table for a given number.
Following things should be covered in the program.
1. Year needs to be taken as input from the user.
2. Print multiplication table for entered number
*/
import 'dart:io';

void main() {
  
  print('Enter a number to generate its multiplication table:');
  int number = int.parse(stdin.readLineSync()!);

  print('Multiplication table for $number:');
  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
