/*11. Temperature Converter
A program that converts temperatures between Celsius and Fahrenheit.
Following things should be covered in the program.
1. Temperature value and unit needs to be taken as input from the user.
2. Based on the entered unit convert the temperature and remaining unit and print it.
*/
import 'dart:io';

void main() {
  
  print('Enter the temperature value:');
  double temperature = double.parse(stdin.readLineSync()!);

  print('Enter the unit (C for Celsius, F for Fahrenheit):');
  String unit = stdin.readLineSync()!.toUpperCase();

  if (unit != 'C' && unit != 'F') {
    print('Invalid unit. Please enter C for Celsius or F for Fahrenheit.');
    return;
  }

  if (unit == 'C') {
    double fahrenheit = (temperature * 9/5) + 32;
    print('$temperature°C is equal to ${fahrenheit.toStringAsFixed(2)}°F');
  } else if (unit == 'F') {
    double celsius = (temperature - 32) * 5/9;
    print('$temperature°F is equal to ${celsius.toStringAsFixed(2)}°C');
  }
}
