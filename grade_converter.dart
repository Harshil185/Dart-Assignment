/*  4. Grade Converter
A program that converts numerical grades into letter grades based on a grading scale.
GRADE SCALE
Actual Grade Marks Range
A 90-100
B 80-89
C 70-79
D 60-69
E 20-59
F 1-19
Following things should be covered in the program.
1. Take marks from as user input in between 1 to 100.
2. Number between 1 to 100 is only valid (including 1 and 100), any value out of 1 to
100 needs to be considered invalid.
3. Based on marks inputted by user find actual grade based on above provided table
and print the actual grade.
*/
import 'dart:io';

void main() {
  // Prompt the user to enter marks
  print('Enter your marks (between 1 and 100):');
  int marks = int.parse(stdin.readLineSync()!);

  // Validate the input
  if (marks < 1 || marks > 100) {
    print('Invalid input. Marks should be between 1 and 100.');
    return;
  }

  // Determine the grade based on the marks
  String grade;
  if (marks >= 90) {
    grade = 'A';
  } else if (marks >= 80) {
    grade = 'B';
  } else if (marks >= 70) {
    grade = 'C';
  } else if (marks >= 60) {
    grade = 'D';
  } else if (marks >= 20) {
    grade = 'E';
  } else {
    grade = 'F';
  }

  // Print the actual grade
  print('Your grade is: $grade');
}
