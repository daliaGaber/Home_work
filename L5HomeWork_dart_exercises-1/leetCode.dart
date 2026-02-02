/**
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
 */
import 'dart:io';

void main() {
  print('Enter a phrase');
  String phrase = stdin.readLineSync()!;
  String lower = phrase.toLowerCase();
  String cleanPhrase = lower.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  String revere = cleanPhrase.split('').reversed.join();
  bool isPalindrome = cleanPhrase == revere;
  if (isPalindrome) {
    print('The phrase is palindrome');
  } else {
    print("The phrase isn't palindrome");
  }
}

