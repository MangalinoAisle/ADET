//HandsOn Lab2


import 'dart:io';

void main() {
  print("====================================");
  print("WELCOME TO ONLINE CALCULATOR");
  print("====================================");

  while (true) {
    double? numA;
    double? numB;

    while (numA == null) {
      stdout.write("Enter the first number (NumA): ");
      String? input = stdin.readLineSync()?.trim();

      numA = double.tryParse(input ?? '');
      if (numA == null) {
        stderr.writeln("Invalid input. Please enter a valid number.");
      }
    }

    while (numB == null) {
      stdout.write("Enter the second number (NumB): ");
      String? input = stdin.readLineSync()?.trim();

      numB = double.tryParse(input ?? '');
      if (numB == null) {
        stderr.writeln("Invalid input. Please enter a valid number.");
      }
    }

    print("----------------------");
    print("Operation Menu");
    print("----------------------");
    print("Add (+)");
    print("Sub (-)");
    print("Div (/");
    print("Mul (*)");
    print("----------------------");
    stdout.write("Enter the operation: ");
    String? operator = stdin.readLineSync()?.trim();

    num? result;

    switch (operator) {
      case '+':
        result = numA! + numB!;
        print("\nResult: $numA + $numB = $result");
        break;
      case '-':
        result = numA! - numB!;
        print("\nResult: $numA - $numB = $result");
        break;
      case '*':
        result = numA! * numB!;
        print("\nResult: $numA * $numB = $result");
        break;
      case '/':
        if (numB! != 0) {
          result = numA! / numB!;
          print("\nResult: $numA / $numB = $result");
        } else {
          stderr.writeln("\nError: Cannot divide by zero.");
        }
        break;
      default:
        stderr.writeln("\nError: Invalid operator entered. Please try again.");
    }

    stdout.write("\nDo you want to quit? (y/n): ");
    String? response = stdin.readLineSync()?.trim().toLowerCase();
    if (response == 'y') {
      break;
    }

    print("\n------------------------------------\n");
  }

  print("\nThank you for using the calculator. Goodbye!");
}
