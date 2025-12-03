import 'dart:io';


void main() {
  print("====================================");
  print("      ACCOUNT AUTHENTICATION        ");
  print("====================================");

  const String correctPasscode = "1234"; 
  const int maxAttempts = 3;
  
  bool accessGranted = false; 

  for (int attempt = 1; attempt <= maxAttempts; attempt++) {
    stdout.write("Enter passcode (Attempt $attempt of $maxAttempts): ");
    
    String? input = stdin.readLineSync()?.trim();

    if (input == correctPasscode) {
      print("\n====================================");
      print("           ACCESS GRANTED           ");
      print("====================================");
      accessGranted = true;
      break; 
    } else {
      print("Access Denied! Passcode incorrect.");
      
      if (attempt < maxAttempts) {
        print("Please try again.");
      }
    }
  }

  if (!accessGranted) {
    print("\n====================================");
    print("           ACCOUNT LOCKED           ");
    print("Maximum attempts exceeded.");
    print("====================================");
  }
}