/**
 Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces).
 */
import 'dart:io';

void main() {
  print('Enter short sentence');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  int wordCount = words.length;
  print('The number of words in the sentence you entered is $wordCount');
  String char = sentence.replaceAll(' ', '');
  int charCount = char.length;
  print('The number of words in the sentence you entered is (without spaces) $charCount');
}
