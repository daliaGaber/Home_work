/**
 Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
 */
import 'dart:math';
import 'dart:io';

void main() {
  int x = Random().nextInt(20) + 1;
  print('Guess the Number');
  int y = int.parse(stdin.readLineSync()!);
  print('Guess the number Again');
  int z = int.parse(stdin.readLineSync()!);
  print('Guess the number Again');
  int a = int.parse(stdin.readLineSync()!);
  if (x == y || x == z || x == a) {
    print('Your Guess $x is Correct');
  } else {
    print('Your 3 Guesses is Wrong, The number is $x');
  }
}
