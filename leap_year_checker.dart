/*  6. Leap Year Checker
A program that checks whether a given year is a leap year.
Following things should be covered in the program.
1. Year needs to be taken as input from the user.
2. Perform necessary logical operations to identify whether a year is a leap year or not.
3. Based on entered year show user message about entered year is leap year or not.
*/
import 'dart:io';

void main() {
  // Prompt the user to enter a year
  print('Enter a year:');
  int year = int.parse(stdin.readLineSync()!);

  // Check if the year is a leap year
  bool isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

  // Display the result
  if (isLeapYear) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
