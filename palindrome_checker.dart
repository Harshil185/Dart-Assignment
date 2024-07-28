/*  9. Palindrome Checker
A program that checks whether a given string is a palindrome (reads the same forwards and
backwards).
Following things should be covered in the program.
1. Number needs to be taken as input from the user.
2. Print the result as the number is palindrome or not.
*/
import 'dart:io';

void main() {
  // Prompt the user to enter a string
  print('Enter a string:');
  String input = stdin.readLineSync()!;

  // Check if the string is a palindrome
  bool isPalindrome = isPalindromeString(input);

  // Print the result
  if (isPalindrome) {
    print('$input is a palindrome.');
  } else {
    print('$input is not a palindrome.');
  }
}

// Function to check if a string is a palindrome
bool isPalindromeString(String str) {
  String cleanedStr = str.replaceAll(RegExp(r'\W'), '').toLowerCase();
  String reversedStr = cleanedStr.split('').reversed.join('');
  return cleanedStr == reversedStr;
}
