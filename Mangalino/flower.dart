import 'dart:async';

void main() async {
int x = 0;

while (true) {
// Clear the screen and move the cursor to the top-left corner
print("\x1B[2J\x1B[0;0H");

String s = ' ' * x;

// The car ASCII art
print(s + "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⢿⡿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠀⣠⡼⣯⡿⣽⡷⣿⢿⡿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠐⣿⣽⣷⡟⣯⣿⣽⣯⣿⣽⠂⠀⢠⣶⣿⡟⣦⠀⣶⣶⣶⣶⡄⠀⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠀⢻⣽⣾⣻⠏⠀⠈⣿⣞⠟⢀⣴⣿⣻⢾⣽⣟⡿⣯⢿⣽⢯⣷⠀⠀");
print(s + "⠀⠀⠀⠀⠀⡀⠀⡀⢀⠻⣾⡽⣷⠀⠀⠸⣻⠀⣸⣟⠾⣽⣯⠷⣻⣽⣟⡿⣾⣻⢧⠀⠀");
print(s + "⠀⠀⠀⢠⣾⣇⣀⢧⣨⣇⣏⡙⠯⣧⡄⠀⣟⠀⡿⠀⠀⠈⠀⠀⢀⣿⢾⣻⡷⣟⣿⠃⠀");
print(s + "⠀⠀⠀⠘⢷⡏⠐⠊⠰⠃⠈⠛⢷⡷⣄⡀⠀⠀⡅⠀⢀⣠⣶⡿⠻⠏⢛⡓⠛⠋⠁⠀⠀");
print(s + "⠀⠀⢀⣤⣦⣴⡶⣶⢶⣴⣤⣀⠀⠙⢟⡿⣦⠀⠀⠀⠛⣉⣴⡴⣞⡿⣟⣿⣻⣗⣦⠀⠀");
print(s + "⠀⢀⣾⡿⣽⣯⢷⠛⠈⠉⠛⠛⠂⠀⠘⢷⣻⠀⠀⠀⠒⠛⠉⠁⢻⡷⣟⣯⡿⣽⢿⡄⢀");
print(s + "⣠⣿⢯⣟⣷⣻⢿⣤⣤⡤⠤⠶⣶⠆⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠉⠙⢻⣽⣻⢯⣿⡿⡅");
print(s + "⠙⠋⢿⣻⣞⣯⣿⣽⠚⢁⣤⡾⠁⠀⠀⠀⣾⠀⣿⣇⠀⠀⢰⣦⣀⣠⣼⢯⣟⡿⣿⣻⢿");
print(s + "⠀⠀⠀⢿⣽⠳⠏⣠⡾⣟⣷⢿⣦⣤⠀⠀⢸⡄⢸⣯⢿⣶⣻⢾⣟⡿⣞⣿⣽⣻⢯⠿⠁");
print(s + "⠀⠀⠀⠀⠀⠀⠀⣿⡽⣟⣾⣯⡷⣟⣧⣤⣿⣻⡀⠹⣟⣾⡽⣿⣞⡿⣯⠏⠉⠉⠁⠈⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠻⠻⢿⣧⣟⡿⣿⣻⢧⣟⣧⡇⠀⠘⠟⣿⣧⢿⠻⠃⠀⠀⠀⠀⠂⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣞⣿⣳⣿⣻⣽⢯⡇⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀");
print(s + "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⣾⣽⡾⠙⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀");


x++;

// Reset position when it goes off-screen
if (x > 40) { // Reduced max x value so the larger art stays visible longer
x = 0;
}

// Delay for the animation effect
await Future.delayed(Duration(milliseconds: 120));
}
}