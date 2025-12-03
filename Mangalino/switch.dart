import 'dart:io';

void main() {
  print("Would you like (R)ock, (P)aper, or (S)cissors?");
  String selection = stdin.readLineSync()!.toUpperCase();

  switch (selection) {
    case "R":
      print("Rock");
      break;
    case "P":
      print("Paper");
      break;
    case "S":
      print("Scissors");
      break;
    default: // if anything but R, P, or S
      print("Sorry you selected the wrong options");
      break;
  }
}
