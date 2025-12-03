import 'dart:io';

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double divide(double a, double b) {
  if (b == 0) {
    throw Exception("Error: Cannot divide by zero.");
  }
  return a / b;
}

double? readNumber(String prompt) {
  double? num;
  while (num == null) {
    stdout.write(prompt);
    String? input = stdin.readLineSync()?.trim();
    num = double.tryParse(input ?? '');
    if (num == null) {
      stderr.writeln("Invalid input. Please enter a valid number.");
    }
  }
  return num;
}

void main() {
  print("====================================");
  print("       CALCULATOR  PROGRAM          ");
  print("====================================");

  while (true) {
    double? numA = readNumber("Enter the first number (NumA): ");
    if (numA == null) continue; 

    double? numB = readNumber("Enter the second number (NumB): ");
    if (numB == null) continue;

    print("\n----------------------");
    print("Select Operation:");
    print("+ : Addition (Sum)");
    print("- : Subtraction (Difference)");
    print("* : Multiplication (Product)");
    print("/ : Division (Quotient)");
    print("----------------------");
    stdout.write("Enter operation symbol (+, -, *, /): ");
    String? operator = stdin.readLineSync()?.trim();

    double? result;
    bool success = true;

    try {
      switch (operator) {
        case '+':
          result = add(numA, numB);
          break;
        case '-':
          result = subtract(numA, numB);
          break;
        case '*':
          result = multiply(numA, numB);
          break;
        case '/':
          result = divide(numA, numB);
          break;
        default:
          stderr.writeln("Invalid operator entered. Please use +, -, *, or /.");
          success = false;
      }
    } catch (e) {
      stderr.writeln(e.toString().replaceAll('Exception: ', ''));
      success = false;
    }

    if (success && result != null) {
      print("\nResult: $numA $operator $numB = $result");
    }

    print("\n----------------------");
    stdout.write("Do you want to perform another calculation? (y/n): ");
    String? response = stdin.readLineSync()?.trim().toLowerCase();
    
    if (response != 'y') {
      print("\nThank you for using the calculator. Goodbye!");
      break;
    }
    print("\n====================================");
  }
}