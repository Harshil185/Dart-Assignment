/* 1. Student Class
Define a Student class with properties like name, roll number, and marks. Implement
methods to calculate the average and display student details.
Following things should be covered in the program.
1. Create instance variables with mention details.
2. Class should have methods for calculation of marks & displaying content.
 */

class Student {
  String name;
  int rollNumber;
  List<double> marks;

  Student(this.name, this.rollNumber, this.marks);

  double calculateAverage() {
    double totalMarks = marks.reduce((a, b) => a + b);
    return totalMarks / marks.length;
  }

  void displayDetails() {
    print('Student Details:');
    print('Name: $name');
    print('Roll Number: $rollNumber');
    print('Marks: $marks');
    print('Average Marks: ${calculateAverage().toStringAsFixed(2)}');
  }
}

void main() {
  Student student = Student('John Doe', 101, [85, 90, 78, 64]);
  student.displayDetails();
}
