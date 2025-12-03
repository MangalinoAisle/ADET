//Practice Activity: Using For.. Loop

import 'dart:io';

void main() {
  print("====================================");
  print("  SUM AND AVERAGE CALCULATOR ");
  print("====================================");

  int totalSum = 0;
  const int numberOfInputs = 10;

  for (int i = 1; i <= numberOfInputs; i++) {
    int? number;

    while (number == null) {
      stdout.write("Enter number $i of $numberOfInputs: ");
      String? input = stdin.readLineSync()?.trim();

      int? parsedNumber = int.tryParse(input ?? '');

      if (parsedNumber == null) {
        stderr.writeln(" Invalid input. Please enter a whole number.");
      } else {
        number = parsedNumber;
      }
    }

    totalSum += number;
  }

  double average = totalSum / numberOfInputs;

  print("\n====================================");
  print("           RESULTS");
  print("====================================");
  print("Total numbers read: $numberOfInputs");
  print("Sum of all numbers: $totalSum");

  print("Average of the numbers: ${average.toStringAsFixed(2)}"); 
  print("====================================");
}