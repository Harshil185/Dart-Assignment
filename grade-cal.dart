/*  3. Grade Calculator
This program calculates the average grade for a set of courses.
Following things should be covered in the program.
1. This program will prompt you to enter the number of courses you're taking.
2. For each course, it will ask for the course name and your grade.
3. Finally, it will calculate and display the average grade along with the grades for each
course.
4. Average grade formula: totalGrade/numberofCourses.
*/

import 'dart:io';

void main() {
  // Prompt the user to enter the number of courses
  print('Enter the number of courses:');
  int numCourses = int.parse(stdin.readLineSync()!);

  // Initialize lists to store course names and grades
  List<String> courseNames = [];
  List<double> courseGrades = [];

  // Collect course names and grades
  for (int i = 0; i < numCourses; i++) {
    print('Enter the name of course ${i + 1}:');
    String courseName = stdin.readLineSync()!;

    print('Enter the grade for $courseName:');
    double courseGrade = double.parse(stdin.readLineSync()!);

    courseNames.add(courseName);
    courseGrades.add(courseGrade);
  }

  // Calculate the average grade
  double totalGrade = courseGrades.reduce((a, b) => a + b);
  double averageGrade = totalGrade / numCourses;

  // Display the results
  print('\nCourse Grades:');
  for (int i = 0; i < numCourses; i++) {
    print('${courseNames[i]}: ${courseGrades[i]}');
  }

  print('\nAverage Grade: $averageGrade');
}
