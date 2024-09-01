/*  4. Employee Management System
Create a basic employee management system with a class for employees. Implement
methods to add, display, and give raises to employees.
Following things should be covered in the program.
1. We need to provide a selection of operations to users. We need to support following
operations
  1. Add new employee
  2. Show list of employees
  3. Give raise to employee
  4. Exit
2. Program will keep asking to enter options until the user selects option e. Exit
3. Implement required class properties and methods to achieve mentioned behaviour.
4. Implement required restrictions and validation. 
*/

import 'dart:io';

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveRaise(double amount) {
    if (amount > 0) {
      salary += amount;
      print('$name received a raise of ₹${amount.toStringAsFixed(2)}. New salary: ₹${salary.toStringAsFixed(2)}');
    } else {
      print('Invalid raise amount. Please enter a positive value.');
    }
  }

  void displayInfo(int index) {
    print('$index. Employee Name: $name, Salary: ₹${salary.toStringAsFixed(2)}');
  }
}

class EmployeeManagementSystem {
  List<Employee> employees = [];

  void addEmployee(String name, double salary) {
    if (salary > 0) {
      Employee newEmployee = Employee(name, salary);
      employees.add(newEmployee);
      print('Employee $name added successfully with a salary of ₹${salary.toStringAsFixed(2)}');
    } else {
      print('Invalid salary. Please enter a positive salary.');
    }
  }

  void showEmployees() {
    if (employees.isEmpty) {
      print('No employees to display.');
    } else {
      print('\nList of Employees:');
      for (var i = 0; i < employees.length; i++) {
        employees[i].displayInfo(i + 1);
      }
    }
  }

  void giveRaise(int employeeNumber, double amount) {
    if (employeeNumber > 0 && employeeNumber <= employees.length) {
      Employee employee = employees[employeeNumber - 1];
      employee.giveRaise(amount);
    } else {
      print('Invalid employee number. Please select a valid employee.');
    }
  }
}

void main() {
  EmployeeManagementSystem system = EmployeeManagementSystem();

  String choice;

  do {
    print('\nEmployee Management System');
    print('1. Add new employee');
    print('2. Show list of employees');
    print('3. Give raise to employee');
    print('4. Exit');
    print('Enter your choice:');
    choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Enter employee name:');
        String name = stdin.readLineSync()!;
        print('Enter employee salary:');
        double salary = double.parse(stdin.readLineSync()!);
        system.addEmployee(name, salary);
        print('====================================================================');
        break;
      case '2':
        system.showEmployees();
        print('====================================================================');
        break;
      case '3':
        system.showEmployees();
        print('Enter the employee number to give a raise:');
        int employeeNumber = int.parse(stdin.readLineSync()!);
        print('Enter raise amount:');
        double amount = double.parse(stdin.readLineSync()!);
        system.giveRaise(employeeNumber, amount);
        print('====================================================================');
        break;
      case '4':
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please select a valid option.');
        print('====================================================================');
    }
  } while (choice != '4');
}
