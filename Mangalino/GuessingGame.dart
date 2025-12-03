import 'dart:io';
import 'dart:math';

void main() {
  print("=========================================");
  print("    WELCOME TO THE MAGIC NUMBER GUESSER! ");
  print("=========================================");
  print("Can u guess on what number is on my mind? choose between 1-100 only");
  print("Try to guess what it is!");

  final random = Random();
  const int minNumber = 1;
  const int maxNumber = 100;
  final int magicNumber = minNumber + random.nextInt(maxNumber); 

  int guessCount = 0;
  
  int? playerGuess;

  while (playerGuess != magicNumber) {
    guessCount++; 

    int? currentGuess;
    
    print("\n-----------------------------------------");
    
    while (currentGuess == null) {
      stdout.write("Guess #$guessCount. Enter your guess ($minNumber - $maxNumber): ");
      String? input = stdin.readLineSync()?.trim();
      
      currentGuess = int.tryParse(input ?? '');
      
      if (currentGuess == null) {
        stderr.writeln("Invalid input. Please enter a whole number.");
      } else if (currentGuess < minNumber || currentGuess > maxNumber) {
        stderr.writeln("Your guess is outside the range ($minNumber - $maxNumber). Try again.");
        currentGuess = null; 
      }
    }
    
    playerGuess = currentGuess;
    print("-----------------------------------------");


    if (playerGuess! < magicNumber) {
      print("Hint: Too LOW! Try a higher number.");
      print("-----------------------------------------");
    } else if (playerGuess! > magicNumber) {
      print("Hint: Too HIGH! Try a lower number.");
      print("-----------------------------------------");
    }
    
  }

  print("\n=========================================");
  print("CONGRATULATIONS! YOU GUESSED IT!");
  print("The magic number was $magicNumber.");
  print("You found it in $guessCount guesses.");
  print("=========================================");
}