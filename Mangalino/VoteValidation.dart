//Practice Activity: Decision / Conditional Statements File Upload Link

import 'dart:io';

const int VOTING_AGE = 18;

void main() {
  print("====================================");
  print("      VOTING ELIGIBILITY CHECK      ");
  print("====================================");

  int? age;

  while (age == null || age < 0) {
    stdout.write("Please enter your current age in years: ");
    String? input = stdin.readLineSync()?.trim();

    int? parsedAge = int.tryParse(input ?? '');

    if (parsedAge == null) {
      stderr.writeln("\nInvalid input. Please enter a whole number for your age.");
    } else if (parsedAge < 0) {
      stderr.writeln("\nInvalid age. Age cannot be negative.");
    } else {
      age = parsedAge;
    }
  }

  print("\n--- Decision ---");

  if (age >= VOTING_AGE) {
    print("Congratulations! At $age years old, you are qualified to vote.");
    print("Please ensure you register and exercise your right!");

  } else {
    int yearsRemaining = VOTING_AGE - age;
    
    print("Sorry, you are not yet qualified to vote.");
    print("Your current age is $age, and the minimum voting age is $VOTING_AGE.");
    
    if (yearsRemaining == 1) {
      print("You will be eligible to vote in 1 year.");

    } else {
      print("You will be eligible to vote in $yearsRemaining years.");
    }
  }

  print("====================================");
}