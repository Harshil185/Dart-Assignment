/*  2. Bank Account Class
Create a BankAccount class that simulates a bank account with methods for deposit,
withdrawal, and displaying balance.
Following things should be covered in the program.
1. When the program runs, a bank account should be created with a ₹1000 balance &
account holder name (You can use any name of an account holder).
2. We need to provide a selection of operations to users. We need to support following
operations
  1. Display Account Balance
  2. Deposit Money
  3. Withdraw Money
  4. Exit
3. Program will keep asking to enter options until the user selects option e. Exit
4. Implement required class properties and methods to achieve mentioned behaviour.
5. Implement required restrictions and validation.
 */

import 'dart:io';

class BankAccount {
  String accountHolderName;
  double balance;

  BankAccount(this.accountHolderName, this.balance);

  void displayBalance() {
    print('Account Holder: $accountHolderName');
    print('Current Balance: ₹${balance.toStringAsFixed(2)}');
    print('==================================');
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('₹${amount.toStringAsFixed(2)} deposited successfully.');
    } else {
      print('Invalid deposit amount. Please enter a positive value.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('₹${amount.toStringAsFixed(2)} withdrawn successfully.');
    } else if (amount > balance) {
      print('Insufficient balance. Withdrawal failed.');
    } else {
      print('Invalid withdrawal amount. Please enter a positive value.');
    }
  }
}

void main() {
  BankAccount account = BankAccount('Michael Jackson', 1000.0);

  String choice;

  do {
    print('\nBank Account Manager');
    print('1. Display Account Balance');
    print('2. Deposit Money');
    print('3. Withdraw Money');
    print('4. Exit');
    print('Enter your choice:');
    choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        account.displayBalance();
        break;
      case '2':
        print('Enter the amount to deposit:');
        double depositAmount = double.parse(stdin.readLineSync()!);
        account.deposit(depositAmount);
        print('==================================');
        break;
      case '3':
        print('Enter the amount to withdraw:');
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        account.withdraw(withdrawAmount);
        print('==================================');
        break;
      case '4':
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please select a valid option.');
        print('==================================');
    }
  } while (choice != '4');
}

