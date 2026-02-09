/**
 Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.
 */
import 'dart:io';

void main() {
  print('Enter a Sentence');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  Map<String, int> wordAppear = {};
  for (var word in words) {
    if (wordAppear.containsKey(word)) {
      wordAppear[word] = wordAppear[word]! + 1;
    } else {
      wordAppear[word] = 1;
    }
  }
  Set<String> appearOnce = {};
  for (var entry in wordAppear.entries) {
    if (entry.value == 1) {
      appearOnce.add(entry.key);
    }
  }
  print(appearOnce);
  print(appearOnce.length);
}
