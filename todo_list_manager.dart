/*  12. To-Do List Manager
A program that allows users to manage a to-do list. Users can add tasks, mark tasks as
completed, view the list, and remove tasks.
Following things should be covered in the program.
1. We need to provide a selection of operations to users. We need to support following
operations
a. Add Task
b. Mark Task as Completed
c. View Tasks
d. Remove Task
e. Exit
2. Program will keep asking to enter options until the user selects option e. Exit
*/
import 'dart:io';

void main() {
  List<Task> tasks = [];
  String choice;

  do {
    // Display menu options
    print('\nTo-Do List Manager');
    print('a. Add Task');
    print('b. Mark Task as Completed');
    print('c. View Tasks');
    print('d. Remove Task');
    print('e. Exit');
    print('Enter your choice:');
    choice = stdin.readLineSync()!.toLowerCase();

    switch (choice) {
      case 'a':
        addTask(tasks);
        break;
      case 'b':
        markTaskAsCompleted(tasks);
        break;
      case 'c':
        viewTasks(tasks);
        break;
      case 'd':
        removeTask(tasks);
        break;
      case 'e':
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please select a valid option.');
    }
  } while (choice != 'e');
}

// Function to add a task
void addTask(List<Task> tasks) {
  print('Enter the task description:');
  String description = stdin.readLineSync()!;
  tasks.add(Task(description));
  print('Task added: $description');
}

// Function to mark a task as completed
void markTaskAsCompleted(List<Task> tasks) {
  viewTasks(tasks);
  if (tasks.isEmpty) return;

  print('Enter the task number to mark as completed:');
  int taskNumber = int.parse(stdin.readLineSync()!);

  if (taskNumber > 0 && taskNumber <= tasks.length) {
    tasks[taskNumber - 1].completed = true;
    print('Task $taskNumber marked as completed.');
  } else {
    print('Invalid task number.');
  }
}

// Function to view all tasks
void viewTasks(List<Task> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
    return;
  }

  print('Current tasks:');
  for (int i = 0; i < tasks.length; i++) {
    String status = tasks[i].completed ? 'Completed' : 'Not Completed';
    print('${i + 1}. ${tasks[i].description} - $status');
  }
}

// Function to remove a task
void removeTask(List<Task> tasks) {
  viewTasks(tasks);
  if (tasks.isEmpty) return;

  print('Enter the task number to remove:');
  int taskNumber = int.parse(stdin.readLineSync()!);

  if (taskNumber > 0 && taskNumber <= tasks.length) {
    String removedTask = tasks.removeAt(taskNumber - 1).description;
    print('Task removed: $removedTask');
  } else {
    print('Invalid task number.');
  }
}

// Task class to represent a to-do task
class Task {
  String description;
  bool completed;

  Task(this.description) : completed = false;
}
