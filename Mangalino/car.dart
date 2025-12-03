import 'dart:async';
import 'dart:io';

void main() async {
  // starting x position
  int x = 0;

  // Set the terminal to not buffer input and to hide the cursor
  // This is often required for smooth ANSI animation.
  if (stdout.hasTerminal) {
    stdout.write('\x1B[?25l'); // Hide cursor
  }

  // --- Spongebob ASCII Art Definition ---
  // Using a list of strings to represent the character line by line.
  // This makes it easier to manage the animation frame.
  List<String> spongebobArt = [
    " (.. )",
    "|'--'|",
    "|O__O|",
    "| || |",
    " o  o "
  ];

  // The character's width for boundary checks
  int characterWidth = spongebobArt[0].length;
  // Estimated terminal width for wrap-around
  int screenWidth = 80;

  while (true) {
    // 1. Clear screen and move cursor to (0, 0)
    // \x1B[2J: clear screen, \x1B[0;0H: move cursor to home
    stdout.write("\x1B[2J\x1B[0;0H");

    // 2. Build spacing (creates the movement effect)
    String s = ' ' * x;

    // 3. Draw Spongebob line by line
    for (String line in spongebobArt) {
      stdout.write(s + line + '\n');
    }

    // 4. Update position for next frame
    x++;

    // 5. Wrap around screen width
    // Subtract a few characters to make sure the whole character leaves the screen
    if (x > screenWidth - characterWidth) {
      x = 0;
    }

    // 6. Delay for animation speed (100 milliseconds is often smooth)
    await Future.delayed(Duration(milliseconds: 100));
  }

  // Clean-up: Show the cursor again if the loop ever exits
  if (stdout.hasTerminal) {
    stdout.write('\x1B[?25h'); // Show cursor
  }
}