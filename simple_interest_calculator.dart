/*10. Simple Interest Calculator
A program that calculates the simple interest on a principal amount based on user-provided
values of principal, rate, and time.
Following things should be covered in the program.
1. Principal amount, rate and duration(time in year) needs to be taken as input from the
user.
2. Print simple interest and total amount after calculation of simple interest.
3. Please do needful validation.
*/
import 'dart:io';

void main() {
  // Prompt the user to enter the principal amount
  print('Enter the principal amount:');
  double principal = double.parse(stdin.readLineSync()!);
  if (principal <= 0) {
    print('Invalid input. Principal amount should be greater than 0.');
    return;
  }

  // Prompt the user to enter the rate of interest
  print('Enter the rate of interest (in %):');
  double rate = double.parse(stdin.readLineSync()!);
  if (rate <= 0) {
    print('Invalid input. Rate of interest should be greater than 0.');
    return;
  }

  // Prompt the user to enter the time in years
  print('Enter the time (in years):');
  double time = double.parse(stdin.readLineSync()!);
  if (time <= 0) {
    print('Invalid input. Time should be greater than 0.');
    return;
  }

  // Calculate simple interest
  double simpleInterest = (principal * rate * time) / 100;

  // Calculate total amount
  double totalAmount = principal + simpleInterest;

  // Print the results
  print('Simple Interest: \$${simpleInterest.toStringAsFixed(2)}');
  print('Total Amount: \$${totalAmount.toStringAsFixed(2)}');
}
