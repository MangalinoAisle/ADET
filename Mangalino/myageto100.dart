//HandsOn Lab1
import 'dart:io';

void main() {
  print("====================================");
  print("     WELCOME TO AGE CALCULATOR      ");
  print("====================================\n");

  stdout.write("Enter your nickname: ");
  String? nickname = stdin.readLineSync();

  stdout.write("Enter your current age: ");
  String? ageInput = stdin.readLineSync();

  int? age = int.tryParse(ageInput ?? "");

  if (age == null) {
    print("Invalid age. Please enter a valid number.");
    return;
  }

  int yearsLeft = 100 - age;

  print("\n====================================");
  print("Hello, $nickname!");
  print("You have $yearsLeft years before you reach 100 years old.");
  print("====================================");
}
