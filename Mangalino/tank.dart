import 'dart:io';

double findVolume(double length, double breadth, double height) {
  return length * breadth * height;
}

void main() {
  print("====================================");
  print("   Welcome to the Tank Volume App   ");
  print("====================================\n");

  stdout.write("Enter the length: ");
  double length = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the breadth: ");
  double breadth = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the height: ");
  double height = double.parse(stdin.readLineSync()!);

  double volume = findVolume(length, breadth, height);

  print("\n------------------------------------");
  print("Length:  $length");
  print("Breadth: $breadth");
  print("Height:  $height");
  print("------------------------------------");
  print("The volume of the tank is: $volume");
  print("------------------------------------");
}
