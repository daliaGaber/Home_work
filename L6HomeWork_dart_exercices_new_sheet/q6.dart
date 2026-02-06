/**
 Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
Then print the shortest word and the longest word from the sentence.
 */

import 'dart:io';

void main() {
  print('Enter a Sentence');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  int contain = words.length;
  print('The Sentence contains $contain words');
 
  int short = words[0].length;
  int shortestWord = short;
  int long = words[0].length;
  int longestWord = long;

  for (int i = 0; i < words.length; i++) {
    if (words[i].length < shortestWord) {
      shortestWord = words[i].length;
    }

    if (words[i].length > longestWord) {
      longestWord = words[i].length;
    }
  }

  print('the long word = $longestWord ');
  print('the short word = $shortestWord ');
}
