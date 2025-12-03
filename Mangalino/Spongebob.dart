import 'dart:async';

void main() async {
  // Starting position
  int x = 0;
  
  // Toggle for animation state (walking/waving)
  bool toggle = true;
  
  // Frame 1: Feet straight, Hand neutral
  const frame1 = r'''
 .--..--..--..--..--..--.
    .' \  (`._   (_)     _   \
  .'    |  '._)         (_)  |
  \ _.')\      .----..---.   /
  |(_.'  |    /    .-\-.  \  |
  \     0|    |   ( O| O) | o|
   |  _  |  .--.____.'._.-.  |
   \ (_) | o         -` .-`  |
    |    \   |`-._ _ _ _ _\ /
    \    |   |  `. |_||_|   |
    | o  |    \_      \     |     -.   .-.
    |.-.  \     `--..-'   O |     `.`-' .'
  _.'  .' |     `-.-'      /-.__   ' .-'
.' `-.` '.|='=.='=.='=.='=|._/_ `-'.'
`-._  `.  |________/\_____|    `-.'
   .'   ).| '=' '='\/ '=' |
   `._.`  '---------------'
           //___\   //___\
             ||       ||
            ||_.-.   ||_.-.
            (_.--__) (_.--__)''';

  // Frame 2: Feet stepping, Hand waving up
  const frame2 = r'''
 .--..--..--..--..--..--.
    .' \  (`._   (_)     _   \
  .'    |  '._)         (_)  |
  \ _.')\      .----..---.   /
  |(_.'  |    /    .-\-.  \  |
  \     0|    |   ( O| O) | o|
   |  _  |  .--.____.'._.-.  |
   \ (_) | o         -` .-`  |
    |    \   |`-._ _ _ _ _\ /
    \    |   |  `. |_||_|   |
    | o  |    \_      \     |    _ /   /
    |.-.  \     `--..-'   O |   (_/   / 
  _.'  .' |     `-.-'      /-.__   ' .-'
.' `-.` '.|='=.='=.='=.='=|._/_ `-'.'
`-._  `.  |________/\_____|    `-.'
   .'   ).| '=' '='\/ '=' |
   `._.`  '---------------'
           //___\   //___\
             //       \\
           //_.-.     \\_.-.
           (_.--__)   (_.--__)''';

  final lines1 = frame1.split('\n');
  final lines2 = frame2.split('\n');

  while (true) {
    // Clear screen (ANSI escape code)
    print("\x1B[2J\x1B[0;0H");

    // Create dynamic spacing for movement
    String pad = ' ' * x;
    
    // Select the current frame based on the toggle
    final currentLines = toggle ? lines1 : lines2;

    // Print each line of the selected art with padding
    for (var line in currentLines) {
      print(pad + line);
    }

    // Move forward
    x++;
    
    // Switch animation state
    toggle = !toggle;

    // Reset position if he walks off screen
    if (x > 30) x = 0;

    // Delay for animation speed
    await Future.delayed(Duration(milliseconds: 200));
  }
}