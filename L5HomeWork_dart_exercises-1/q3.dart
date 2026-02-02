/**
 Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.
 */
import 'dart:io';

void main() {
  print('Enter a Word');
  String text = stdin.readLineSync()!;
  print(text.split('').reversed.join());
  
}

